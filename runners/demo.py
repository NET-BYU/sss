from importlib import import_module
from pathlib import Path
from queue import Queue, Empty

from loguru import logger

# TODO: Need to handle the input_q and output_q


def run(demo_name, simulate):
    if simulate:
        from display.virtual_screen import VirtualScreen

        screen = VirtualScreen()
    else:
        from display.physical_screen import PhysicalScreen

        screen = PhysicalScreen()

    input_q = Queue()
    output_q = Queue()

    # Set up the game
    demo_module_name = f"demos.{demo_name}.main"
    demo_module = import_module(demo_module_name)
    demo = getattr(
        demo_module, "_".join([word.capitalize() for word in demo_name.split("_")])
    )(input_q, output_q, screen.display)

    tick = screen.create_tick(demo.frame_rate)
    handle_input = screen.create_input_handler()
    runner = demo.run()
    screen.clear()

    while True:
        next(handle_input)

        # Tick the demo
        try:
            next(runner)
        except KeyboardInterrupt:
            break
        except Exception:
            logger.exception("Unknown error occurred!")

        # Wait for next tick
        next(tick)

    screen.refresh()


if __name__ == "__main__":
    run("snake_ai", simulate=True)
