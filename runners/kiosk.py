import random
import sys
import time
from importlib import import_module
from queue import Empty

from loguru import logger

import broadcasters
import controllers
from runners import utils


def load_demo(module_name):
    """
    Given a module name it will load the module and get the modules demo
    class.

    Args:
        module_name (str): Name of the module to load.

    Returns:
        class: The demo class.
    """
    logger.debug(f"Loading {module_name}")
    return utils.get_demo_cls(import_module(module_name))


def load_demos(demo_dir="demos"):
    """
    Loads all demos for a given directory. It returns the demos in a dictionary
    with the name of the demo as key and the demo module as the value.

    Args:
        demo_dir (str): Directory where the demos are located.

    Returns:
        dict: Dictionary with the name of the demo as key and the demo module
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

    Args:
        demos (dict): Dictionary with the demos.
    """

    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values() if d.demo_time is not None]

    while True:
        random.shuffle(demos)
        for demo in demos:
            yield demo


def get_demo_from_user(system_queue, demos):
    """Receives input from user and returns the selected demo.

    Args:
        system_queue (Queue): Queue to receive input from the user.
        demos (dict): Dictionary with the demos.

    Returns:
        class: The demo class selected by the user.
    """

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


def play_demo_from_user(
    demo,
    handle_input,
    queues,
    screen,
    user_input_timeout,
):
    """
    Plays a demo, monitoring user input. If no input is detected then the demo
    is stopped. If a demo is switched by the user, then this function exits.

    Args:
        demo (class): The demo class to play.
        handle_input (function): Function to handle input.
        queues (dict): Dictionary with the queues.
        screen (object): The screen object.
        user_input_timeout (int): Time to wait for user input.
    """

    frame_tick = screen.create_tick(demo.frame_rate)
    runner = demo.run()
    last_input_time = time.time()

    # As long as there is input from the user keep playing the demo
    while user_input_timeout > (time.time() - last_input_time):
        # System queue gets priority over demos
        # This means someone is switching the demo
        if not queues.system_queue.empty():
            break

        # See if there has been new input from the user
        if not queues.demo_input_queue.empty() and demo.demo_time is None:
            last_input_time = time.time()

        next(handle_input)
        next(runner)
        next(frame_tick)

    logger.info("Stopping current demo and get ready for next one...")
    demo.stop()
    screen.clear()
    screen.refresh()
    while not queues.demo_input_queue.empty():
        queues.demo_input_queue.get()


def play_demo_from_idle(demo, handle_input, queues, screen, demo_time_override):
    """
    Plays a demo until time expires or data comes into the system queue.

    Args:
        demo (class): The demo class to play.
        handle_input (function): Function to handle input.
        queues (dict): Dictionary with the queues.
        screen (object): The screen object.
        demo_time_override (int): Time to play the demo.
    """

    frame_tick = screen.create_tick(demo.frame_rate)
    runner = demo.run()

    demo_time = demo_time_override or demo.demo_time

    start_time = time.time()
    logger.info(f"Playing demo ({demo}) for {demo_time} seconds.")

    # Run the demo for a certain amount of time
    while demo_time > (time.time() - start_time):
        # We have received input from the user, so we need to stop the demo
        if not queues.system_queue.empty():
            logger.info("User input has been received. Exiting demo...")
            demo.stop()
            screen.clear()
            break

        try:
            next(handle_input)
            next(runner)
            next(frame_tick)
        except Exception as e:
            logger.exception("Something bad happened while ticking...")
            demo.stop()
            screen.clear()
            break
    else:
        # This gets run when the while condition becomes false, not because of the break
        logger.info("Demo time has ended. Exiting demo...")
        demo.stop()

        # Refresh the screen when the demo time has run out
        logger.info("Refreshing screen to remove any artifacts.")
        screen.refresh()


def run_loop(screen, user_input_timeout=300, demo_time_override=None):
    """Runs the event loop that takes care of input and running the demos.

    Args:
        screen (object): The screen object.
        user_input_timeout (int): Time to wait for user input.
        demo_time_override (int): Time to play the demo.

    """

    queues = utils.Queues()

    demos = load_demos()
    random_demos = get_random_demo(demos)
    handle_input = controllers.start_inputs(
        queues.system_queue, queues.demo_input_queue
    )
    handle_output = broadcasters.start_outputs(
        queues.system_queue, queues.demo_input_queue
    )
    current_demo = None

    try:
        while True:
            while not queues.system_queue.empty():
                logger.info("Got input from the user...")

                next(handle_input)
                next(handle_output)

                demo_cls = get_demo_from_user(queues.system_queue, demos)
                if demo_cls is None:
                    continue
                current_demo = demo_cls(
                    queues.demo_input_queue, queues.demo_output_queue, screen.display
                )

                play_demo_from_user(
                    current_demo,
                    handle_input,
                    queues,
                    screen,
                    user_input_timeout,
                )

            while queues.system_queue.empty():
                logger.info("No input from user...")

                current_demo = next(random_demos)(
                    queues.demo_input_queue, queues.demo_output_queue, screen.display
                )

                play_demo_from_idle(
                    current_demo, handle_input, queues, screen, demo_time_override
                )
    except KeyboardInterrupt:
        logger.debug("Handling keyboard interrupt")
        if current_demo:
            logger.info("Stopping current demo")
            current_demo.stop()
            screen.clear()


def run(simulate, testing=False):
    """Runs the kiosk

    Args:
        simulate (bool): If True, the kiosk will run in simulation mode.
        testing (bool): If True, the kiosk will run in testing mode.

    """

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
