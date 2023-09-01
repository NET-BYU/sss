from loguru import logger
from pygame import mixer

from . import utils


def check_if_available():
    try:
        mixer.init()
        return True
    except:
        return False


def start_processing_output(system_queue, pygame_mixer_q):
    """Called by the broadcaster module to initialize a connection to a loudspeaker local to the system."""

    def process():
        # Go through and see what sounds we need to add
        while True:
            try:
                for item in utils.get_all_from_queue(pygame_mixer_q):
                    logger.debug("pygame_mixer: {}", item)
                    if str(item).startswith("SOUND "):
                        new_sound = str(item)[6:]

                        short_Sound = mixer.Sound(new_sound)
                        short_Sound.play()

                        # if new_sound != current_sound:
                        #     current_sound = new_sound
                        #     mixer.Sound.load(new_sound)
                        # mixer.Sound.play()
                    elif str(item).startswith("BACKGROUND SOUND "):
                        new_sound = str(item)[17:]
                        mixer.music.load(new_sound)
                        mixer.music.play(-1)
                    elif str(item).startswith("STOP SOUND"):
                        mixer.music.stop()
            except:
                logger.warning("Unable to play sound file: {}".format(new_sound))

            yield

    return process()
