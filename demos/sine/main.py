import math

import numpy as np

from display.segment_display import SegmentDisplay


class Sine:
    """
    Displays an animated sine wave that is increasing in frequency. When the
    frequency gets to a certain point, it moves to a lower frequency. This
    pattern is repeated.
    """

    demo_time = 30

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue to receive messages from the main thread
            output_queue (Queue): Queue to send messages to the main thread
            screen (Screen): Surface to draw on

        """
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.display = SegmentDisplay(self.screen)

        self.density = 15
        self.rain_length = 2

    def run(self):
        """Main loop"""
        paramx = 0.09
        sin = 30
        increase_factor = 1

        while True:
            sinPoints = self.display.width
            psinx = 0
            psiny = int(self.display.height / 2)

            if sin == 30:
                increase_factor = 1

            if sin == 100:
                increase_factor = -1

            sin += increase_factor
            paramx += increase_factor * sin * 0.000176

            for i in range(sinPoints):
                sinx = int(float(i) / sinPoints * self.display.width)
                siny = int(
                    (1 + math.sin(math.pi * 2 * 3 / 4 + i * paramx * 0.75))
                    / 2
                    * self.display.height
                )

                self.display.draw_line(
                    psinx,
                    psiny,
                    sinx,
                    siny,
                )
                psinx = sinx
                psiny = siny

            self.display.draw()
            yield
            self.display.undraw()

    def stop(self):
        """Stop the thread"""
        pass
