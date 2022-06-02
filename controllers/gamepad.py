import threading

import inputs
from loguru import logger


def start_process_input(system_queue, demo_input_queue):
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
