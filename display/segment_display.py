import numpy as np


class SegmentDisplay:
    """
    SegmentDisplay is a class that abstracts the S^3 screen into individually
    controllable segments. Instead of making each circle of a segment a pixel,
    this class lets you control each segment as a pixel. This means this
    display is 2 times wider (there are two horizontal segments) and 3 times
    higher (there are three vertical segments) than the Display object.
    """

    def __init__(self, screen):
        """
        Constructor

        Args:
            screen (Display): the screen object to draw on
        """

        self.screen = screen

        self.screen_width = screen.x_width - 1
        self.screen_height = screen.y_height // 2

        self.width = 2 * self.screen_width
        self.height = 3 * self.screen_height

        self.x_buffer = np.zeros((self.width, self.height))
        self.y_buffer = np.zeros((self.width, self.height))

    def draw(self, push=True):
        """
        Updates the screen with all of the lines drawn using draw_line.

        Args:
            push (bool): when true all the recent changes are pushed to the display
        """
        for x in range(self.screen_width):
            for y in range(self.screen_height):
                state = 0

                if self.x_buffer[x * 2][y * 3]:
                    state += 64  # 64 = TOP
                if self.x_buffer[x * 2][y * 3 + 1]:
                    state += 1  # 1 = CENTER
                if self.x_buffer[x * 2][y * 3 + 2]:
                    state += 8  # 8 = BOTTOM

                if self.y_buffer[x * 2 + 1][y * 3]:
                    state += 32  # 32 = TR
                if self.y_buffer[x * 2 + 1][y * 3 + 1]:
                    state += 16  # 16 = BR
                if self.y_buffer[x * 2][y * 3 + 1]:
                    state += 4  # 4 = BL
                if self.y_buffer[x * 2][y * 3]:
                    state += 2  # 2 = TL

                # Only draw the pixel if there is something to draw
                if state != 0:
                    self.screen.draw_raw(x, y, state)

        if push:
            self.screen.push()

    def undraw(self):
        """
        Clears all segments drawn both from the screen and from the underlying data structure.
        """
        for x in range(self.screen_width):
            for y in range(self.screen_height):
                if self.x_buffer[x * 2][y * 3]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 64)
                    self.x_buffer[x * 2][y * 3] = False

                if self.x_buffer[x * 2][y * 3 + 1]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 1)
                    self.x_buffer[x * 2][y * 3 + 1] = False

                if self.x_buffer[x * 2][y * 3 + 2]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 8)
                    self.x_buffer[x * 2][y * 3 + 2] = False

                if self.y_buffer[x * 2 + 1][y * 3]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 32)
                    self.y_buffer[x * 2 + 1][y * 3] = False

                if self.y_buffer[x * 2 + 1][y * 3 + 1]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 16)
                    self.y_buffer[x * 2 + 1][y * 3 + 1] = False

                if self.y_buffer[x * 2][y * 3 + 1]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 4)
                    self.y_buffer[x * 2][y * 3 + 1] = False

                if self.y_buffer[x * 2][y * 3]:
                    value = self.screen.get_raw(x, y)
                    self.screen.draw_raw(x, y, value - 2)
                    self.y_buffer[x * 2][y * 3] = False

    def draw_line(self, start_x, start_y, end_x, end_y):
        """
        Draws a line from coordinate to another. To display the line, you must
        use the draw function. This function only updates the underlying data
        buffer.

        Args:
            start_x (int): the starting x point
            start_y (int): the starting y point
            end_x (int): the ending x point
            end_y (int): the ending y point
        """
        start_x = self._constrain(start_x, 0, self.width - 1)
        start_y = self._constrain(start_y, 0, self.height - 1)

        end_x = self._constrain(end_x, 0, self.width - 1)
        end_y = self._constrain(end_y, 0, self.height - 1)

        if end_x < start_x:
            start_x, end_x = end_x, start_x
            start_y, end_y = end_y, start_y

        dx = end_x - start_x
        dy = end_y - start_y

        r = 0
        ny = 0
        pny = 0
        nny = 0

        p = dy / dx if dx != 0 else 0
        t = 0

        for i in range(dx + 1):
            r = int(round(t))
            pny = ny
            ny = start_y + r

            if i > 0:  # vertical lines connecting horizontal lines
                for j in range(abs(ny - pny)):
                    if pny > ny:
                        nny = pny - j - 1
                    else:
                        nny = pny + j

                    self.y_buffer[start_x + i][nny] = 1

            if i != dx:
                self.x_buffer[start_x + i][ny] = 1
            t += p

        if dx == 0 and dy != 0:  # in case of no vertical lines
            fs = 0
            fe = int(dy)

            if dy < 0:
                fs = fe
                fe = 0

            for i in range(fs, fe):
                self.y_buffer[start_x][start_y + i] = 1

    def _constrain(self, val, min_val, max_val):
        """A helper function that constrains a value between two values"""
        return min(max_val, max(min_val, val))
