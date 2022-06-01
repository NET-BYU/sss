from pathlib import Path

import click


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
@click.option("--debug/--no-debug", default=False)
def cli(debug):
    pass


@cli.command()
def simulator():
    from runners.simulator import run

    run()


@cli.command()
@click.option("-s", "--simulate", is_flag=True, default=False)
def kiosk(simulate):
    from runners.kiosk import run

    if simulate:
        from display.virtual_screen import VirtualScreen

        screen = VirtualScreen()
    else:
        from display.physical_screen import PhysicalScreen

        screen = PhysicalScreen()

    run(screen)


@cli.command()
@click.argument("demo", nargs=1)
def display_demo(demo):
    if not existing_demo(demo):
        return

    from runners.display_demo import run

    run(demo)


if __name__ == "__main__":
    cli()
