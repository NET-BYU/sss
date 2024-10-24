import json
import socket

import paho.mqtt.client as mqtt
from loguru import logger
from yaml import safe_load


def start_processing_input(system_queue, demo_input_queue):
    """
    Listens to input on the device and puts it into the appropriate queue.

    Args:
        system_queue (Queue): The queue to put system input events in.
        demo_input_queue (Queue): The queue to put demo input events in.
    """

    def on_message(client, userdata, message):
        """
        Callback function executed upon receiving a message from the broker

        Args:
            client (mqtt.Client): The client instance for this callback
            userdata (Any): The private user data as set in Client() or user_data_set()
            message (mqtt.MQTTMessage): The message received from the broker
        """
        logger.debug("on_message triggered")
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
        """
        Callback function executed upon the successful connection to the desired broker

        Args:
            client (mqtt.Client): The client instance for this callback
            userdata (Any): The private user data as set in Client() or user_data_set()
            flags (Dict): Response flags sent by the broker
            rc (int): The connection result
        """
        logger.info("MQTT Client connected ({})", rc)

        # Subscribing in on_connect() means that if we lose the connection and
        # reconnect then subscriptions will be renewed.
        client.subscribe("byu_sss/input")

    def on_disconnect(client, userdata, rc):
        """
        Callback function executed upon disconnecting from the broker

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

    client.on_message = on_message
    client.on_connect = on_connect
    client.on_disconnect = on_disconnect

    def process():
        """
        Contains generator which fetches all messages from the `byu_sss/input` topic on broker

        Returns:
            Generator: Generator that fetches all messages from the `byu_sss/input` topic on broker
        """
        logger.debug("In process func")
        while True:
            try:
                logger.debug("Connecting to broker")
                client.connect(config["host"], config["port"])
                logger.debug("...done")

                while True:
                    client.loop(timeout=0.01)
                    yield

            except (ConnectionRefusedError, socket.gaierror, Exception) as e:
                logger.warning("Unable to connect to broker... trying again later.")

                for _ in range(100):
                    yield
                continue

    return process()
