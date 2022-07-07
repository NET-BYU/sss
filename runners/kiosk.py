from importlib import import_module
from queue import Queue, Empty
import random
import sys
import time

from loguru import logger

import controllers, broadcasters
from runners import utils


def load_demo(module_name):
    """
    Given a module name it will load the module and get the modules demo
    class.
    """
    logger.debug(f"Loading {module_name}")
    return utils.get_demo_cls(import_module(module_name))


def load_demos(demo_dir="demos"):
    """
    Loads all demos for a given directory. It returns the demos in a dictionary
    with the name of the demo as key and the demo module as the value.
    """
    logger.debug("Loading demos...")

    demos = utils.get_demos(demo_dir)

    # Load the module
    demos = {name: load_demo(module) for name, module in demos}

    return demos


def get_random_demo(demos):
    """
    Generator that gets a random demo. It makes sure all demos have been
    provided before it repeats a demo, so it's not truly random.
    """

    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values() if d.demo_time is not None]

    while True:
        random.shuffle(demos)
        for demo in demos:
            yield demo


def get_demo_from_user(system_queue, demos):
    """Receives input from user and returns the selected demo."""

    try:
        demo_name = system_queue.get(timeout=0.01)

        if demo_name == "QUIT":
            # QUIT command was sent
            sys.exit()

        logger.info("User selected {}", demo_name)
        return demos[demo_name]
    except KeyError:
        logger.error(f"Unknown demo: {demo_name}")
        return None
    except Empty:
        # If for some reason it is empty (shouldn't be), then start over
        logger.error("Queue was empty even though it shouldn't have been.")
        return None


def run_loop(screen, user_input_timeout=300, demo_time_override=None):
    """Runs the event loop that takes care of input and running the demos."""

    # Create queues
    system_queue = Queue()
    demo_input_queue = Queue()
    demo_output_queue = Queue()

    demos = load_demos()
    random_demos = get_random_demo(demos)
    handle_input = controllers.start_inputs(system_queue, demo_input_queue)
    handle_output = broadcasters.start_outputs(system_queue, demo_output_queue)

    while True:
        while not system_queue.empty():
            logger.info("Got input from the user...")

            next(handle_input)
            next(handle_output)

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
                next(handle_output)

                # See if there has been new input from the user
                if not demo_input_queue.empty() and demo.demo_time is None:
                    last_input_time = time.time()

                next(runner)
                next(frame_tick)

            logger.info("Stopping current demo and get ready for next one...")
            demo.stop()
            screen.clear()
            screen.refresh()
            while not demo_input_queue.empty():
                demo_input_queue.get()

        while system_queue.empty():
            # Pick a random demo and set up the environment
            random_demo = next(random_demos)(
                demo_input_queue, demo_output_queue, screen.display
            )
            frame_tick = screen.create_tick(random_demo.frame_rate)
            runner = random_demo.run()

            demo_time = demo_time_override or random_demo.demo_time

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
                next(handle_output)
                next(runner)
                next(frame_tick)
            else:
                # This gets run when the while condition becomes false, not because of the break
                logger.info("Demo time has ended. Exiting demo...")
                random_demo.stop()

                # Refresh the screen when the demo time has run out
                logger.info("Refreshing screen to remove any artifacts.")
                screen.refresh()


def run(simulate, testing=False):
    """Runs the kiosk"""

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
    logger.info("            \\  ---<   Starting SSS")
    logger.info("             \\  /")
    logger.info("   __________/ /")
    logger.info("-=:___________/")

    if testing:
        run_loop(screen, user_input_timeout=5, demo_time_override=5)
    else:
        run_loop(screen)


if __name__ == "__main__":
    run(simulate=True, testing=True)
