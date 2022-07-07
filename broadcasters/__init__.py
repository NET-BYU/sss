from loguru import logger


def start_outputs(system_queue, demo_output_queue):
    try:
        logger.info("Loading MQTT output...")
        from . import mqtt

        mqtt_runner = mqtt.start_processing_output(system_queue, demo_output_queue)
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
        if mqtt_runner:
            next(mqtt_runner)

        yield
