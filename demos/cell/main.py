from dataclasses import dataclass
import math

import numpy as np
from perlin_noise import PerlinNoise

import demos.utils as utils


@dataclass
class Point:

    x: float
    y: float


class Cell:
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

        self.CX = None
        self.CY = None

        self.num_cell_points = 10

    def run(self):

        count = 0
        noise = PerlinNoise()

        while True:
            self.CX, self.CY = utils.create_segment_buffer(self.screen)

            pos = count * 0.025

            # Create cell
            cell = []
            for i in range(self.num_cell_points + 1):
                sin = math.sin(math.pi * 2 * i / self.num_cell_points + pos)
                cos = math.cos(math.pi * 2 * i / self.num_cell_points + pos)

                x = (
                    self.C_W / 2
                    + self.C_W * 0.4 * sin
                    + self.C_W
                    * 0.15
                    * self._map(noise([sin * 5 * 0.5, 0, pos]), 0.2, 0.75, -1, 1)
                    + 30
                )

                y = (
                    self.C_H / 2
                    + self.C_H * 0.4 * cos
                    + self.C_H
                    * 0.15
                    * self._map(noise([sin * 5 * 0.5, 1, pos]), 0.2, 0.75, -1, 1)
                    + 20
                )

                cell.append(Point(x, y))

            for i in range(self.num_cell_points):
                utils.draw_segment_line(
                    int(cell[i].x),
                    int(cell[i].y),
                    int(cell[i + 1].x),
                    int(cell[i + 1].y),
                    self.CX,
                    self.CY,
                )

                utils.draw_segment_line(
                    int(cell[self.num_cell_points - 1].x),
                    int(cell[self.num_cell_points - 1].y),
                    int(cell[0].x),
                    int(cell[0].y),
                    self.CX,
                    self.CY,
                )

            utils.display_segment_buffer(self.CX, self.CY, self.screen)
            yield
            utils.undraw_segment_buffer(self.CX, self.CY, self.screen)

            count += 1

    def _map(self, x, in_min, in_max, out_min, out_max):
        return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

    def stop(self):
        pass
