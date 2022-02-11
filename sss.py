from builtins import Exception
import multiprocessing
import inputs
import threading
import random
import time
import arrow
from queue import Queue, Empty

from loguru import logger
import paho.mqtt.client as mqtt
import sentry_sdk

from display import create_screen, close_screen
from demos import (
    checkerboard,
    netlab_flag,
    sweep,
    letters,
    circle,
    spiral,
    welcome_y,
    welcome_netlab,
    game_of_life,
    sound_visualizer,
    under_construction,
)
import games.breakout.breakout as bo
import games.snake.snek as sn

sentry_sdk.init(
    "https://268759707c594a558f4e23fa85808fdf@o84589.ingest.sentry.io/6036604",
    traces_sample_rate=1.0
)

actions = {
    b"snake": sn.snek_game,
    b"snake_ai": sn.snek_ai_game,
    b"breakout": bo.breakout,
    b"breakout_ai": bo.breakout_demo,
    b"gameoflife": game_of_life.game_of_life,
    b"checkerboard": checkerboard.checkboard_screensaver,
    b"flag": netlab_flag.byu_netlab,
    b"spiral": spiral.spiral,
    b"circle": circle.circle,
    b"sweep": sweep.sweep,
    b"letters": letters.letters,
    b"welcome_y": welcome_y.welcome_y,
    b"welcome_netlab": welcome_netlab.welcome_netlab,
    b"sound_visualizer": sound_visualizer.sound_visualizer_run,
    b"under_construction": under_construction.under_construction,
}


# Separate process
def screen_controller(queue, client):
    screen = create_screen()

    while True:
        try:
            logger.debug("Proocessing items from screen queue...")
            action = queue.get()
            logger.debug("Action: {}", action)
            selected_action = actions[action]
            selected_action(screen, queue, client)

            close_screen(screen)
            screen = create_screen()
        except KeyError:
            logger.error("Unknown action...")


def get_random_demo():
    demos = [
        b"snake_ai",
        b"breakout_ai",
        b"gameoflife",
        b"flag",
        b"letters",
        b"welcome_y",
        # b"welcome_netlab",
    ]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def process_input(input_queue, client, user_input_timeout=300, demo_timeout=60):
    last_input_time = time.time()
    screen_queue = multiprocessing.Queue()
    random_demo = get_random_demo()
    playing_demos = True

    # Create process
    logger.debug("Creating process to handle screen")
    process = multiprocessing.Process(
        target=screen_controller, args=(screen_queue, client)
    )
    process.start()

    # Play a demo on startup
    demo = next(random_demo)
    logger.info("Selecting a random demo: {}", demo)
    screen_queue.put(b"q")
    screen_queue.put(demo)

    while True:
        try:
            input_ = input_queue.get(timeout=0.1)

            logger.debug("Processing items from action queue...")
            logger.debug("Input: {}", input_)
            screen_queue.put(input_)

            last_input_time = time.time()
            playing_demos = False

        except Empty:
            now = time.time()

            # Figure out how long to wait. We should wait a different amount of time
            # between demos compared to when a user inputs something
            if playing_demos:
                timeout = demo_timeout
            else:
                timeout = user_input_timeout

            # No input from user
            if (now - last_input_time) >= timeout:
                logger.info("There has been no output for awhile...")

                logger.info("Starting next demo...")
                screen_queue.put(b"q")
                demo = next(random_demo)

                logger.info("Selecting a random demo: {}", demo)
                screen_queue.put(demo)

                last_input_time = now
                playing_demos = True

            # TODO: Start quiet hours (e.g., turn off screen at night)

        except Exception:
            logger.exception("Unknown error occurred!")
            sentry_sdk.capture_exception()


def mqtt_input(queue):
    def on_message(client, userdata, message):
        queue.put(message.payload)

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


def gamepad_input(queue):
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
                            queue.put(b"h")
                            leftPressed = True
                        elif event.state == 127:
                            if leftPressed:
                                queue.put(b"hh")
                                leftPressed = False
                            elif rightPressed:
                                queue.put(b"kk")
                                rightPressed = False
                        elif event.state == 255:
                            queue.put(b"k")
                            rightPressed = True
                    elif event.code == "ABS_Y":
                        if event.state == 0:
                            queue.put(b"u")
                            upPressed = True
                        elif event.state == 127:
                            if upPressed:
                                queue.put(b"uu")
                                upPressed = False
                            elif downPressed:
                                queue.put(b"jj")
                                downPressed = False
                        elif event.state == 255:
                            queue.put(b"j")
                            downPressed = True
                    elif event.code == "BTN_BASE4":
                        if event.state:
                            queue.put(b"start")
                        else:
                            queue.put(b"pause")
            except inputs.UnpluggedError:
                logger.warning("There is no controller plugged in")
                break

                # print(event.ev_type, event.code, event.state)

    gamepad_thread = threading.Thread(target=gamepad_listener, daemon=True)
    gamepad_thread.start()


def main():
    # Start up logger
    logger.add("logs/sss.log", rotation="00:00", retention="1 week", enqueue=True, backtrace=True, diagnose=True)
    logger.info("Starting...")

    # Create main queue for all commands to pass through
    command_queue = Queue()

    # Set up inputs
    gamepad_input(command_queue)
    client = mqtt_input(command_queue)

    # Process inputs
    process_input(command_queue, client)


if __name__ == "__main__":
    main()
