from builtins import Exception
import inputs
import threading
import random
import time
import arrow
from queue import Queue, Empty

from loguru import logger
import paho.mqtt.client as mqtt

from display import screen
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

logger.add("sss.log", rotation="midnight", retention="1 week")


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


def screen_controller(queue):
    while True:
        try:
            logger.debug("Proocessing items from screen queue...")
            action = queue.get()
            logger.debug("Action: {}", action)
            selected_action = actions[action]
            selected_action(screen, queue)
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


def process_input(input_queue, user_input_timeout=300, demo_timeout=30):
    last_input_time = time.time()
    screen_queue = Queue()
    random_demo = get_random_demo()
    playing_demos = False

    thread = threading.Thread(target=screen_controller, args=(screen_queue,))
    thread.start()

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
            timeout = user_input_timeout if not playing_demos else demo_timeout

            # No input from user
            if (now - last_input_time) >= timeout:
                logger.info("There has been no output for awhile...")

                demo = next(random_demo)

                logger.info("Selecting a random demo: {}", demo)
                screen_queue.put(b"q")
                screen_queue.put(demo)

                last_input_time = now
                playing_demos = True

            # TODO: Start quiet hours (e.g., turn off screen at night)

            # TODO: Start up screen after quiet hours (e.g., turn screen back on)


def mqtt_input(queue):
    def on_message(client, userdata, message):
        queue.put(message.payload)

    client = mqtt.Client()
    client.username_pw_set("sss", "***REMOVED***")
    client.on_message = on_message
    client.tls_set("/etc/ssl/certs/ca-certificates.crt")
    client.connect("aq.byu.edu", 8883)
    client.subscribe("byu_sss/input")
    client.loop_start()


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
    command_queue = Queue()

    # Set up inputs
    gamepad_input(command_queue)
    mqtt_input(command_queue)

    # Process inputs
    process_input(command_queue)


if __name__ == "__main__":
    main()
