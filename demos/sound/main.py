from loguru import logger

from broadcasters.broadcast_message import BroadcastSoundMessage
from demos.utils import get_all_from_queue
from display.segment_display import SegmentDisplay


class Sound:
    """
    This demo shows developers how to use the sound broadcaster to play
    sounds. This is not a very interesting demo and is not designed to be used
    in kiosk mode.
    """

    demo_time = None

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue to receive messages from the main thread
            output_queue (Queue): Queue to send messages to the main thread
            screen (Screen): Surface to draw on
        """
        self.frame_rate = 30

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.display = SegmentDisplay(self.screen)

        self.density = 15
        self.rain_length = 2

    def run(self):
        """Main loop"""

        self.screen.draw_text(5, 6, "Press a button to play sound".upper())
        self.display.draw()
        yield

        while True:
            for item in get_all_from_queue(self.input_queue):
                logger.debug("Received: {}", item)
                sound = None

                if item == "LEFT_P":
                    sound = "Menu_Navigate_00.wav"
                elif item == "RIGHT_P":
                    sound = "Menu_Navigate_01.wav"
                elif item == "UP_P":
                    sound = "Menu_Navigate_02.wav"
                elif item == "DOWN_P":
                    sound = "Menu_Navigate_03.wav"

                if sound is None:
                    yield
                    continue

                self.display.undraw()
                self.screen.draw_text(5, 6, "Playing sound {}".format(sound).upper())
                self.display.draw()
                self.output_queue.put(BroadcastSoundMessage(file=sound))
                yield

            yield

    def stop(self):
        """Stop the thread"""
        pass
