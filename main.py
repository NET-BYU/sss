import click

from runners import simulator, kiosk, demo, test, utils


@click.group()
def cli():
    """CLI group."""


@cli.command(name="simulator")
def run_simulator():
    """CLI command to run simulator."""
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


@cli.command("test")
def run_test():
    """CLI command to run test."""
    test.run()


if __name__ == "__main__":
    cli()
