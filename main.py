from importlib import import_module
from pathlib import Path

from loguru import logger


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

    return {demo: load_demo(module) for demo, module in demos}


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
    logger.info("Starting SSS 🐍...")

    load_demos()


if __name__ == "__main__":
    main()
