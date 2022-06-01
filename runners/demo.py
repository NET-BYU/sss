from importlib import import_module
from pathlib import Path
from queue import Queue, Empty

# TODO: Need to handle the input_q and output_q


def run(demo_name):
    display = create_screen()
    input_q = Queue()
    output_q = Queue()

    # Set up the game
    demo_module_name = f"demos.{demo_name}.main"
    demo_module = import_module(demo_module_name)
    demo = getattr(
        demo_module, "_".join([word.capitalize() for word in demo_name.split("_")])
    )(input_q, output_q, display)

    demo_runner = demo.run()
    frame_tick = frameRate(demo.frame_rate)

    display.clear()

    try:
        while True:
            next(demo_runner)
            next(frame_tick)
    except KeyboardInterrupt:
        pass

    display.clear()
    close_screen()
