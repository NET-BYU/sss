import threading
import time
from queue import Queue, Empty

import inputs
from loguru import logger


def get_input_from_gamepad(queue):
    while True:
        # See if the gamepad is plugged in
        try:
            gamepad = inputs.devices.gamepads[0]
        except IndexError:
            logger.warning("There is no controller plugged in. Trying again later...")
            time.sleep(5)
            continue

        # If it is plugged in, get events from it
        while True:
            for event in gamepad.read():
                queue.put(event)


def start_processing_input(system_queue, demo_input_queue):
    queue = Queue()

    thread = threading.Thread(target=get_input_from_gamepad, args=(queue,), daemon=True)
    thread.start()

    def process():
        leftPressed = False
        rightPressed = False
        upPressed = False
        downPressed = False

        # TODO: Handle start and select in system queue?
        while True:
            while not queue.empty():
                try:
                    event = queue.get(block=False)
                except Empty:
                    break

                if event.code == "ABS_X":
                    if event.state == 0:
                        demo_input_queue.put("LEFT_P")
                        leftPressed = True
                    elif event.state == 127:
                        if leftPressed:
                            demo_input_queue.put("LEFT_R")
                            leftPressed = False
                        elif rightPressed:
                            demo_input_queue.put("RIGHT_R")
                            rightPressed = False
                    elif event.state == 255:
                        demo_input_queue.put("RIGHT_P")
                        rightPressed = True
                elif event.code == "ABS_Y":
                    if event.state == 0:
                        demo_input_queue.put("UP_P")
                        upPressed = True
                    elif event.state == 127:
                        if upPressed:
                            demo_input_queue.put("UP_R")
                            upPressed = False
                        elif downPressed:
                            demo_input_queue.put("DOWN_R")
                            downPressed = False
                    elif event.state == 255:
                        demo_input_queue.put("DOWN_P")
                        downPressed = True
                elif event.code == "BTN_BASE4":
                    if event.state:
                        demo_input_queue.put("START_P")
                    else:
                        demo_input_queue.put(b"pause")

            yield

    return process()
