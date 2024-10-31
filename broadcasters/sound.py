from pathlib import Path
from threading import Thread

from loguru import logger
from playsound import playsound

from . import utils
from .broadcast_message import BroadcastSoundMessage


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
                if not isinstance(item, BroadcastSoundMessage):
                    continue

                logger.debug("Playing sound: {}", item.file)

                sound_file = sound_path / item.file
                if not sound_file.exists():
                    logger.error("Sound file does not exist: {}", sound_file)
                    continue

                playsound(sound_file)

    # Create thread to play sounds
    Thread(target=play_sound_background, daemon=True).start()

    while True:
        yield
