import itertools
import time

from .display import Display
from .seven_seg_v2 import SevenSegment


class PhysicalScreen:
    def __init__(self, brightness=5):
        self.brightness = brightness
        self.num_segs_across = 3
        self.num_segs_down = 4

        self.addresses = [
            # First row
            "172.0.0.5",
            "172.0.0.4",
            "172.0.0.3",
            # Second row
            "172.0.0.8",
            "172.0.0.7",
            "172.0.0.6",
            # Third row
            "172.0.0.11",
            "172.0.0.10",
            "172.0.0.9",
            # Fourth row
            "172.0.0.14",
            "172.0.0.13",
            "172.0.0.12",
        ]
        self._create_display()

    def _create_display(self):
        # need to have an array of ip addresses if more panels
        panel_array = [
            [
                SevenSegment(ip_address=self.addresses[i * self.num_segs_across + j], 
                             brightness=self.brightness)
                for j in range(self.num_segs_across)
            ]
            for i in range(self.num_segs_down)
        ]

        self.display = Display(
            panel_array,
            self.num_segs_across * 16,
            self.num_segs_down * 6 * 2,
        )

    def _close_display(self):
        for row in range(len(self.display.board_objects)):
            for panel in range(len(self.display.board_objects[row])):
                self.display.board_objects[row][panel].close()

    def create_tick(self, frame_rate):
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
        self.display.clear()

    def refresh(self):
        self._close_display()
        self._create_display()
