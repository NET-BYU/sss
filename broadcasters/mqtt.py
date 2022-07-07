from loguru import logger
import paho.mqtt.client as mqtt
from yaml import safe_load
from . import utils


def start_processing_output(system_queue, mqtt_q):
    def on_connect(client, userdata, flags, rc):
        logger.info("MQTT Client connected ({})", rc)

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

    client.on_connect = on_connect
    client.on_disconnect = on_disconnect

    def process():
        while True:
            try:
                client.connect(config["host"], config["port"])

                while True:
                    client.loop(timeout=0.01)

                    if not mqtt_q.empty():
                        client.publish(
                            "byu_sss/output",
                            payload=str(next(utils.get_all_from_queue(mqtt_q))),
                        )

                    yield

            except ConnectionRefusedError:
                logger.warning("Unable to connect to broker... trying again later.")

                for _ in range(100):
                    yield
                continue

    return process()
