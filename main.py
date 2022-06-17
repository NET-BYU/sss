from pathlib import Path

import click


def get_demo_list(demo_dir="demos"):
    demo_path = Path(demo_dir)

    demos = (d for d in demo_path.iterdir() if d.is_dir())  # Only import directories
    demos = (d for d in demos if (d / "main.py").exists())  # Make sure there is a main
    demos = [d.name for d in demos]  # Only show name of demo

    return demos


@click.group()
def cli():
    pass


@cli.command(name="simulator")
def run_simulator():
    from runners import simulator

    simulator.run()


@cli.command(name="kiosk")
@click.option("-s", "--simulate", is_flag=True, default=False)
@click.option("-t", "--test", is_flag=True, default=False)
def run_kiosk(simulate, test):
    from runners import kiosk

    kiosk.run(simulate, testing=test)


@cli.command("demo")
@click.argument("name", type=click.Choice(get_demo_list(), case_sensitive=False))
@click.option("-s", "--simulate", is_flag=True, default=False)
@click.option("-t", "--test", is_flag=True, default=False)
def run_demo(name, simulate, test):
    from runners import demo

    demo.run(name, simulate, testing=test)


if __name__ == "__main__":
    cli()
