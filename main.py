from pathlib import Path

import click

from runners import simulator, kiosk, demo


def get_demo_list(demo_dir="demos"):
    demo_path = Path(demo_dir)

    demos = (d for d in demo_path.iterdir() if d.is_dir())  # Only import directories
    demos = (d for d in demos if (d / "main.py").exists())  # Make sure there is a main

    return demos


def existing_demo(demo):
    demo_list = get_demo_list()
    demo_list = [d.name for d in demo_list]

    if demo not in demo_list:
        print("Demo must be one of the following:")
        for demo in sorted(demo_list):
            print(f"\t {demo}")

        return False

    return True


@click.group()
def cli():
    pass


@cli.command(name="simulator")
def run_simulator():
    simulator.run()


@cli.command(name="kiosk")
@click.option("-s", "--simulate", is_flag=True, default=False)
def run_kiosk(simulate):
    kiosk.run(simulate)


@cli.command("demo")
@click.argument("demo_name", nargs=1)
@click.option("-s", "--simulate", is_flag=True, default=False)
def run_demo(demo_name, simulate):
    if not existing_demo(demo_name):
        return

    demo.run(demo_name, simulate)


if __name__ == "__main__":
    cli()
