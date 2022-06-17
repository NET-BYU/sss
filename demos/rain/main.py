from dataclasses import dataclass
from random import randint

import numpy as np
from perlin_noise import PerlinNoise

import demos.utils as utils


@dataclass
class RainDrop:

    x: float
    y: float
    speed: float


class Rain:
    def __init__(self, input_queue, output_queue, screen):
        self.frame_rate = 10
        self.demo_time = 300

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.W = self.screen.x_width - 1
        self.H = int(self.screen.y_height / 2)

        self.C_W = 2 * self.W
        self.C_H = 3 * self.H

        self.density = 15
        self.rain_length = 2

        self.CX = None
        self.CY = None

    def run(self):
        # Set up rain
        noise = PerlinNoise()
        rain = [
            RainDrop(randint(0, self.C_W), randint(0, self.C_H), randint(1, 3))
            for _ in range(20 * self.density)
        ]
        count = 0

        while True:
            self.CX, self.CY = utils.create_segment_buffer(self.screen)

            rain_dir = 6 * noise(count * 0.02)

            for this_rain in rain:
                utils.draw_segment_line(
                    int(this_rain.x),
                    int(this_rain.y),
                    int(this_rain.x + rain_dir),
                    int(this_rain.y + self.rain_length),
                    self.CX,
                    self.CY,
                )

                this_rain.y += this_rain.speed
                this_rain.x += rain_dir

                if this_rain.y > self.C_H:
                    this_rain.y = 0

                if this_rain.x < 0:
                    this_rain.x = self.C_W

                if this_rain.x > self.C_W:
                    this_rain.x = 0

            # Remove any horizontal components
            self.CX = np.zeros((self.C_W, self.C_H))

            utils.display_segment_buffer(self.CX, self.CY, self.screen)
            yield
            utils.undraw_segment_buffer(self.CX, self.CY, self.screen)

            count += 1

    def stop(self):
        pass
