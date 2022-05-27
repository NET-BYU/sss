from importlib import import_module
from pathlib import Path
from queue import Queue, Empty
import random
import threading
import time

# import inputs
from loguru import logger
import paho.mqtt.client as mqtt

from display import frameRate


def load_demo(module):
    logger.debug(f"Loading {module}")
    return import_module(module)


def get_demo_list(demo_dir="demos"):
    demo_path = Path(demo_dir)

    demos = (d for d in demo_path.iterdir() if d.is_dir())  # Only import directories
    demos = (d for d in demos if (d / "main.py").exists())  # Make sure there is a main

    return demos


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demos = get_demo_list(demo_dir)

    # Convert to module notation
    demos = ((d, str(d).replace("/", ".") + ".main") for d in demos)

    return {str(name).split("/")[1]: load_demo(module) for name, module in demos}


def get_random_demo(demos):
    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values()]  # if d.USER_INPUT == False]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def mqtt_input(system_queue, demo_input_queue, demo_output_queue):
    def on_message(client, userdata, message):
        demo_input_queue.put(message.payload)

    def on_connect(client, userdata, flags, rc):
        logger.info("MQTT Client connected ({})", rc)
        client.connected = True

        # Subscribing in on_connect() means that if we lose the connection and
        # reconnect then subscriptions will be renewed.
        client.subscribe("byu_sss/input")

    def on_disconnect(client, userdata, rc):
        logger.info("MQTT Client disconnected ({})", rc)
        client.connected = False

    client = mqtt.Client()
    client.username_pw_set("sss", "***REMOVED***")
    client.tls_set("/etc/ssl/certs/ca-certificates.crt")

    client.on_message = on_message
    client.on_connect = on_connect
    client.on_disconnect = on_disconnect
    client.connected = False

    client.connect_async("aq.byu.edu", 8883)
    client.loop_start()

    return client


def gamepad_input(system_queue, demo_input_queue, demo_output_queue):
    # TODO: Handle start and select in system queue?

    def gamepad_listener():
        leftPressed = False
        rightPressed = False
        upPressed = False
        downPressed = False
        controllerFound = False
        while True:
            try:
                events = inputs.get_gamepad()
                if not controllerFound:
                    logger.success("Controller detected")
                    controllerFound = True
                for event in events:
                    if event.code == "ABS_X":
                        if event.state == 0:
                            demo_input_queue.put(b"h")
                            leftPressed = True
                        elif event.state == 127:
                            if leftPressed:
                                demo_input_queue.put(b"hh")
                                leftPressed = False
                            elif rightPressed:
                                demo_input_queue.put(b"kk")
                                rightPressed = False
                        elif event.state == 255:
                            demo_input_queue.put(b"k")
                            rightPressed = True
                    elif event.code == "ABS_Y":
                        if event.state == 0:
                            demo_input_queue.put(b"u")
                            upPressed = True
                        elif event.state == 127:
                            if upPressed:
                                demo_input_queue.put(b"uu")
                                upPressed = False
                            elif downPressed:
                                demo_input_queue.put(b"jj")
                                downPressed = False
                        elif event.state == 255:
                            demo_input_queue.put(b"j")
                            downPressed = True
                    elif event.code == "BTN_BASE4":
                        if event.state:
                            demo_input_queue.put(b"start")
                        else:
                            demo_input_queue.put(b"pause")
            except inputs.UnpluggedError:
                logger.warning("There is no controller plugged in")
                break

    gamepad_thread = threading.Thread(target=gamepad_listener, daemon=True)
    gamepad_thread.start()


def start_loop(
    system_queue, demo_input_queue, demo_output_queue, user_input_timeout=300
):
    demos = load_demos()
    random_demos = get_random_demo(demos)
    screen = create_screen()

    while True:
        if not system_queue.empty():

            # Start the demo
            try:
                demo_name = system_queue.get(timeout=0.01)
                demo = demos[demo_name](demo_input_queue, demo_output_queue, screen)
                demo_runner = demo.run()
                # sleep_time = 1 / demo.frame_rate
                frame_tick = frameRate(demo.frame_rate)
                last_input_time = time.time()
            except KeyError:
                logger.error(f"Unknown demo: {demo_name}")
                continue  # Start over
            except Empty:
                # If for some reason it is empty (shouldn't be), then start over
                continue

            # As long as there is input from the user, keep passing it to the demo
            while user_input_timeout > (time.time() - last_input_time):
                # We need to be able to handle multiple inputs on the queue
                while not system_queue.empty():
                    try:
                        input_ = system_queue.get(
                            timeout=0.01
                        )  # TODO: We need to detect if the input is for the game or for the system

                        if input_ == "q":
                            break

                        demo_input_queue.put(input_)
                        last_input_time = time.time()
                    except Empty:
                        break

                # Tick the demo
                try:
                    next(demo_runner)
                except Exception:
                    logger.exception("Unknown error occurred!")

                # Wait for next tick
                # time.sleep(sleep_time)
                next(frame_tick)

        while system_queue.empty():
            # Pick a random demo and set up the environment
            random_demo = next(random_demos)(
                demo_input_queue, demo_output_queue, screen
            )
            random_demo_runner = random_demo.run()
            demo_time = random_demo.demo_time
            # sleep_time = 1 / random_demo.frame_rate
            frame_tick = frameRate(random_demo.frame_rate)
            start_time = time.time()
            logger.info(f"Playing random demo ({random_demo}) for {demo_time} seconds.")

            # Run the demo for a certain amount of time
            while demo_time > (time.time() - start_time):
                # We have received input from the user, so we need to stop the demo
                if not system_queue.empty():
                    logger.info("User input has been received. Exiting demo...")
                    screen.clear()
                    break

                # Tick the demo
                try:
                    next(random_demo_runner)
                except Exception:
                    logger.exception("Unknown error occurred!")

                # Wait for next tick
                # time.sleep(sleep_time)
                next(frame_tick)
            else:
                # Refresh the screen when the demo time has run out
                close_screen(screen)
                screen = create_screen()


def run(display):
    # Start up logger
    logger.add(
        "logs/sss.log",
        rotation="00:00",
        retention="1 week",
        enqueue=True,
        backtrace=True,
        diagnose=True,
    )
    logger.info("             ____")
    logger.info("            / . .\\")
    logger.info("            \  ---<   Starting SSS")
    logger.info("             \  /")
    logger.info("   __________/ /")
    logger.info("-=:___________/")

    # Create queues
    system_queue = Queue()
    demo_input_queue = Queue()
    demo_output_queue = Queue()

    # Set up queues for all devices
    gamepad_input(system_queue, demo_input_queue, demo_output_queue)
    mqtt_input(system_queue, demo_input_queue, demo_output_queue)

    start_loop(None, None, None)


if __name__ == "__main__":
    import pygame
    import display

    pygame.init()
    screen = pygame.display.set_mode((25 * 48 + 150, 30 * 24 + 30))
    display_obj = display.create_virtual_screen(screen)

    run(display_obj)
