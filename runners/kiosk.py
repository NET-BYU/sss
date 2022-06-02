from importlib import import_module
from pathlib import Path
from queue import Queue, Empty
import random
import time

from loguru import logger

from controllers import keyboard, mqtt  # , gamepad


def load_demo(name, module_name):
    logger.debug(f"Loading {module_name}")
    module = import_module(module_name)
    demo_cls = getattr(
        module, "_".join([word.capitalize() for word in name.split("_")])
    )

    return demo_cls


def get_demo_list(demo_dir="demos"):
    demo_path = Path(demo_dir)

    demos = (d for d in demo_path.iterdir() if d.is_dir())  # Only import directories
    demos = (d for d in demos if (d / "main.py").exists())  # Make sure there is a main

    return demos


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demos = get_demo_list(demo_dir)

    # Convert to module notation
    demos = ((d.name, str(d).replace("/", ".") + ".main") for d in demos)

    # Load the module
    demos = {name: load_demo(name, module) for name, module in demos}

    return demos


def get_random_demo(demos):
    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values()]  # if d.USER_INPUT == False]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def start_loop(
    screen, system_queue, demo_input_queue, demo_output_queue, user_input_timeout=300
):
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
        keyboard.process_input(system_queue, demo_input_queue)

        # Tick the demo
        try:
            next(runner)
        except Exception:
            logger.exception("Unknown error occurred!")

        # Wait for next tick
        next(frame_tick)

    demos = load_demos()
    random_demos = get_random_demo(demos)

    # FIXME: This is for testing
    user_input_timeout = 5

    while True:
        while not system_queue.empty():
            logger.info("Got input from the user...")

            demo_cls = get_demo_from_user(system_queue, demos)
            if demo_cls is None:
                continue

            demo = demo_cls(demo_input_queue, demo_output_queue, screen.display)
            frame_tick = screen.create_tick(demo.frame_rate)
            runner = demo.run()
            last_input_time = time.time()

            # As long as there is input from the user keep playing the demo
            while user_input_timeout > (time.time() - last_input_time):
                logger.debug(
                    "Playing demo while input is received ({})",
                    time.time() - last_input_time,
                )

                # System queue gets priority over demos
                # This means someone is switching the demo
                if not system_queue.empty():
                    break

                # See if there has been new input from the user
                if not demo_input_queue.empty() and demo.demo_time is None:
                    last_input_time = time.time()

                tick_demo(runner, frame_tick)

            # Remove everything from the previous demo
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
            demo_time = random_demo.demo_time

            # Skip demos that are not demos
            # TODO: Make demo_time a class variable so I can filter it out without creating an instance of it
            # TODO: Then I can filter it when I load the demo, not right here.
            if demo_time is None:
                continue

            # FIXME: Used for testing
            demo_time = 5

            start_time = time.time()
            logger.info(f"Playing random demo ({random_demo}) for {demo_time} seconds.")

            # Run the demo for a certain amount of time
            while demo_time > (time.time() - start_time):
                # We have received input from the user, so we need to stop the demo
                if not system_queue.empty():
                    logger.info("User input has been received. Exiting demo...")
                    screen.clear()
                    break

                tick_demo(runner, frame_tick)
            else:
                # Refresh the screen when the demo time has run out
                screen.refresh()


def run(simulate):
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

    # Create queues
    system_queue = Queue()
    demo_input_queue = Queue()
    demo_output_queue = Queue()

    # Set up queues for all devices
    mqtt.start_process_input(system_queue, demo_input_queue)
    # gamepad.start_processing_input(system_queue, demo_input_queue)

    start_loop(screen, system_queue, demo_input_queue, demo_output_queue)


if __name__ == "__main__":
    run(simulate=True)
