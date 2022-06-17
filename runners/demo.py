from importlib import import_module
from queue import Queue, Empty
import time

from loguru import logger

import controllers


def run(demo_name, simulate, testing):
    if simulate:
        from display.virtual_screen import VirtualScreen

        screen = VirtualScreen()
    else:
        from display.physical_screen import PhysicalScreen

        screen = PhysicalScreen()

    system_q = Queue()
    input_q = Queue()
    output_q = Queue()

    # Set up the game
    demo_module_name = f"demos.{demo_name}.main"
    demo_module = import_module(demo_module_name)
    demo = getattr(
        demo_module, "_".join([word.capitalize() for word in demo_name.split("_")])
    )(input_q, output_q, screen.display)

    # Set up state to run game
    tick = screen.create_tick(demo.frame_rate)
    handle_input = controllers.start_inputs(system_q, input_q)
    runner = demo.run()

    # Clear screen
    screen.clear()

    while True:
        # Process input
        next(handle_input)

        # Make sure they are not trying to exit
        while not system_q.empty():
            system_event = system_q.get()
            if system_event == "QUIT":
                exit()

        # Tick the demo
        try:
            _tick(runner, demo, testing)
        except KeyboardInterrupt:
            break
        except Exception:
            logger.exception("Unknown error occurred!")

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
                f"Demo took too long to run compared to frame rate: {run_time} > {1 / demo.frame_rate}"
            )


if __name__ == "__main__":
    run("snake_ai", simulate=True)
