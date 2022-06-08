import threading
from queue import Queue, Empty

import inputs
from loguru import logger


def start_processing_input(system_queue, demo_input_queue):
    # TODO: Handle start and select in system queue?
    queue = Queue()

    def get_input(queue):

        try:
            _ = inputs.get_gamepad()
        except inputs.UnpluggedError:
            logger.warning("There is no controller plugged in")
            return None
        while True:
            events = inputs.get_gamepad()
            for event in events:
                queue.put(event)

    thread = threading.Thread(target=get_input, args=(queue,))
    thread.start()

    def scan_input():
        leftPressed = False
        rightPressed = False
        upPressed = False
        downPressed = False

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

            yield

    return scan_input()
