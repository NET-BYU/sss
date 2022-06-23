from importlib import import_module
from pathlib import Path
from queue import Queue
import sys
from unittest.mock import MagicMock

from loguru import logger

from runners import utils


def test_demo(demo_name, demo_module_name):
    logger.info(f"Testing {demo_name}...")
    display = MagicMock()
    display.y_height = 48
    display.x_width = 48

    input_q = Queue()
    output_q = Queue()

    # Set up the game
    demo_module = import_module(demo_module_name)
    demo = utils.get_demo_cls(demo_module)(input_q, output_q, display)

    # Set up state to run game
    runner = demo.run()

    try:
        for _ in range(10):  # Tick the demo a few times
            next(runner)

        demo.stop()
    except Exception:
        logger.exception(f"{demo_name} failed!")
        return False
    else:
        logger.info(f"{demo_name} passed!")
        return True


def run():
    if not all([test_demo(*demo) for demo in utils.get_demos()]):
        # One of the demos failed
        sys.exit(-1)

    # All of the demos worked
    sys.exit()


if __name__ == "__main__":
    run()
