from pathlib import Path
from threading import Thread

import paho.mqtt.client as mqtt
from playsound import playsound
from loguru import logger
from yaml import safe_load

from . import utils
from .broadcast_message import BroadcastType


def start_processing_output(system_queue, sound_q):
    """
    Called by the broadcaster module to initialize a connection to the desired MQTT broker.

    Args:
        system_queue (Queue): The queue to put system output events out.
        sound_q (Queue): The queue to put sound messages out.
    """

    sound_path = Path("sounds")

    def play_sound_background():
        while True:
            for item in utils.get_all_from_queue(sound_q):
                # Filter out things that the sound broadcaster doesn't care about
                if item.type != BroadcastType.SOUND:
                    continue

                sound = item.message
                logger.debug("Playing sound: {}", sound)

                sound_file = sound_path / sound
                if not sound_file.exists():
                    logger.error("Sound file does not exist: {}", sound_file)
                    continue

                playsound(sound_file)

    # Create thread to play sounds
    Thread(target=play_sound_background, daemon=True).start()

    while True:
        yield
