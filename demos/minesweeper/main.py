import queue

from demos.utils import get_all_from_queue

from random import randint


class Minesweeper:
    """This is the minesweeper demo. It emulates the classic Windows game."""

    demo_time = None  # Number of seconds or None if its game

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

        self.cursor = [0, 0]
        self.minefield = []
        self.scale = 8
        self.discovered = [
            [False for __ in range(self.scale)] for _ in range(self.scale)
        ]
        self.flags = [[False for __ in range(self.scale)] for _ in range(self.scale)]

    def run(self):
        # Waits for user ready
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 8,
            "MINESWEEPER",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 4,
            "PRESS START",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 2, "TO BEGIN"
        )
        self.screen.push()

        # Don't start until user presses start
        while True:
            try:
                if self.input_queue.get(block=False) == "START_P":
                    break
            except queue.Empty:
                pass
            yield

        # Erase startup text and initialize screen
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 8,
            "           ",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 2) - 4,
            "           ",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 2, "        "
        )
        self.screen.push()
        self.init_screen()
        self.minefield = self.gen_minefield(self.scale)

        # Create generator here
        while True:
            if not self.input_queue.empty():
                # Check to see if there are any keypresses to read
                for keypress in get_all_from_queue(self.input_queue):
                    # If there are directional buttons pressed
                    if keypress == "LEFT_P":
                        repeat_left = True
                    if keypress == "LEFT_R":
                        self.draw_cursor(self.cursor[0], self.cursor[1], erase=True)
                        self.cursor[0] -= 1
                        if self.cursor[0] < 0:
                            self.cursor[0] = 0
                        self.draw_cursor(self.cursor[0], self.cursor[1])
                        repeat_left = False
                    if keypress == "RIGHT_P":
                        repeat_right = True
                    if keypress == "RIGHT_R":
                        self.draw_cursor(self.cursor[0], self.cursor[1], erase=True)
                        self.cursor[0] += 1
                        if self.cursor[0] > self.scale - 1:
                            self.cursor[0] = self.scale - 1
                        self.draw_cursor(self.cursor[0], self.cursor[1])
                    if keypress == "UP_P":
                        repeat_left = True
                    if keypress == "UP_R":
                        self.draw_cursor(self.cursor[0], self.cursor[1], erase=True)
                        self.cursor[1] -= 1
                        if self.cursor[1] < 0:
                            self.cursor[1] = 0
                        self.draw_cursor(self.cursor[0], self.cursor[1])
                    if keypress == "DOWN_P":
                        repeat_right = True
                    if keypress == "DOWN_R":
                        self.draw_cursor(self.cursor[0], self.cursor[1], erase=True)
                        self.cursor[1] += 1
                        if self.cursor[1] > self.scale - 1:
                            self.cursor[1] = self.scale - 1
                        self.draw_cursor(self.cursor[0], self.cursor[1])
                    if keypress == "PRI_P":
                        pass
                    if keypress == "PRI_R":
                        self.draw_num(self.cursor[0], self.cursor[1])
                        pass
                    if keypress == "SEC_P":
                        repeat_left = True
                    if keypress == "SEC_R":
                        self.toggle_flag(self.cursor[0], self.cursor[1])

                    # Pause and unpause routine
                    # if keypress == "START_P":
                    #     self.screen.draw_text(
                    #         (self.screen.x_width // 2) - 3,
                    #         (self.screen.y_height // 2) - 8,
                    #         "PAUSED",
                    #         push=True,
                    #     )
                    #     self.input_queue.queue.clear()
                    #     unpause = False

                    #     # Do nothing until start is pressed again
                    #     while not unpause:
                    #         if not self.input_queue.empty():
                    #             for keypress in get_all_from_queue(self.input_queue):
                    #                 if keypress == "START_P":
                    #                     self.screen.draw_text(
                    #                         (self.screen.x_width // 2) - 3,
                    #                         (self.screen.y_height // 2) - 8,
                    #                         "      ",
                    #                         push=True,
                    #                     )
                    #                     unpause = True
                    #                     break
                    #         yield

            # self.screen.draw_text(
            #     self.screen.x_width // 2 - 5,
            #     self.screen.y_height // 2 - 4,
            #     "HELLO THERE",
            #     push=True,
            # )
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

    def draw_cell(self, x, y, scale):
        # TL Corner
        self.screen.draw_pixel(x, y, 0x6)

        # TR Corner
        self.screen.draw_pixel(int(48 / scale) - 1 + x, y, 0xC)

        # BL Corner
        self.screen.draw_pixel(x, int(48 / scale) - 1 + y, 0x3)

        # BR Corner
        self.screen.draw_pixel(int(48 / scale) - 1 + x, int(48 / scale) - 1 + y, 0x9)

        for i in range(x + 1, int(48 / scale) - 1 + x):
            self.screen.draw_pixel(i, y, 0x4)
            self.screen.draw_pixel(i, int(48 / scale) - 1 + y, 0x1)

        for i in range(y + 1, int(48 / scale) - 1 + y):
            self.screen.draw_pixel(x, i, 0x2)
            self.screen.draw_pixel(int(48 / scale) - 1 + x, i, 0x8)

        self.screen.push()

    def erase_cell(self, x, y, scale):
        x *= 6
        y *= 6
        # TL Corner
        self.screen.draw_pixel(x, y, 0x0)

        # TR Corner
        self.screen.draw_pixel(int(48 / scale) - 1 + x, y, 0x0)

        # BL Corner
        self.screen.draw_pixel(x, int(48 / scale) - 1 + y, 0x0)

        # BR Corner
        self.screen.draw_pixel(int(48 / scale) - 1 + x, int(48 / scale) - 1 + y, 0x0)

        for i in range(x + 1, int(48 / scale) - 1 + x):
            self.screen.draw_pixel(i, y, 0x0)
            self.screen.draw_pixel(i, int(48 / scale) - 1 + y, 0x0)

        for i in range(y + 1, int(48 / scale) - 1 + y):
            self.screen.draw_pixel(x, i, 0x0)
            self.screen.draw_pixel(int(48 / scale) - 1 + x, i, 0x0)

        self.screen.push()

    def draw_num(self, x, y):
        val = self.minefield[x][y]
        if self.discovered[x][y]:
            return
        self.discovered[x][y] = True

        # Game Over
        if str(val) == "x":
            pass

        # Found and indicator
        if str(val) != "0":
            # print(str(val))
            self.screen.draw_text(x * 6 + 2, y * 6 + 2, str(val), push=True)

        # No indicators found
        else:
            self.erase_cell(x, y, 8)
            # Check all surrounding cells for 0s
            for i in range(-1, 2):
                for j in range(-1, 2):
                    # Don't wrap around the board horizontally
                    if (x + i) < 0 or (x + i) > 7:
                        continue

                    # Don't wrap around the board vertically
                    if (y + j) < 0 or (y + j) > 7:
                        continue

                    if str(self.minefield[x + i][y + j]) == "0":
                        self.draw_num(x + i, y + j)
                    else:
                        self.screen.draw_text(
                            (x + i) * 6 + 2,
                            (y + j) * 6 + 2,
                            str(self.minefield[x + i][y + j]),
                            push=True,
                        )
            self.draw_cursor(self.cursor[0], self.cursor[1])

    def init_screen(self):
        for row in range(0, 48, int(48 / 8)):
            for col in range(0, 48, int(48 / 8)):
                self.draw_cell(row, col, 8)

    def gen_minefield(self, scale):
        field = [[0 for j in range(scale)] for i in range(scale)]

        for i in range(10):
            coordinates = (randint(0, scale - 1), randint(0, scale - 1))

            while field[coordinates[0]][coordinates[1]] == "x":
                coordinates = (randint(0, scale - 1), randint(0, scale - 1))

            field[coordinates[0]][coordinates[1]] = "x"

        for j in range(scale):
            for i in range(scale):
                if field[i][j] != "x":
                    # Corners
                    if (i == 0) and (j == 0):
                        if field[i + 1][j] == "x":
                            field[i][j] += 1

                        if field[i + 1][j + 1] == "x":
                            field[i][j] += 1

                        if field[i][j + 1] == "x":
                            field[i][j] += 1

                    elif (i == (scale - 1)) and (j == 0):
                        if field[i - 1][j] == "x":
                            field[i][j] += 1

                        if field[i - 1][j + 1] == "x":
                            field[i][j] += 1

                        if field[i][j + 1] == "x":
                            field[i][j] += 1

                    elif (i == 0) and (j == (scale - 1)):
                        if field[i + 1][j] == "x":
                            field[i][j] += 1

                        if field[i + 1][j - 1] == "x":
                            field[i][j] += 1

                        if field[i - 1][j] == "x":
                            field[i][j] += 1

                    elif (i == (scale - 1)) and (j == (scale - 1)):
                        if field[i - 1][j] == "x":
                            field[i][j] += 1

                        if field[i - 1][j - 1] == "x":
                            field[i][j] += 1

                        if field[i][j - 1] == "x":
                            field[i][j] += 1

                    # Top Border
                    elif (j == 0) and (i >= 1) and (i < (scale - 1)):
                        if field[i - 1][j] == "x":
                            field[i][j] += 1
                        if field[i - 1][j + 1] == "x":
                            field[i][j] += 1
                        if field[i][j + 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j + 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j] == "x":
                            field[i][j] += 1

                    # Bottom Border
                    elif (j == (scale - 1)) and (i >= 1) and (i < (scale - 1)):
                        if field[i - 1][j] == "x":
                            field[i][j] += 1
                        if field[i - 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i][j - 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j]:
                            field[i][j] += 1

                    # Left Border
                    elif (i == 0) and ((j >= 1) and (j < (scale - 1))):
                        if field[i][j - 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j] == "x":
                            field[i][j] += 1
                        if field[i + 1][j + 1] == "x":
                            field[i][j] += 1
                        if field[i][j + 1] == "x":
                            field[i][j] += 1

                    # Right Border
                    elif (i == (scale - 1)) and (j >= 1) and (j < (scale - 1)):
                        if field[i][j - 1] == "x":
                            field[i][j] += 1
                        if field[i - 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i - 1][j] == "x":
                            field[i][j] += 1
                        if field[i - 1][j + 1] == "x":
                            field[i][j] += 1
                        if field[i][j + 1] == "x":
                            field[i][j] += 1

                    # Center
                    elif (
                        (i >= 1)
                        and (i < (scale - 1))
                        and (j >= 1)
                        and (j < (scale - 1))
                    ):
                        if field[i - 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i][j - 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j - 1] == "x":
                            field[i][j] += 1
                        if field[i - 1][j] == "x":
                            field[i][j] += 1
                        if field[i + 1][j] == "x":
                            field[i][j] += 1
                        if field[i - 1][j + 1] == "x":
                            field[i][j] += 1
                        if field[i][j + 1] == "x":
                            field[i][j] += 1
                        if field[i + 1][j + 1] == "x":
                            field[i][j] += 1

        print("\n")
        for j in range(scale):
            for i in range(scale):
                print(str(field[i][j]) + " ", end="")
            print("\n")

        return field

        print("\n")
        for j in range(scale):
            for i in range(scale):
                print(str(field[i][j]) + " ", end="")
                self.draw_num(i, j, str(field[i][j]))
                # if (i == 0) and (j == 0):
                #     print("c" + " ", end="")

                # elif (i == (scale - 1)) and (j == 0):
                #     print("c" + " ", end="")

                # elif (i == 0) and (j == (scale - 1)):
                #     print("c" + " ", end="")

                # elif (i == (scale - 1)) and (j == (scale - 1)):
                #     print("c" + " ", end="")

                # # Top Border
                # elif (j == 0) and (i >= 1) and (i < (scale - 1)):
                #     print("t" + " ", end="")

                # # Bottom Border
                # elif (j == (scale - 1)) and (i >= 1) and (i < (scale - 1)):
                #     print("b" + " ", end="")

                # # Left Border
                # elif (i == 0) and ((j >= 1) and (j < (scale - 1))):
                #     print("l" + " ", end="")

                # # Right Border
                # elif (i == (scale - 1)) and (j >= 1) and (j < (scale - 1)):
                #     print("r" + " ", end="")

                # # Center
                # elif (i >= 1) and (i < (scale - 1)) and (j >= 1) and (j < (scale - 1)):
                #     print(" " + " ", end="")
            print("\n")

    def draw_cursor(self, x, y, erase=False):
        x *= 6
        y *= 6

        if not erase:
            # Top and bottom lines
            for i in range(x + 1, int(48 / self.scale) - 1 + x):
                self.screen.draw_pixel(i, y, 0x1)
                self.screen.draw_pixel(i, int(48 / self.scale) - 1 + y, 0x4)

            # Left and right lines
            for i in range(y + 1, int(48 / self.scale) - 1 + y):
                self.screen.draw_pixel(x, i, 0x8)
                self.screen.draw_pixel(int(48 / self.scale) - 1 + x, i, 0x2)
        else:
            if not self.discovered[int(x / 6)][int(y / 6)] or (
                self.discovered[int(x / 6)][int(y / 6)]
                and self.minefield[int(x / 6)][int(y / 6)] != 0
            ):
                for i in range(x + 1, int(48 / self.scale) - 1 + x):
                    self.screen.draw_pixel(i, y, 0x4, combine=False)
                    self.screen.draw_pixel(
                        i, int(48 / self.scale) - 1 + y, 0x1, combine=False
                    )

                for i in range(y + 1, int(48 / self.scale) - 1 + y):
                    self.screen.draw_pixel(x, i, 0x0)
                    self.screen.draw_pixel(int(48 / self.scale) - 1 + x, i, 0x0)
                    self.screen.draw_pixel(x, i, 0x2)
                    self.screen.draw_pixel(int(48 / self.scale) - 1 + x, i, 0x8)

                # TL Corner
                self.screen.draw_pixel(x, y, 0x6)

                # TR Corner
                self.screen.draw_pixel(int(48 / self.scale) - 1 + x, y, 0xC)

                # BL Corner
                self.screen.draw_pixel(x, int(48 / self.scale) - 1 + y, 0x3)

                # BR Corner
                self.screen.draw_pixel(
                    int(48 / self.scale) - 1 + x, int(48 / self.scale) - 1 + y, 0x9
                )
            else:
                self.erase_cell(int(x / 6), int(y / 6), self.scale)

        self.screen.push()

    def toggle_flag(self, x, y):
        self.flags[x][y] = not self.flags[x][y]

        if self.flags[x][y]:
            self.screen.draw_pixel(x * 6 + 2, y * 6 + 2, 0x7)
            self.screen.draw_pixel(x * 6 + 3, y * 6 + 2, 0xD)
            self.screen.draw_pixel(x * 6 + 2, y * 6 + 3, 0x2)
        else:
            self.screen.draw_pixel(x * 6 + 2, y * 6 + 2, 0x0)
            self.screen.draw_pixel(x * 6 + 3, y * 6 + 2, 0x0)
            self.screen.draw_pixel(x * 6 + 2, y * 6 + 3, 0x0)
        self.screen.push()

    def game_over(self):
        pass
