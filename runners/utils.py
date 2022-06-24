from pathlib import Path


def get_demos(demo_dir="demos"):
    """
    Given a directory, it finds all valid demos. It returns a list of tuples
    where the first value is the demo name and the second value is the module
    string of the demo.
    """
    demo_path = Path(demo_dir)

    # Only import directories
    demos = (d for d in demo_path.iterdir() if d.is_dir())

    # Make sure there is a main in the folder
    demos = (d for d in demos if (d / "main.py").exists())

    # Convert to module notation
    demos = ((d.name, str(d).replace("/", ".") + ".main") for d in demos)

    return demos
