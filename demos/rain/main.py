from dataclasses import dataclass
from random import randint

import numpy as np
from perlin_noise import PerlinNoise

from display.segment_display import SegmentDisplay


@dataclass
class RainDrop:
    x: float
    y: float
    speed: float


class Rain:
    """
    Simulates rain falling. Rain drops can be different lengths and
    different speeds. Wind blows the rain in random patterns.
    """

    demo_time = 30

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): Queue for receiving messages
            output_queue (Queue): Queue for sending messages
            screen (pygame.Surface): Surface to draw on
        """
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.display = SegmentDisplay(self.screen)

        self.density = 15
        self.rain_length = 2

    def run(self):
        """Run the rain demo"""
        # Set up rain
        noise = PerlinNoise()
        rain = [
            RainDrop(
                randint(0, self.display.width),
                randint(0, self.display.height),
                randint(1, 3),
            )
            for _ in range(20 * self.density)
        ]
        count = 0

        while True:
            rain_dir = 6 * noise(count * 0.02)

            for this_rain in rain:
                self.display.draw_line(
                    int(this_rain.x),
                    int(this_rain.y),
                    int(this_rain.x + rain_dir),
                    int(this_rain.y + self.rain_length),
                )

                this_rain.y += this_rain.speed
                this_rain.x += rain_dir

                if this_rain.y > self.display.height:
                    this_rain.y = 0

                if this_rain.x < 0:
                    this_rain.x = self.display.width

                if this_rain.x > self.display.width:
                    this_rain.x = 0

            # Remove any horizontal components
            self.display.x_buffer = np.zeros((self.display.width, self.display.height))

            self.display.draw()
            yield
            self.display.undraw()

            count += 1

    def stop(self):
        """Stop the rain demo"""
        pass
