import sys

import click
from loguru import logger

from runners import demo, kiosk, test, utils

logger_level = ["INFO", "DEBUG", "TRACE"]


@click.group()
@click.option("-v", "--verbose", count=True)
def cli(verbose):
    """CLI group."""

    if verbose >= len(logger_level):
        print(f"Only {len(logger_level) - 1} verbose flags allowed.")
        exit()

    logger.remove()  # Remove default logger

    # Start up logger
    logger.add(
        "logs/sss.log",
        rotation="00:00",
        retention="1 week",
        enqueue=True,
        backtrace=True,
        diagnose=True,
        level=logger_level[verbose],
    )

    logger.info("             ____")
    logger.info("            / . .\\")
    logger.info("            \\  ---<   Starting SSS")
    logger.info("             \\  /")
    logger.info("   __________/ /")
    logger.info("-=:___________/")


@cli.command(name="simulator")
def run_simulator():
    """CLI command to run simulator."""

    from runners import simulator  # pylint: disable=import-outside-toplevel

    simulator.run()


@cli.command(name="kiosk")
@click.option(
    "-s",
    "--simulate",
    is_flag=True,
    default=False,
    help="Run in simulated environment.",
)
@click.option(
    "-n",
    "--new_hardware",
    is_flag=True,
    default=False,
    help="Run on new hardware.",
)
@click.option(
    "testing",
    "-t",
    "--test",
    is_flag=True,
    default=False,
    help="Run in test mode. This shortens the demo time and user input time "
    "for testing purposes.",
)
def run_kiosk(simulate, new_hardware, testing):
    """CLI command to run kiosk."""
    kiosk.run(simulate, testing=testing, new_hardware=new_hardware)


@cli.command("demo")
@click.argument(
    "name",
    type=click.Choice(
        sorted([name for name, _ in utils.get_demos()]), case_sensitive=False
    ),
)
@click.option(
    "-s",
    "--simulate",
    is_flag=True,
    default=False,
    help="Run in simulated environment.",
)
@click.option(
    "-n",
    "--new_hardware",
    is_flag=True,
    default=False,
    help="Run on new hardware.",
)
@click.option(
    "testing",
    "-t",
    "--test",
    is_flag=True,
    default=False,
    help="Run in test mode. This provides feedback for if your demo is "
    "running fast enough relative to the set frame rate.",
)
def run_demo(name, simulate, new_hardware, testing):
    """CLI command to run demo."""
    demo.run(name, simulate, new_hardware, testing=testing)


@cli.command("test")
def run_test():
    """CLI command to run test."""
    test.run()


if __name__ == "__main__":
    cli()
