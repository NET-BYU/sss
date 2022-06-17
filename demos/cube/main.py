import math

import numpy as np

import demos.utils as utils


class Cube:
    def __init__(self, input_queue, output_queue, screen):
        self.frame_rate = 50
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

    def run(self):
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
            self.CX, self.CY = utils.create_segment_buffer(self.screen)

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
                rotxxx = rotxxx * d / (d - rotzzz) + self.C_W / 2
                rotyyy = rotyyy * d / (d - rotzzz) + self.C_H / 2

                points2d.append([int(rotxxx), int(rotyyy)])

            for i in range(1, points_count):
                Sx = points2d[i - 1][0]
                Sy = points2d[i - 1][1]
                Ex = points2d[i][0]
                Ey = points2d[i][1]

                if Sx <= 0:
                    Sx = 0
                if Sx >= 127:
                    Sx = self.C_W

                if Sy <= 0:
                    Sy = 0
                if Sy >= 63:
                    Sy = self.C_H

                if Ex <= 0:
                    Ex = 0
                if Ex >= 127:
                    Ex = self.C_W

                if Ey <= 0:
                    Ey = 0
                if Ey >= 63:
                    Ey = self.C_H

                utils.draw_segment_line(Sx, Sy, Ex, Ey, self.CX, self.CY)

            # Draw the cube
            utils.display_segment_buffer(self.CX, self.CY, self.screen)
            yield

            # Undraw the cube
            utils.undraw_segment_buffer(self.CX, self.CY, self.screen)

    def stop(self):
        pass
