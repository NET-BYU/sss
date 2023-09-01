# import this
from queue import Queue

from loguru import logger

from . import utils


def start_outputs(system_queue, demo_output_queue):
    try:
        logger.info("Loading MQTT output...")
        from . import mqtt

        mqtt_q = Queue()

        mqtt_runner = mqtt.start_processing_output(system_queue, mqtt_q)
        logger.info("...done")
    except ValueError as e:
        mqtt_runner = None
        logger.warning(e)
        logger.warning("Unable to load config file necessary to run MQTT output.")
        logger.warning("Program will continue to run without this output.")
    except FileNotFoundError as e:
        mqtt_runner = None
        logger.warning(e)
        logger.warning("Unable to open config file necessary to run MQTT output.")
        logger.warning("Program will continue to run without this output.")
    except ModuleNotFoundError as e:
        mqtt_runner = None
        logger.warning(e)
        logger.warning("Unable to import modules necessary to run MQTT output.")
        logger.warning("Program will continue to run without this output.")

    try:
        logger.info("Loading pygame.mixer output...")
        from . import pygame_mixer_bc

        pygame_mixer_q = Queue()

        pygame_mixer_runner = None
        if pygame_mixer_bc.check_if_available():
            pygame_mixer_runner = pygame_mixer_bc.start_processing_output(
                system_queue, pygame_mixer_q
            )
        logger.info("...done")
    except (ImportError, ModuleNotFoundError) as e:
        pygame_mixer_runner = None
        logger.warning(e)
        logger.warning("Unable to import modules necessary to run keyboard input.")
        logger.warning("Program will continue to run without this input.")

    while True:
        for payload in utils.get_all_from_queue(demo_output_queue):
            if mqtt_runner:
                mqtt_q.put(payload)
                next(mqtt_runner)

            if pygame_mixer_runner:
                pygame_mixer_q.put(payload)
                next(pygame_mixer_runner)

        yield
