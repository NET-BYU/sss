from importlib import import_module
import json
from pathlib import Path
from queue import Queue, Empty
import random
import threading
import time

# import inputs
from loguru import logger
import paho.mqtt.client as mqtt

from display import frameRate


def load_demo(name, module_name):
    logger.debug(f"Loading {module_name}")
    module = import_module(module_name)
    demo_cls = getattr(
        module, "_".join([word.capitalize() for word in name.split("_")])
    )

    return demo_cls


def get_demo_list(demo_dir="demos"):
    demo_path = Path(demo_dir)

    demos = (d for d in demo_path.iterdir() if d.is_dir())  # Only import directories
    demos = (d for d in demos if (d / "main.py").exists())  # Make sure there is a main

    return demos


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demos = get_demo_list(demo_dir)

    # Convert to module notation
    demos = ((d.name, str(d).replace("/", ".") + ".main") for d in demos)

    # Load the module
    demos = {name: load_demo(name, module) for name, module in demos}

    return demos


def get_random_demo(demos):
    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values()]  # if d.USER_INPUT == False]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def mqtt_input(system_queue, demo_input_queue, demo_output_queue):
    def on_message(client, userdata, message):
        try:
            data = json.loads(message.payload)
            msg_type = data["type"]
            msg_input = data["input"]

            if msg_type == "system":
                system_queue.put(msg_input)
            elif msg_type == "demo":
                demo_input_queue.put(msg_input)
            else:
                logger.error("Unknown MQTT message type: {}", msg_type)

        except json.decoder.JSONDecodeError:
            logger.error("MQTT message was not json.")
        except KeyError:
            logger.error("MQTT message did not have correct keys.")

    def on_connect(client, userdata, flags, rc):
        logger.info("MQTT Client connected ({})", rc)
        client.connected = True

        # Subscribing in on_connect() means that if we lose the connection and
        # reconnect then subscriptions will be renewed.
        client.subscribe("byu_sss/input")

    def on_disconnect(client, userdata, rc):
        logger.info("MQTT Client disconnected ({})", rc)
        client.connected = False

    with open("mqtt_config.json") as f:
        config = json.load(f)

    client = mqtt.Client()
    client.username_pw_set(config["username"], config["password"])

    if config["tls"]:
        client.tls_set()

    client.on_message = on_message
    client.on_connect = on_connect
    client.on_disconnect = on_disconnect
    client.connected = False

    client.connect_async(config["host"], config["port"])
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
    screen, system_queue, demo_input_queue, demo_output_queue, user_input_timeout=300
):
    def get_demo_from_user(system_queue, demos):
        # Start the demo
        try:
            demo_name = system_queue.get(timeout=0.01)
            logger.info("User selected {}", demo_name)
            return demos[demo_name]
        except KeyError:
            logger.error(f"Unknown demo: {demo_name}")
            return None
        except Empty:
            # If for some reason it is empty (shouldn't be), then start over
            logger.error("Queue was empty even though it shouldn't have been.")
            return None

    def tick_demo(runner, frame_tick):
        next(handle_input)

        # Tick the demo
        try:
            next(runner)
        except Exception:
            logger.exception("Unknown error occurred!")

        # Wait for next tick
        next(frame_tick)

    from .virtual_screen import VirtualScreen

    demos = load_demos()
    random_demos = get_random_demo(demos)

    screen = VirtualScreen()

    handle_input = screen.create_input_handler()

    # FIXME: This is for testing
    user_input_timeout = 5

    while True:
        while not system_queue.empty():
            logger.info("Got input from the user...")

            demo_cls = get_demo_from_user(system_queue, demos)
            if demo_cls is None:
                continue

            demo = demo_cls(demo_input_queue, demo_output_queue, screen.display)
            frame_tick = screen.create_tick(demo.frame_rate)
            runner = demo.run()
            last_input_time = time.time()

            # As long as there is input from the user keep playing the demo
            while user_input_timeout > (time.time() - last_input_time):
                logger.debug(
                    "Playing demo while input is received ({})",
                    time.time() - last_input_time,
                )

                # System queue gets priority over demos
                # This means someone is switching the demo
                if not system_queue.empty():
                    break

                # See if there has been new input from the user
                # TODO: I am assuming that the demo_input_queue will get drained by the demo...
                if not demo_input_queue.empty() and demo.demo_time is None:
                    last_input_time = time.time()

                tick_demo(runner, frame_tick)

            # Remove everything from the previous demo
            screen.clear()
            while not demo_input_queue.empty():
                demo_input_queue.get()

        while system_queue.empty():
            # Pick a random demo and set up the environment
            random_demo = next(random_demos)(
                demo_input_queue, demo_output_queue, screen.display
            )
            frame_tick = screen.create_tick(random_demo.frame_rate)
            runner = random_demo.run()
            demo_time = random_demo.demo_time

            # Skip demos that are not demos
            # TODO: Make demo_time a class variable so I can filter it out without creating an instance of it
            # TODO: Then I can filter it when I load the demo, not right here.
            if demo_time is None:
                continue

            # FIXME: Used for testing
            demo_time = 5

            start_time = time.time()
            logger.info(f"Playing random demo ({random_demo}) for {demo_time} seconds.")

            # Run the demo for a certain amount of time
            while demo_time > (time.time() - start_time):
                # We have received input from the user, so we need to stop the demo
                if not system_queue.empty():
                    logger.info("User input has been received. Exiting demo...")
                    screen.clear()
                    break

                tick_demo(runner, frame_tick)
            else:
                # Refresh the screen when the demo time has run out
                screen.close()
                screen = VirtualScreen()


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

    start_loop(display, system_queue, demo_input_queue, demo_output_queue)


if __name__ == "__main__":
    import pygame
    import display

    pygame.init()
    screen = pygame.display.set_mode((25 * 48 + 150, 30 * 24 + 30))
    display_obj = display.create_virtual_screen(screen)

    run(display_obj)
