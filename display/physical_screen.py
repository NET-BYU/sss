import itertools
import time

from .display import Display
from .seven_seg import SevenSegment


class PhysicalScreen:
    """PhysicalScreen class to handle the physical screen"""

    def __init__(self, brightness=3):
        """
        Constructor

        Args:
            brightness (int, optional): Brightness of the screen. Defaults to 3.

        """
        self.brightness = brightness
        self.cs_num_lst = [
            11,
            9,
            14,
            3,
            7,
            13,
            10,
            5,
            6,
            2,
            12,
            4,
        ]  # channel select gpio pin numbers, array is in flattened row order from the top of the screen
        self.num_segs_across = 3
        self.num_segs_down = 4

        self._create_display()

    def _create_display(self):
        """Create the display"""
        panel_array = [
            [
                SevenSegment(
                    num_digits=96,
                    cs_num=self.cs_num_lst[i * self.num_segs_across + j],
                    brightness=self.brightness,
                    segment_orientation_array=[
                        [1, 2],
                        [3, 4],
                        [5, 6],
                        [7, 8],
                        [9, 10],
                        [11, 12],
                    ],
                )
                for j in range(self.num_segs_across)
            ]
            for i in range(self.num_segs_down)
        ]

        self.display = Display(
            panel_array,
            48,
            48,
        )

    def _close_display(self):
        """Close the display"""
        for row in range(len(self.display.board_objects)):
            for panel in range(len(self.display.board_objects[row])):
                self.display.board_objects[row][panel].close()

    def create_tick(self, frame_rate):
        """
        Create a tick

        Args:
            frame_rate (int): Frame rate

        """
        period = 1.0 / frame_rate
        nextTime = time.time() + period

        for i in itertools.count():
            now = time.time()
            toSleep = nextTime - now

            if toSleep > 0:
                time.sleep(toSleep)
                nextTime += period
            else:
                nextTime = now + period

            yield i, nextTime

    def clear(self):
        """Clear the screen"""
        self.display.clear()

    def refresh(self):
        """Refresh the screen"""
        self._close_display()
        self._create_display()
