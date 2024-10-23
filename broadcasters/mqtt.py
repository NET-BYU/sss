import paho.mqtt.client as mqtt
from loguru import logger
from yaml import safe_load

from . import utils


def start_processing_output(system_queue, mqtt_q):
    """
    Called by the broadcaster module to initialize a connection to the desired MQTT broker.

    Args:
        system_queue (Queue): The queue to put system output events in.
        mqtt_q (Queue): The queue to put MQTT messages in.
    """

    def on_connect(client, userdata, flags, rc):
        """Callback function executed upon the successful connection to the desired broker

        Args:
            client (mqtt.Client): The client instance for this callback
            userdata (Any): The private user data as set in Client() or user_data_set()
            flags (Dict): Response flags sent by the broker
            rc (int): The connection result
        """
        logger.info("MQTT Client connected ({})", rc)

    def on_disconnect(client, userdata, rc):
        """Callback function executed upon disconnecting from the broker

        Args:
            client (mqtt.Client): The client instance for this callback
            userdata (Any): The private user data as set in Client() or user_data_set()
            rc (int): The connection result
        """
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
        """Contains generator which fetches all messages from the `byu_sss/output` topic on broker

        Returns:
            Generator: Generator that fetches all messages from the `byu_sss/output` topic on broker
        """
        while True:
            try:
                client.connect(config["host"], config["port"])

                while True:
                    client.loop(timeout=0.01)

                    for item in utils.get_all_from_queue(mqtt_q):
                        client.publish(
                            "byu_sss/output",
                            payload=str(item),
                        )

                    yield

            except ConnectionRefusedError:
                logger.warning("Unable to connect to broker... trying again later.")

                for _ in range(100):
                    yield
                continue

    return process()
