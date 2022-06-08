from loguru import logger


def start_inputs(system_queue, demo_input_queue):
    try:
        logger.info("Loading MQTT input...")
        from . import mqtt

        mqtt_runner = mqtt.start_processing_input(system_queue, demo_input_queue)
        logger.info("...done")
    except FileNotFoundError as e:
        mqtt_runner = None
        logger.warning(e)
        logger.warning("Unable to open config file necessary to run MQTT input.")
        logger.warning("Program will continue to run without this input.")
    except ModuleNotFoundError as e:
        mqtt_runner = None
        logger.warning(e)
        logger.warning("Unable to import modules necessary to run MQTT input.")
        logger.warning("Program will continue to run without this input.")

    try:
        logger.info("Loading gamepad input...")
        from . import gamepad

        gamepad_runner = gamepad.start_processing_input(system_queue, demo_input_queue)
        logger.info("...done")
    except ModuleNotFoundError as e:
        gamepad_runner = None
        logger.warning(e)
        logger.warning("Unable to import modules necessary to run gamepad input.")
        logger.warning("Program will continue to run without this input.")
    except Exception as e:
        logger.warning("Exception caught")
        gamepad_runner = None
        logger.warning(e)

    try:
        logger.info("Loading keyboard input...")
        from . import keyboard

        keyboard_runner = keyboard.start_processing_input(
            system_queue, demo_input_queue
        )
        logger.info("...done")
    except ModuleNotFoundError as e:
        keyboard_runner = None
        logger.warning(e)
        logger.warning("Unable to import modules necessary to run keyboard input.")
        logger.warning("Program will continue to run without this input.")

    while True:
        if mqtt_runner:
            next(mqtt_runner)

        if gamepad_runner:
            next(gamepad_runner)

        if keyboard_runner:
            next(keyboard_runner)

        yield
