import pygame


class Digit:
    def __init__(self, display, x, y):
        self.display = display
        self.x = x
        self.y = y
        self.draw_line = pygame.draw.line
        self.start_x_pos = [
            self.x + 4,
            self.x + 3,
            self.x + 1,
            self.x + 2,
            self.x + 16,
            self.x + 18,
            self.x + 6,
            self.x + 18,
        ]
        self.end_x_pos = [
            self.x + 14,
            self.x + 1,
            self.x + 0,
            self.x + 12,
            self.x + 14,
            self.x + 16,
            self.x + 16,
            self.x + 19,
        ]
        self.start_y_pos = [
            self.y + 10,
            self.y + 1,
            self.y + 11,
            self.y + 20,
            self.y + 11,
            self.y + 1,
            self.y,
            self.y + 20,
        ]
        self.end_y_pos = [
            self.y + 10,
            self.y + 9,
            self.y + 19,
            self.y + 20,
            self.y + 19,
            self.y + 9,
            self.y,
            self.y + 20,
        ]
        for i in range(8):
            self.draw_line(
                self.display,
                (255, 0, 0),
                (self.start_x_pos[i], self.start_y_pos[i]),
                (self.end_x_pos[i], self.end_y_pos[i]),
                2,
            )
        # pygame.display.flip()
        self.state = 255

    def update(self, value):
        # 7 Segment bit order: DP-G-F-E-D-C-B-A
        # 7 Segment bit order: DP-A-B-C-D-E-F-G
        diff = self.state ^ value
        for i in range(8):
            offset = 1 << i
            if diff & offset:
                self.draw_line(
                    self.display,
                    (255, 0, 0) if value & offset else (0, 0, 0),
                    (self.start_x_pos[i], self.start_y_pos[i]),
                    (self.end_x_pos[i], self.end_y_pos[i]),
                    2,
                )
        self.state = value


class VirtualSevenSegment:
    def __init__(self, start_x, start_y, display):
        self.digits = [
            [Digit(display, start_x + j * 25, start_y + i * 30) for j in range(16)]
            for i in range(6)
        ]
        self.x = start_x
        self.y = start_y

    @staticmethod
    def flush():
        pygame.display.flip()

    def clear(self):
        for row in self.digits:
            for dig in row:
                dig.update(0)

    def raw2(self, x, y, value, flush=False):
        self.digits[y][x].update(value)
        if flush:
            self.flush()
