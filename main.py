from importlib import import_module
from pathlib import Path
from queue import Queue, Empty
import random
import time

from loguru import logger

from display import create_screen, close_screen
from display.utils import frameRate


def load_demo(module):
    logger.debug(f"Loading {module}")
    return import_module(module)


def load_demos(demo_dir="demos"):
    logger.debug("Loading demos...")

    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = ((d, str(d).replace("/", ".") + ".main") for d in demos)

    return {str(name).split("/")[1]: load_demo(module) for name, module in demos}


def get_random_demo(demos):
    # Filter out demos that can't be shown without input
    demos = [d for d in demos.values()]  # if d.USER_INPUT == False]

    while True:
        random.shuffle(demos)
        for d in demos:
            yield d


def run(system_queue, demo_input_queue, demo_output_queue, user_input_timeout=300):
    demos = load_demos()
    random_demos = get_random_demo(demos)
    screen = create_screen()

    while True:
        if not system_queue.empty():

            # Start the demo
            try:
                demo_name = system_queue.get(timeout=0.01)
                demo = demos[demo_name](demo_input_queue, demo_output_queue, screen)
                demo_runner = demo.run()
                # sleep_time = 1 / demo.frame_rate
                frame_tick = frameRate(demo.frame_rate)
                last_input_time = time.time()
            except KeyError:
                logger.error(f"Unknown demo: {demo_name}")
                continue  # Start over
            except Empty:
                # If for some reason it is empty (shouldn't be), then start over
                continue

            # As long as there is input from the user, keep passing it to the demo
            while user_input_timeout > (time.time() - last_input_time):
                # We need to be able to handle multiple inputs on the queue
                while not system_queue.empty():
                    try:
                        input_ = system_queue.get(
                            timeout=0.01
                        )  # TODO: We need to detect if the input is for the game or for the system

                        if input_ == "q":
                            break

                        demo_input_queue.put(input_)
                        last_input_time = time.time()
                    except Empty:
                        break

                # Tick the demo
                try:
                    next(demo_runner)
                except Exception:
                    logger.exception("Unknown error occurred!")

                # Wait for next tick
                # time.sleep(sleep_time)
                next(frame_tick)

        while system_queue.empty():
            # Pick a random demo and set up the environment
            random_demo = next(random_demos)(
                demo_input_queue, demo_output_queue, screen
            )
            random_demo_runner = random_demo.run()
            demo_time = random_demo.demo_time
            # sleep_time = 1 / random_demo.frame_rate
            frame_tick = frameRate(random_demo.frame_rate)
            start_time = time.time()
            logger.info(f"Playing random demo ({random_demo}) for {demo_time} seconds.")

            # Run the demo for a certain amount of time
            while demo_time > (time.time() - start_time):
                # We have received input from the user, so we need to stop the demo
                if not system_queue.empty():
                    logger.info("User input has been received. Exiting demo...")
                    screen.clear()
                    break

                # Tick the demo
                try:
                    next(random_demo_runner)
                except Exception:
                    logger.exception("Unknown error occurred!")

                # Wait for next tick
                # time.sleep(sleep_time)
                next(frame_tick)
            else:
                # Refresh the screen when the demo time has run out
                close_screen(screen)
                screen = create_screen()


def main():
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

    run(None, None)


if __name__ == "__main__":
    main()
