from dataclasses import dataclass
from pathlib import Path, PurePath
from importlib import import_module
from queue import Queue

from loguru import logger


@dataclass
class Queues:
    """Contains all of the queues that the system/demos care about."""

    system_queue: Queue = Queue()
    demo_input_queue: Queue = Queue()
    demo_output_queue: Queue = Queue()


def get_demos(demo_dir="demos"):
    """
    Given a directory, it finds all valid demos. It returns a list of tuples
    where the first value is the demo name and the second value is the module
    string of the demo.

    Args:
        demo_dir (str): Directory where the demos are located.

    Returns:
        list: List of tuples with the demo name and the module string.
    """
    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = ((d.name, ".".join(PurePath(d).parts) + ".main") for d in demos)

    return demos


def get_demo_cls(demo_module):
    """
    For a given demo module, it gets the demo class.

    Args:
        demo_module (module): Module that contains the demo.

    Returns:
        class: The demo class.
    """
    demo_name = demo_module.__name__.rsplit(".", 2)[-2]

    return getattr(
        demo_module, "".join([word.capitalize() for word in demo_name.split("_")])
    )


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
    return get_demo_cls(import_module(module_name))


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

    demos = get_demos(demo_dir)

    # Load the module
    demos = {name: load_demo(module) for name, module in demos}

    return demos
