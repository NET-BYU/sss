import pygame


class VirtualSevenSegment:
    """Virtual seven segment display."""

    def __init__(self, start_x, start_y, display):
        """Constructor

        Args:
            start_x (int): The starting x position of the display.
            start_y (int): The starting y position of the display.
            display (pygame.Surface): The display surface.
        """
        self.digits = [
            [Digit(display, start_x + j * 25, start_y + i * 30) for j in range(16)]
            for i in range(6)
        ]
        self.x = start_x
        self.y = start_y

    @staticmethod
    def flush():
        """Flushes the display."""
        pygame.display.flip()

    def clear(self):
        """Clears the display."""
        for row in self.digits:
            for dig in row:
                dig.update(0)

    def raw2(self, x, y, value, flush=False):
        """Updates the display with a raw value.

        Args:
            x (int): The x position of the digit.
            y (int): The y position of the digit.
            value (int): The value to update the digit with.
            flush (bool): Whether to flush the display.
        """
        self.digits[y][x].update(value)
        if flush:
            self.flush()


class Digit:
    """Digit class for the seven segment display."""

    def __init__(self, display, x, y):
        """Constructor

        Args:
            display (pygame.Surface): The display surface.
            x (int): The x position of the digit.
            y (int): The y position of the digit.
        """
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
        """Updates the digit with a new value.

        Args:
            value (int): The new value to update the digit with.
        """
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
