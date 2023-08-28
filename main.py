import sys

import click
from loguru import logger

from runners import demo, kiosk, test, utils, debug_panel

logger_level = ["ERROR", "WARNING", "SUCCESS", "INFO", "DEBUG", "TRACE"]


@click.group()
@click.option("-v", "--verbose", count=True)
def cli(verbose):
    """CLI group."""

    if verbose >= len(logger_level):
        print(f"Only {len(logger_level) - 1} verbose flags allowed.")
        exit()

    logger.remove()  # Remove default logger
    logger.add(sys.stderr, level=logger_level[verbose])  # Add new logger back


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
    "testing",
    "-t",
    "--test",
    is_flag=True,
    default=False,
    help="Run in test mode. This shortens the demo time and user input time "
    "for testing purposes.",
)
def run_kiosk(simulate, testing):
    """CLI command to run kiosk."""
    kiosk.run(simulate, testing=testing)


@cli.command("demo")
@click.argument(
    "name",
    type=click.Choice([name for name, _ in utils.get_demos()], case_sensitive=False),
)
@click.option(
    "-s",
    "--simulate",
    is_flag=True,
    default=False,
    help="Run in simulated environment.",
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
def run_demo(name, simulate, testing):
    """CLI command to run demo."""
    demo.run(name, simulate, testing=testing)

@cli.command("debug")
@click.argument(
    "name",
    type=click.Choice([name for name, _ in utils.get_demos()], case_sensitive=False),
)
@click.option(
    "-s",
    "--simulate",
    is_flag=True,
    default=False,
    help="Run in simulated environment.",
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
def run_debug(name, simulate, testing):
    """CLI command to run demo."""
    debug_panel.run(name, simulate, testing=testing)


@cli.command("test")
def run_test():
    """CLI command to run test."""
    test.run()


if __name__ == "__main__":
    cli()
