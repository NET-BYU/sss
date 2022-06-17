from enum import Enum
import random
from demos.utils import get_all_from_queue
from os.path import exists


class Tetris:
    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = None  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen

        # init demo/game specific variables here
        self.top_left_block = 6
        self.top_right_block = 12
        self.bottom_left_block = 3
        self.bottom_right_block = 9

        self.board_width = 20
        self.board_height = 40
        self.border_height = 42

        self.x_offset = 5
        self.y_offset = 3

        self.score = 0
        self.level = 1
        self.lines = 0

        self.drop_rate = 12
        self.shift_rate = 1

        self.high_score_file_path = "demos/tetris/high_scores.txt"

        if not exists(self.high_score_file_path):
            file = open(self.high_score_file_path, "x")
            for i in range(5):
                file.write("AA 0\n")
            file.close()

    def run(self):
        # Create generator here

        while True:

            self.init_screen()
            self.init_scoreboard()
            self.draw_logo()

            self.score = 0
            self.level = 1
            self.lines = 0

            next_shape = random.choice(list(self.Shape))

            while not self.is_game_over():

                if self.level == 2:
                    self.drop_rate = 10
                if self.level == 3:
                    self.drop_rate = 8
                if self.level == 4:
                    self.drop_rate = 6
                if self.level == 5:
                    self.drop_rate = 5
                if self.level == 6:
                    self.drop_rate = 4
                if self.level == 7:
                    self.drop_rate = 3
                if self.level == 8:
                    self.drop_rate = 2

                shape = next_shape
                next_shape = random.choice(list(self.Shape))

                if next_shape == shape:
                    next_shape = random.choice(list(self.Shape))

                shape_location = self.init_shape_location(shape)

                next_shape_location = self.init_shape_location(next_shape)

                for i in range(len(next_shape_location)):
                    next_shape_location[i] = (
                        next_shape_location[i][0] + 22,
                        next_shape_location[i][1] + 2,
                    )

                self.draw_shape(next_shape_location)
                self.draw_shape(shape_location)
                self.screen.push()
                yield

                go_right_init = 0
                go_left_init = 0
                auto_right = False
                auto_left = False
                accelerate = False
                rotate = 0

                num_iterations = 0

                is_falling = self.is_falling(shape_location)
                last_chance = True

                while is_falling or last_chance:

                    if not is_falling:
                        last_chance = False

                    go_right = go_right_init
                    go_left = go_left_init
                    left_p = 0
                    left_r = 0
                    right_p = 0
                    right_r = 0
                    rotate = 0

                    for input in get_all_from_queue(self.input_queue):
                        if input == "LEFT_P":
                            left_p += 1
                            auto_left = True
                        if input == "LEFT_R":
                            left_r += 1
                            auto_left = False
                        if input == "RIGHT_P":
                            right_p += 1
                            auto_right = True
                        if input == "RIGHT_R":
                            right_r += 1
                            auto_right = False
                        if input == "UP_P":
                            rotate += 1
                        if input == "DOWN_P":
                            accelerate = True
                        if input == "DOWN_R":
                            accelerate = False

                    go_left += left_p
                    go_right += right_p

                    if auto_left:
                        go_left = 1
                    if auto_right:
                        go_right = 1

                    prev_shape_location = shape_location.copy()

                    if num_iterations % self.shift_rate == self.shift_rate - 1:
                        if rotate > 0 and shape is not self.Shape.O:
                            shape_location = self.rotate_shape(shape_location)

                        shape_location = self.shift_shape(
                            shape_location, go_left, go_right
                        )

                    if shape_location != prev_shape_location:
                        self.draw_shape(prev_shape_location, erase=True)
                        self.draw_shape(shape_location)
                        prev_shape_location = shape_location.copy()

                    is_falling = self.is_falling(shape_location)

                    if (
                        num_iterations % self.drop_rate == self.drop_rate - 1
                        or accelerate
                    ) and is_falling:
                        shape_location = self.drop_shape(shape_location)
                        self.draw_shape(prev_shape_location, erase=True)
                        self.draw_shape(shape_location)
                        if accelerate:
                            self.score += 5 * self.level
                            self.update_scoreboard(score=True)

                    self.screen.push()

                    num_iterations += 1

                    yield

                #### UPDATE BOARD
                num_lines = self.update_board()
                self.screen.push()
                yield

                if num_lines > 0:

                    self.update_score(num_lines)

                    #### FILL IN EMPTY ROWS
                    self.fill_empty_rows()
                    self.screen.push()
                    yield

                self.draw_shape(next_shape_location, erase=True)
                self.screen.push()
                yield

            self.draw_game_over_screen()
            self.screen.push()

            for i in range(10):
                yield

            if self.is_high_score():
                self.draw_high_score_screen()
                self.screen.push()

                initials_done = False
                first_letter = True
                iterations = 0
                x = 33
                y = 20
                letter = "A"
                while not initials_done:
                    for input in get_all_from_queue(self.input_queue):
                        if input == "DOWN_R":
                            char = ord(letter) + 1
                            if char > 90 and char != ord("i") and char != ord("v"):
                                char = 65
                            letter = chr(char)
                            if letter == "H":
                                letter = "h"
                            if letter == "U":
                                letter = "u"
                            if letter == "v":
                                letter = "V"
                            if letter == "i":
                                letter = "I"
                            self.screen.draw_text(x, y, letter, combine=False)
                        if input == "UP_R":
                            char = ord(letter) - 1
                            if char < 65:
                                char = 90
                            letter = chr(char)
                            if letter == "H":
                                letter = "h"
                            if letter == "U":
                                letter = "u"
                            if letter == "t":
                                letter = "T"
                            if letter == "g":
                                letter = "G"
                            self.screen.draw_text(x, y, letter, combine=False)
                        if input == "RIGHT_R" or input == "LEFT_R":
                            first_letter = not first_letter
                        if input == "START_R":
                            initials_done = True
                            break

                    if iterations % 4 == 0:
                        if first_letter:
                            x = 33
                        else:
                            x = 34
                        letter = self.get_letter(x, y)
                        self.screen.draw_pixel(x, y, 0)
                        self.screen.draw_pixel(x, y + 1, 0)
                        self.screen.push()
                    if iterations % 4 == 2 or initials_done:
                        self.screen.draw_text(x, y, letter, combine=False)
                        self.screen.push()

                    iterations += 1
                    yield

                self.update_highscoreboard()

            self.display_high_scores()
            self.screen.push()

            start_over = False
            while not start_over:
                for input in get_all_from_queue(self.input_queue):
                    if input == "START_R":
                        start_over = True
                yield

            self.screen.clear()
            self.screen.push()
            yield

    class Shape(Enum):
        O = 1
        I = 2
        S = 3
        Z = 4
        L = 5
        J = 6
        T = 7

    def is_high_score(self):
        with open(self.high_score_file_path, "r") as scores:
            for score in scores:
                if self.score > int(score.split()[1]):
                    return True
        return False

    def update_highscoreboard(self):
        initials = self.get_letter(33, 20) + self.get_letter(34, 20)
        new_score = initials + " " + str(self.score) + "\n"
        position = 0
        lines = []
        with open(self.high_score_file_path, "r") as scores:
            lines = scores.readlines()
            for score in lines:
                if self.score > int(score.split()[1]):
                    break
                else:
                    position += 1
        lines.pop(4)
        lines.insert(position, new_score)
        with open(self.high_score_file_path, "w") as scores:
            scores.writelines(lines)

    def update_score(self, num_lines):
        points = 0
        if num_lines == 1:
            points = 40
        if num_lines == 2:
            points = 100
        if num_lines == 3:
            points = 300
        if num_lines == 4:
            points = 1200

        self.score += points * self.level

        update_level = False

        index_before = self.lines % 10
        self.lines += num_lines
        index_after = self.lines % 10

        if index_before > index_after:
            self.level += 1
            update_level = True

        self.update_scoreboard(score=True, lines=True, level=update_level)

    def update_scoreboard(self, score=False, lines=False, level=False):
        if score:
            score_string = str(self.score)
            output_string = (10 - len(score_string)) * "." + score_string
            self.screen.draw_text(34, 22, output_string, push=True)
        if lines:
            lines_string = str(self.lines)
            output_string = (10 - len(lines_string)) * "." + lines_string
            self.screen.draw_text(34, 26, output_string, push=True)
        if level:
            level_string = str(self.level)
            output_string = (10 - len(level_string)) * "." + level_string
            self.screen.draw_text(34, 18, output_string, push=True)

    def is_game_over(self):
        for x in range(self.board_width):
            if self.screen.get_pixel(x + self.x_offset, self.y_offset + 1) != 0:
                return True
        return False

    def fill_empty_rows(self):
        drop_complete = False
        while not drop_complete:
            drop_complete = True
            for y in range(self.y_offset + 1, self.board_height + self.y_offset, 2):
                drop_row = True
                empty_row = True
                for x in range(self.x_offset, self.board_width + self.x_offset, 2):
                    if self.screen.get_pixel(x, y + 2) != 0:
                        drop_row = False
                        break
                    if self.screen.get_pixel(x, y) != 0:
                        empty_row = False
                if drop_row and not empty_row:
                    drop_complete = False
                    for x in range(self.x_offset, self.board_width + self.x_offset, 1):
                        pixel = self.screen.get_pixel(x, y)
                        pixel2 = self.screen.get_pixel(x, y + 1)
                        self.screen.draw_pixel(x, y, 0)
                        self.screen.draw_pixel(x, y + 1, 0)
                        self.screen.draw_pixel(x, y + 2, pixel)
                        self.screen.draw_pixel(x, y + 3, pixel2)

    def update_board(self):
        num_rows = 0
        for y in range(self.y_offset + 1, self.board_height + self.y_offset, 2):
            erase_row = True
            for x in range(self.x_offset, self.board_width + self.x_offset, 2):
                if self.screen.get_pixel(x, y) == 0:
                    erase_row = False
                    break
            if erase_row:
                num_rows += 1
                for x in range(self.x_offset, self.board_width + self.x_offset, 1):
                    self.screen.draw_pixel(x, y, 0, combine=False)
        return num_rows

    def is_falling(self, shape_location):
        for coordinate in shape_location:
            position = (coordinate[0], coordinate[1] + 2)
            if self.screen.get_pixel(coordinate[0], coordinate[1] + 2) != 0:
                if position not in shape_location:
                    return False
        return True

    def rotate_shape(self, shape_location):

        old_location = shape_location.copy()
        origin = shape_location[2]
        for i in range(len(shape_location)):
            shape_location[i] = (
                shape_location[i][0] - origin[0],
                shape_location[i][1] - origin[1],
            )
            shape_location[i] = (-1 * shape_location[i][1], shape_location[i][0])
            shape_location[i] = (
                shape_location[i][0] + origin[0],
                shape_location[i][1] + origin[1],
            )
            if (
                shape_location[i][0] >= self.board_width + self.x_offset - 1
                or shape_location[i][0] < self.x_offset
            ):
                return old_location
            if (
                shape_location[i][1] >= self.board_height + self.y_offset - 1
                or shape_location[i][1] < self.y_offset
            ):
                return old_location
            if self.screen.get_pixel(shape_location[i][0], shape_location[i][1]) != 0:
                if shape_location[i] not in old_location:
                    return old_location
        return shape_location

    def drop_shape(self, shape_location):
        offset = 2
        for i in range(len(shape_location)):
            shape_location[i] = (shape_location[i][0], shape_location[i][1] + offset)
        return shape_location

    def shift_shape(self, shape_location, left, right):
        if left == right:
            return shape_location
        offset = (right - left) * 2
        new_location = shape_location.copy()
        for i in range(len(shape_location)):
            new_loc = (shape_location[i][0] + offset, shape_location[i][1])
            if (
                new_loc[0] >= self.board_width + self.x_offset - 1
                or new_loc[0] < self.x_offset
            ):
                return shape_location
            if self.screen.get_pixel(new_loc[0], new_loc[1]) != 0:
                if new_loc not in shape_location:
                    return shape_location
            new_location[i] = new_loc
        return new_location

    def draw_shape(self, location, erase=False):
        for coordinate in location:
            self.draw_brick(coordinate[0], coordinate[1], erase)

    def draw_brick(self, x, y, erase=False):
        if y > 3:
            if erase:
                self.screen.draw_pixel(x, y, 0, combine=True, push=False)
                self.screen.draw_pixel(x + 1, y, 0, combine=True, push=False)
                self.screen.draw_pixel(x, y + 1, 0, combine=True, push=False)
                self.screen.draw_pixel(x + 1, y + 1, 0, combine=True, push=False)
            else:
                self.screen.draw_pixel(
                    x, y, self.top_left_block, combine=True, push=False
                )
                self.screen.draw_pixel(
                    x + 1, y, self.top_right_block, combine=True, push=False
                )
                self.screen.draw_pixel(
                    x, y + 1, self.bottom_left_block, combine=True, push=False
                )
                self.screen.draw_pixel(
                    x + 1, y + 1, self.bottom_right_block, combine=True, push=False
                )

    def init_shape_location(self, shape):
        if shape is self.Shape.O:
            return [(11, 4), (13, 4), (11, 6), (13, 6)]
        if shape is self.Shape.I:
            return [(11, 4), (15, 4), (13, 4), (17, 4)]
        if shape is self.Shape.S:
            return [(11, 4), (13, 6), (11, 6), (13, 8)]
        if shape is self.Shape.Z:
            return [(11, 4), (13, 4), (13, 6), (15, 6)]
        if shape is self.Shape.L:
            return [(11, 4), (11, 6), (13, 4), (15, 4)]
        if shape is self.Shape.J:
            return [(11, 4), (15, 4), (13, 4), (15, 6)]
        if shape is self.Shape.T:
            return [(11, 4), (15, 4), (13, 4), (13, 6)]

    def init_screen(self):
        full_pixel = 15

        for x in range(self.board_width):
            self.screen.draw_pixel(
                x + self.x_offset, self.y_offset, full_pixel, combine=True, push=False
            )
            self.screen.draw_pixel(
                x + self.x_offset,
                self.screen.y_height - self.y_offset - 1,
                full_pixel,
                combine=True,
                push=False,
            )
        self.screen.push()
        for y in range(self.border_height):
            self.screen.draw_pixel(
                self.x_offset - 1,
                y + self.y_offset,
                full_pixel,
                combine=True,
                push=False,
            )
            self.screen.draw_pixel(
                self.x_offset + self.board_width,
                y + self.y_offset,
                full_pixel,
                combine=True,
                push=False,
            )
        self.screen.push()

    def draw_game_over_screen(self):
        self.screen.clear()
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 8, "GAME OVER"
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4, (self.screen.y_height // 2) - 6, "---------"
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 4,
            (self.screen.y_height // 2) - 4,
            "SCORE " + str(self.score),
        )

    def draw_high_score_screen(self):
        self.screen.clear()
        self.screen.draw_text(
            (self.screen.x_width // 3),
            (self.screen.y_height // 2) - 8,
            "NEW hIGh SCORE",
        )
        self.screen.draw_text(
            (self.screen.x_width // 3) - 2,
            (self.screen.y_height // 2) - 6,
            "--------------------",
        )
        self.screen.draw_text(
            (self.screen.x_width // 3) - 4,
            (self.screen.y_height // 2) - 4,
            "ENTER YOuR INITIALS: " + "AA",
        )

    def display_high_scores(self):
        self.screen.clear()
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 3) - 4,
            "hIGh SCORES",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 12,
            (self.screen.y_height // 3) + 26,
            "PRESS START TO PLAY AGAIN",
        )
        self.screen.draw_text(
            (self.screen.x_width // 2) - 5,
            (self.screen.y_height // 3) - 2,
            "-----------",
        )
        with open(self.high_score_file_path, "r") as scores:
            offset = 0
            for score in scores:
                score = score.strip()
                self.screen.draw_text(
                    (self.screen.x_width // 2) - (len(score) // 2),
                    (self.screen.y_height // 3) + offset,
                    score,
                )
                offset += 4

    def init_scoreboard(self):
        full_pixel = 15
        self.screen.draw_hline(28, 3, 17)
        self.screen.draw_hline(28, 15, 17)
        self.screen.draw_hline(28, 17, 17)
        self.screen.draw_hline(28, 21, 17)
        self.screen.draw_hline(28, 25, 17)
        self.screen.draw_hline(28, 29, 17)
        self.screen.draw_vline(28, 3, 12)
        self.screen.draw_vline(45, 3, 12)
        self.screen.draw_vline(28, 17, 12)
        self.screen.draw_vline(45, 17, 12)

        self.screen.push()

        self.screen.draw_text(29, 12, "NEXT", push=True)
        self.screen.draw_text(29, 18, "LEVEL", push=True)
        self.screen.draw_text(29, 22, "SCORE", push=True)
        self.screen.draw_text(29, 26, "LINES", push=True)

        self.screen.draw_text(34, 18, ".........1", push=True)
        self.screen.draw_text(34, 22, ".........0", push=True)
        self.screen.draw_text(34, 26, ".........0", push=True)

    def draw_logo(self):
        full_pixel = 15

        # T
        self.screen.draw_pixel(29, 32, full_pixel)
        self.screen.draw_pixel(30, 32, full_pixel)
        self.screen.draw_pixel(31, 32, full_pixel)
        self.screen.draw_pixel(30, 32, full_pixel)
        self.screen.draw_pixel(30, 33, full_pixel)
        self.screen.draw_pixel(30, 34, full_pixel)
        self.screen.draw_pixel(30, 35, full_pixel)
        self.screen.draw_pixel(30, 36, full_pixel)
        self.screen.draw_pixel(30, 37, full_pixel)
        # E
        self.screen.draw_pixel(33, 32, full_pixel)
        self.screen.draw_pixel(34, 32, 6)
        self.screen.draw_pixel(33, 34, full_pixel)
        self.screen.draw_pixel(33, 37, full_pixel)
        self.screen.draw_pixel(34, 37, full_pixel)
        self.screen.draw_pixel(35, 37, 3)
        self.screen.draw_pixel(32, 32, full_pixel)
        self.screen.draw_pixel(32, 33, full_pixel)
        self.screen.draw_pixel(32, 34, full_pixel)
        self.screen.draw_pixel(32, 35, full_pixel)
        self.screen.draw_pixel(32, 36, full_pixel)
        self.screen.draw_pixel(32, 37, full_pixel)
        # T
        self.screen.draw_pixel(35, 32, full_pixel)
        self.screen.draw_pixel(36, 32, full_pixel)
        self.screen.draw_pixel(37, 32, full_pixel)
        self.screen.draw_pixel(36, 32, full_pixel)
        self.screen.draw_pixel(36, 33, full_pixel)
        self.screen.draw_pixel(36, 34, full_pixel)
        self.screen.draw_pixel(36, 35, full_pixel)
        self.screen.draw_pixel(36, 36, full_pixel)
        self.screen.draw_pixel(36, 37, full_pixel)
        # R
        self.screen.draw_pixel(38, 32, full_pixel)
        self.screen.draw_pixel(38, 33, full_pixel)
        self.screen.draw_pixel(38, 34, full_pixel)
        self.screen.draw_pixel(38, 35, full_pixel)
        self.screen.draw_pixel(38, 36, full_pixel)
        self.screen.draw_pixel(38, 37, full_pixel)
        self.screen.draw_pixel(39, 32, full_pixel)
        self.screen.draw_pixel(40, 32, 6)
        self.screen.draw_pixel(39, 33, 8)
        self.screen.draw_pixel(39, 34, full_pixel)
        self.screen.draw_pixel(40, 34, 3)
        self.screen.draw_pixel(40, 35, full_pixel)
        self.screen.draw_pixel(41, 36, 3)
        self.screen.draw_pixel(41, 37, full_pixel)
        # I
        self.screen.draw_pixel(41, 32, full_pixel)
        self.screen.draw_pixel(41, 33, full_pixel)
        self.screen.draw_pixel(41, 34, full_pixel)
        self.screen.draw_pixel(41, 35, full_pixel)
        # S
        self.screen.draw_pixel(42, 32, full_pixel)
        self.screen.draw_pixel(43, 32, full_pixel)
        self.screen.draw_pixel(44, 32, full_pixel)
        self.screen.draw_pixel(42, 37, full_pixel)
        self.screen.draw_pixel(43, 37, full_pixel)
        self.screen.draw_pixel(44, 37, full_pixel)
        self.screen.draw_pixel(42, 33, 12)
        self.screen.draw_pixel(44, 36, 3)
        self.screen.draw_pixel(43, 34, full_pixel)
        self.screen.draw_pixel(43, 35, full_pixel)

        self.screen.push()

    def get_letter(self, x, y):
        pixel1 = self.screen.get_pixel(x, y)
        pixel2 = self.screen.get_pixel(x, y + 1)
        if pixel1 == 15 and pixel2 == 14:
            return "A"
        if pixel1 == 3 and pixel2 == 15:
            return "B"
        if pixel1 == 6 and pixel2 == 3:
            return "C"
        if pixel1 == 9 and pixel2 == 15:
            return "D"
        if pixel1 == 7 and pixel2 == 7:
            return "E"
        if pixel1 == 7 and pixel2 == 6:
            return "F"
        if pixel1 == 6 and pixel2 == 11:
            return "G"
        if pixel1 == 3 and pixel2 == 14:
            return "h"
        if pixel1 == 2 and pixel2 == 2:
            return "I"
        if pixel1 == 8 and pixel2 == 11:
            return "J"
        if pixel1 == 7 and pixel2 == 14:
            return "K"
        if pixel1 == 2 and pixel2 == 3:
            return "L"
        if pixel1 == 4 and pixel2 == 10:
            return "M"
        if pixel1 == 14 and pixel2 == 10:
            return "N"
        if pixel1 == 14 and pixel2 == 11:
            return "O"
        if pixel1 == 15 and pixel2 == 6:
            return "P"
        if pixel1 == 15 and pixel2 == 5:
            return "Q"
        if pixel1 == 14 and pixel2 == 2:
            return "R"
        if pixel1 == 7 and pixel2 == 13:
            return "S"
        if pixel1 == 3 and pixel2 == 7:
            return "T"
        if pixel1 == 0 and pixel2 == 11:
            return "u"
        if pixel1 == 10 and pixel2 == 11:
            return "V"
        if pixel1 == 10 and pixel2 == 1:
            return "W"
        if pixel1 == 11 and pixel2 == 14:
            return "X"
        if pixel1 == 11 and pixel2 == 13:
            return "Y"
        if pixel1 == 13 and pixel2 == 7:
            return "Z"
        return None

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass
