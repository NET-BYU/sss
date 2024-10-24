import math

import numpy as np

from display.segment_display import SegmentDisplay


class Cube:
    """
    Shows an outline of a cube moving in three dimensions.
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
        self.frame_rate = 50

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        self.display = SegmentDisplay(self.screen)

    def run(self):
        """Runs the simulation loop"""
        rotation_speed = 0.5
        angle = 0
        points_count = 16
        size = 12

        cube = [
            [-size, -size, -size],
            [size, -size, -size],
            [size, size, -size],
            [-size, size, -size],
            [-size, -size, -size],
            [-size, -size, size],
            [size, -size, size],
            [size, size, size],
            [-size, size, size],
            [-size, -size, size],
            [-size, size, size],
            [-size, size, -size],
            [size, size, -size],
            [size, size, size],
            [size, -size, size],
            [size, -size, -size],
        ]

        while True:
            angle += 0.1 + 3 * rotation_speed
            radiansX = math.radians(angle)
            radiansY = math.radians(angle)
            radiansZ = math.radians(angle)

            points2d = []

            for i in range(points_count):
                # rotateY
                rotz = cube[i][2] * math.cos(radiansY) - cube[i][0] * math.sin(radiansY)
                rotx = cube[i][2] * math.sin(radiansY) + cube[i][0] * math.cos(radiansY)
                roty = cube[i][1]

                # rotateX
                rotyy = roty * math.cos(radiansX) - rotz * math.sin(radiansX)
                rotzz = roty * math.sin(radiansX) + rotz * math.cos(radiansX)
                rotxx = rotx

                # rotateZ
                rotxxx = rotxx * math.cos(radiansZ) - rotyy * math.sin(radiansZ)
                rotyyy = rotxx * math.sin(radiansZ) + rotyy * math.cos(radiansZ)
                rotzzz = rotzz

                # perspective projection
                d = 30.0
                rotxxx = rotxxx * d / (d - rotzzz) + self.display.width / 2
                rotyyy = rotyyy * d / (d - rotzzz) + self.display.height / 2

                points2d.append([int(rotxxx), int(rotyyy)])

            for i in range(1, points_count):
                Sx = points2d[i - 1][0]
                Sy = points2d[i - 1][1]
                Ex = points2d[i][0]
                Ey = points2d[i][1]

                if Sx <= 0:
                    Sx = 0
                if Sx >= 127:
                    Sx = self.display.width

                if Sy <= 0:
                    Sy = 0
                if Sy >= 63:
                    Sy = self.display.height

                if Ex <= 0:
                    Ex = 0
                if Ex >= 127:
                    Ex = self.display.width

                if Ey <= 0:
                    Ey = 0
                if Ey >= 63:
                    Ey = self.display.height

                self.display.draw_line(Sx, Sy, Ex, Ey)

            self.display.draw()
            yield
            self.display.undraw()

    def stop(self):
        """Reset the state of the demo if needed, else leave blank"""
        pass
