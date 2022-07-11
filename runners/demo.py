from importlib import import_module
from queue import Queue
import sys
import time

from loguru import logger

import controllers, broadcasters
from runners import utils


def run(demo_name, simulate, testing):
    """Main function that runs the demo."""

    if simulate:
        from display.virtual_screen import (  # pylint: disable=import-outside-toplevel
            VirtualScreen,
        )

        screen = VirtualScreen()
    else:
        from display.physical_screen import (  # pylint: disable=import-outside-toplevel
            PhysicalScreen,
        )

        screen = PhysicalScreen()

    system_q = Queue()
    input_q = Queue()
    output_q = Queue()

    # Set up the game
    demo_module = import_module(f"demos.{demo_name}.main")
    demo = utils.get_demo_cls(demo_module)(input_q, output_q, screen.display)

    # Set up state to run game
    tick = screen.create_tick(demo.frame_rate)
    handle_input = controllers.start_inputs(system_q, input_q)
    handle_output = broadcasters.start_outputs(system_q, output_q)
    runner = demo.run()

    # Clear screen
    screen.clear()

    while True:
        # Process input
        next(handle_input)

        # Process output
        next(handle_output)

        # Make sure they are not trying to exit
        while not system_q.empty():
            system_event = system_q.get()
            if system_event == "QUIT":
                sys.exit()

        # Tick the demo
        try:
            _tick(runner, demo, testing)
        except KeyboardInterrupt:
            break

        # Wait for next tick
        next(tick)

    demo.stop()


def _tick(runner, demo, testing):
    if testing:
        before_time = time.time()

    next(runner)

    if testing:
        after_time = time.time()

        run_time = after_time - before_time
        if run_time > 1 / demo.frame_rate:
            logger.info(
                "Demo took too long to run compared to frame rate: "
                f"{run_time} > {1 / demo.frame_rate}"
            )


if __name__ == "__main__":
    run("snake_ai", simulate=True, testing=True)
