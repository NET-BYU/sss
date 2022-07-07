# import this
from loguru import logger
from . import utils
from queue import Queue


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

    while True:
        payload = ""
        if not demo_output_queue.empty():
            payload = next(utils.get_all_from_queue(demo_output_queue))

            if mqtt_runner:
                mqtt_q.put(payload)
                next(mqtt_runner)

        yield
