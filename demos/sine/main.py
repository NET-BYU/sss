import math

import numpy as np

import demos.utils as utils


class Sine:
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
        paramx = 0.09
        sin = 30
        increase_factor = 1

        while True:
            self.CX, self.CY = utils.create_segment_buffer(self.screen)

            sinPoints = self.C_W
            psinx = 0
            psiny = int(self.C_H / 2)

            if sin == 30:
                increase_factor = 1

            if sin == 100:
                increase_factor = -1

            sin += increase_factor
            paramx += increase_factor * sin * 0.000176

            for i in range(sinPoints):
                sinx = int(float(i) / sinPoints * self.C_W)
                siny = int(
                    (1 + math.sin(math.pi * 2 * 3 / 4 + i * paramx * 0.75))
                    / 2
                    * self.C_H
                )

                utils.draw_segment_line(
                    psinx,
                    psiny,
                    sinx,
                    siny,
                    self.CX,
                    self.CY,
                )
                psinx = sinx
                psiny = siny

            utils.display_segment_buffer(self.CX, self.CY, self.screen)
            yield
            utils.undraw_segment_buffer(self.CX, self.CY, self.screen)

    def stop(self):
        pass
