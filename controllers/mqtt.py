import json
from multiprocessing.sharedctypes import Value

from loguru import logger
import paho.mqtt.client as mqtt
from yaml import safe_load


def start_processing_input(system_queue, demo_input_queue):
    def on_message(client, userdata, message):
        try:
            data = json.loads(message.payload)
            msg_type = data["type"]
            msg_input = data["input"]

            if msg_type == "system":
                logger.debug("Putting message into system queue: {}", msg_input)
                system_queue.put(msg_input)
            elif msg_type == "demo":
                logger.debug("Putting message into input queue: {}", msg_input)
                demo_input_queue.put(msg_input)
            else:
                logger.error("Unknown MQTT message type: {}", msg_type)

        except json.decoder.JSONDecodeError:
            logger.error("MQTT message was not json.")
        except KeyError:
            logger.error("MQTT message did not have correct keys.")

    def on_connect(client, userdata, flags, rc):
        logger.info("MQTT Client connected ({})", rc)

        # Subscribing in on_connect() means that if we lose the connection and
        # reconnect then subscriptions will be renewed.
        client.subscribe("byu_sss/input")

    def on_disconnect(client, userdata, rc):
        logger.info("MQTT Client disconnected ({})", rc)

    with open("mqtt_config.yaml") as f:
        config = safe_load(f)

    if not config["host"] or not config["port"]:
        raise ValueError("mqtt_config.yaml not set up")

    client = mqtt.Client()
    client.username_pw_set(config["username"], config["password"])

    if config["tls"]:
        client.tls_set()

    client.on_message = on_message
    client.on_connect = on_connect
    client.on_disconnect = on_disconnect

    def process():
        while True:
            try:
                client.connect(config["host"], config["port"])

                while True:
                    client.loop(timeout=0.01)
                    yield

            except ConnectionRefusedError:
                logger.warning("Unable to connect to broker... trying again later.")

                for _ in range(100):
                    yield
                continue

    return process()
