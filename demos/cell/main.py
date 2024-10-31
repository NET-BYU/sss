import math
from dataclasses import dataclass

import numpy as np
from perlin_noise import PerlinNoise

from display.segment_display import SegmentDisplay


@dataclass
class Point:
    x: float
    y: float


class Cell:
    """
    This simulates a cell moving around. It is a polygon that moves around to
    different points in a random fashion.
    """

    demo_time = 30

    def __init__(self, input_queue, output_queue, screen):
        """
        Constructor

        Args:
            input_queue (Queue): The input queue
            output_queue (Queue): The output queue
            screen (Screen): The screen to draw on
        """
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.display = SegmentDisplay(self.screen)

        self.num_cell_points = 10

    def run(self):
        """Runs the simulation loop"""
        count = 0
        noise = PerlinNoise()

        while True:
            pos = count * 0.025

            # Create cell
            cell = []
            for i in range(self.num_cell_points + 1):
                sin = math.sin(math.pi * 2 * i / self.num_cell_points + pos)
                cos = math.cos(math.pi * 2 * i / self.num_cell_points + pos)

                x = (
                    self.display.width / 2
                    + self.display.width * 0.4 * sin
                    + self.display.width
                    * 0.15
                    * self._map(noise([sin * 5 * 0.5, 0, pos]), 0.2, 0.75, -1, 1)
                    + 30
                )

                y = (
                    self.display.height / 2
                    + self.display.height * 0.4 * cos
                    + self.display.height
                    * 0.15
                    * self._map(noise([sin * 5 * 0.5, 1, pos]), 0.2, 0.75, -1, 1)
                    + 20
                )

                cell.append(Point(x, y))

            for i in range(self.num_cell_points):
                self.display.draw_line(
                    int(cell[i].x),
                    int(cell[i].y),
                    int(cell[i + 1].x),
                    int(cell[i + 1].y),
                )

                self.display.draw_line(
                    int(cell[self.num_cell_points - 1].x),
                    int(cell[self.num_cell_points - 1].y),
                    int(cell[0].x),
                    int(cell[0].y),
                )

            self.display.draw()
            yield
            self.display.undraw()

            count += 1

    def _map(self, x, in_min, in_max, out_min, out_max):
        """
        Maps a value from one range to another

        Args:
            x (float): The value to map
            in_min (float): The minimum value of the input range
            in_max (float): The maximum value of the input range
            out_min (float): The minimum value of the output range
            out_max (float): The maximum value of the output range

        Returns:
            float: The mapped value
        """
        return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
