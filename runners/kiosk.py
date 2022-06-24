from importlib import import_module
from pathlib import Path
from queue import Queue, Empty
import random
import time

from loguru import logger

import controllers
from runners import utils


def load_demo(name, module_name):
    logger.debug(f"Loading {module_name}")
    module = import_module(module_name)
    demo_cls = getattr(
        module, "_".join([word.capitalize() for word in name.split("_")])
    )

    return demo_cls


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demos = utils.get_demos(demo_dir)

    # Load the module
    demos = {name: load_demo(name, module) for name, module in demos}

    return demos


def get_random_demo(demos):
    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values() if d.demo_time is not None]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def get_demo_from_user(system_queue, demos):
    # Start the demo
    try:
        demo_name = system_queue.get(timeout=0.01)

        if demo_name == "QUIT":
            # QUIT command was sent
            exit()

        logger.info("User selected {}", demo_name)
        return demos[demo_name]
    except KeyError:
        logger.error(f"Unknown demo: {demo_name}")
        return None
    except Empty:
        # If for some reason it is empty (shouldn't be), then start over
        logger.error("Queue was empty even though it shouldn't have been.")
        return None


def tick_demo(runner, frame_tick):
    # Tick the demo
    try:
        next(runner)
    except Exception:
        logger.exception("Unknown error occurred!")

    # Wait for next tick
    next(frame_tick)


def start_loop(screen, user_input_timeout=300, demo_time=None):
    # Create queues
    system_queue = Queue()
    demo_input_queue = Queue()
    demo_output_queue = Queue()

    demos = load_demos()
    random_demos = get_random_demo(demos)
    handle_input = controllers.start_inputs(system_queue, demo_input_queue)

    while True:
        while not system_queue.empty():
            logger.info("Got input from the user...")

            next(handle_input)

            demo_cls = get_demo_from_user(system_queue, demos)
            if demo_cls is None:
                continue

            demo = demo_cls(demo_input_queue, demo_output_queue, screen.display)
            frame_tick = screen.create_tick(demo.frame_rate)
            runner = demo.run()
            last_input_time = time.time()

            # As long as there is input from the user keep playing the demo
            while user_input_timeout > (time.time() - last_input_time):
                # System queue gets priority over demos
                # This means someone is switching the demo
                if not system_queue.empty():
                    break

                next(handle_input)

                # See if there has been new input from the user
                if not demo_input_queue.empty() and demo.demo_time is None:
                    last_input_time = time.time()

                tick_demo(runner, frame_tick)

            # Stop demo and remove everything from the previous demo
            demo.stop()
            screen.clear()
            while not demo_input_queue.empty():
                demo_input_queue.get()

        while system_queue.empty():
            # Pick a random demo and set up the environment
            random_demo = next(random_demos)(
                demo_input_queue, demo_output_queue, screen.display
            )
            frame_tick = screen.create_tick(random_demo.frame_rate)
            runner = random_demo.run()

            if demo_time is None:
                demo_time = random_demo.demo_time

            start_time = time.time()
            logger.info(f"Playing random demo ({random_demo}) for {demo_time} seconds.")

            # Run the demo for a certain amount of time
            while demo_time > (time.time() - start_time):
                # We have received input from the user, so we need to stop the demo
                if not system_queue.empty():
                    logger.info("User input has been received. Exiting demo...")
                    random_demo.stop()
                    screen.clear()
                    break

                next(handle_input)
                tick_demo(runner, frame_tick)
            else:
                # This gets run when the while condition becomes false, not because of the break
                logger.info("Demo time has ended. Exiting demo...")
                random_demo.stop()

                # Refresh the screen when the demo time has run out
                logger.info("Refreshing screen to remove any artifacts.")
                screen.refresh()


def run(simulate, testing=False):
    if simulate:
        from display.virtual_screen import VirtualScreen

        screen = VirtualScreen()
    else:
        from display.physical_screen import PhysicalScreen

        screen = PhysicalScreen()

    # Start up logger
    logger.add(
        "logs/sss.log",
        rotation="00:00",
        retention="1 week",
        enqueue=True,
        backtrace=True,
        diagnose=True,
    )
    logger.info("             ____")
    logger.info("            / . .\\")
    logger.info("            \  ---<   Starting SSS")
    logger.info("             \  /")
    logger.info("   __________/ /")
    logger.info("-=:___________/")

    if testing:
        start_loop(screen, user_input_timeout=5, demo_time=5)
    else:
        start_loop(screen)


if __name__ == "__main__":
    run(simulate=True, testing=True)
