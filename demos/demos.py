import sys
sys.path.append('..')

from lib import seven_seg as ss # import SevenSegment
import time
import threading
import random

NUM_SEGMENTS = 36

master = ss.SevenSegment(
    num_digits=96,
    cs_num=6,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)


master2 = ss.SevenSegment(
    num_digits=96,
    cs_num=7,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)


master3 = ss.SevenSegment(
    num_digits=96,
    cs_num=2,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)


master4 = ss.SevenSegment(
    num_digits=96,
    cs_num=3,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

master5 = ss.SevenSegment(
    num_digits=96,
    cs_num=4,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)


master6 = ss.SevenSegment(
    num_digits=96,
    cs_num=5,
    brightness=4,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)


def circle_chase(width, height, module):
    """circle chase around the board, width is number of digits across and height is how many digits tall."""
    while True:
        module.clear()
        across = width
        down = height
        x_in = 0
        y_in = 0
        while True:
            for x in range(x_in, across):
                module.letter2(x, y_in, "0")
                if x > x_in:
                    module.letter2(x - 1, y_in, " ")
                module.flush()
                if x < across - 1:
                    time.sleep(0.05)
            for y in range(y_in, down):
                module.letter2(x, y, "0")
                if y > y_in:
                    module.letter2(x, y - 1, " ")
                module.flush()
                if y < down - 1:
                    time.sleep(0.05)
            for x in range(across - 1, x_in - 1, -1):
                module.letter2(x, y, "0")
                if x < across - 1:
                    module.letter2(x + 1, y, " ")
                module.flush()
                if x > 0:
                    time.sleep(0.05)

            if down - 1 == y_in + 1:
                break

            for y in range(down - 1, y_in, -1):
                module.letter2(x, y, "0")
                if y < down - 1:
                    module.letter2(x, y + 1, " ")
                module.flush()
                # if y > 0:
                time.sleep(0.05)
                if y == y_in + 1:
                    module.letter2(x, y, " ")
            x_in += 1
            y_in += 1
            across -= 1
            down -= 1


def circle(width, height, modules, sleep_time=0.05):
    def clear_all():
        for mod in modules:
            mod.clear()

    def letter_all(x, y, letter):
        for mod in modules:
            mod.letter2(x, y, letter)
            mod.flush()

    clear_all()

    letter_all(0, 0, "0")
    time.sleep(sleep_time)

    while True:
        for x in range(1, width):
            letter_all(x - 1, 0, " ")
            letter_all(x, 0, "0")
            time.sleep(sleep_time)

        for y in range(1, height):
            letter_all(width - 1, y - 1, " ")
            letter_all(width - 1, y, "0")
            time.sleep(sleep_time)

        for x in range(width - 1, 0, -1):
            letter_all(x - 1, height - 1, "0")
            letter_all(x, height - 1, " ")
            time.sleep(sleep_time)

        for y in range(height - 1, 0, -1):
            letter_all(0, y - 1, "0")
            letter_all(0, y, " ")
            time.sleep(sleep_time)


def sweep(width, height, modules, sleep_time=0.05):
    def clear_all():
        for mod in modules:
            mod.clear()

    def column_all(col, letter):
        for mod in modules:
            mod.text2(col, 0, letter * height, False, flush=True)

    while True:
        for column in range(0, width):
            column_all(column, "8")
            time.sleep(sleep_time)

        for column in range(width - 1, -1, -1):
            column_all(column, " ")
            time.sleep(sleep_time)
        

def random_stuff(width, height, modules, sleep_time=0.05):
    def clear_all():
        for mod in modules:
            mod.clear()

    def letter_all(x, y, letter):
        for mod in modules:
            mod.letter2(x, y, letter)
            mod.flush()

    old_column = 0
    while True:
        column = random.randint(0, width - 1)
        row = random.randint(0, height - 1)
        letter = chr(random.randint(33, 126))

        letter_all(column, row, letter)
        time.sleep(sleep_time)
        letter_all(column, row, " ")


def board_test(start_x, start_y, module):
    module.text2(start_x, start_y + 0, "8" * 16)
    module.text2(start_x, start_y + 1, "8" * 16)
    module.text2(start_x, start_y + 2, "8" * 16)
    module.text2(start_x, start_y + 3, "8" * 16)
    module.text2(start_x, start_y + 4, "8" * 16)
    module.text2(start_x, start_y + 5, "8" * 16, flush=True)


def board_test_sequence(modules, sleep):
    for mod in modules:
        mod.clear()
    for mod in modules:
        board_test(0, 0, mod)
        time.sleep(sleep)
        mod.close()


if __name__ == "__main__":
    # board_test_sequence([master, master2, master3, master4], 2)

    # screen1 = threading.Thread(target=circle_chase, args=(16, 6, master))
    # screen1.daemon = True
    # screen1.start()

    # screen2 = threading.Thread(target=circle_chase, args=(16, 6, master2))
    # screen2.daemon = True
    # screen2.start()

    # screen3 = threading.Thread(target=circle_chase, args=(16, 6, master3))
    # screen3.daemon = True
    # screen3.start()

    # circle(
    #    16, 6, [master, master2, master3, master4, master5, master6], sleep_time=0.1
    # )
    # circle(
    #    16, 6, [master], sleep_time=0.1
    # )
    # random_stuff(16, 6, [master, master2, master3], sleep_time=0.08)

    # board_test_sequence([master, master2, master3, master4, master5, master6], 5)

    sweep(16, 6, [master, master2, master3])

    # circle_chase()
    # board_test(0, 0, master)
    # board_test(0, 0, master2)
    # board_test(0, 0, master3)
    # time.sleep(10000)
    # master.clear()
    # board_test(16, 0)
    # time.sleep(1)
    # master.clear()
    # board_test(32, 0)
    # time.sleep(1)
    # master.clear()
    # circle_chase()
    # master.clear()
    # master.text2(0,5, "b",flush=True)
