import time
from importlib import import_module

from loguru import logger

import broadcasters
import controllers
from runners import utils


def run(demo_name, simulate, testing):
    """Main function that runs the demo.
    
    Args:
        demo_name (str): Name of the demo to run.
        simulate (bool): Whether to simulate the screen or use the physical screen.
        testing (bool): Whether to run the demo in testing mode.
    
    """

    if simulate:
        from display.virtual_screen import (  # pylint: disable=import-outside-toplevel
            VirtualScreen,
        )

        logger.debug("Starting virtual screen...")
        screen = VirtualScreen()
    else:
        from display.physical_screen import (  # pylint: disable=import-outside-toplevel
            PhysicalScreen,
        )

        logger.debug("Starting physical screen...")
        screen = PhysicalScreen()

    queues = utils.Queues()

    # Set up the game
    logger.info(f"Starting {demo_name}...")
    demo_module = import_module(f"demos.{demo_name}.main")
    demo = utils.get_demo_cls(demo_module)(
        queues.demo_input_queue, queues.demo_output_queue, screen.display
    )

    # Set up state to run game
    tick = screen.create_tick(demo.frame_rate)
    handle_input = controllers.start_inputs(
        queues.system_queue, queues.demo_input_queue
    )
    handle_output = broadcasters.start_outputs(
        queues.system_queue, queues.demo_output_queue
    )
    runner = demo.run()

    # Clear screen
    screen.clear()

    try:
        while True:
            # Process input
            next(handle_input)

            # Process output
            next(handle_output)

            # Make sure they are not trying to exit
            while not queues.system_queue.empty():
                system_event = queues.system_queue.get()
                if system_event == "QUIT":
                    logger.info("Quitting...")
                    raise KeyboardInterrupt

            # Tick the demo
            _tick(runner, demo, testing)

            # Wait for next tick
            next(tick)
    except KeyboardInterrupt:
        logger.debug("Handling keyboard interrupt")

    logger.info("Stopping current demo")
    demo.stop()
    screen.clear()


def _tick(runner, demo, testing):
    """Run the demo for one tick.
    
    Args:
        runner (generator): Generator that runs the demo.
        demo (Demo): Demo object.
        testing (bool): Whether to run the demo in testing mode.
        
    """
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
