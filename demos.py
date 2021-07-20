from seven_seg import SevenSegment
import time

NUM_SEGMENTS = 36

master = SevenSegment(
    288,
    brightness=4,
    segment_orientation_array=[
        [1, 2, 13, 14, 25, 26],
        [3, 4, 15, 16, 27, 28],
        [5, 6, 17, 18, 29, 30],
        [7, 8, 19, 20, 31, 32],
        [9, 10, 21, 22, 33, 34],
        [11, 12, 23, 24, 35, 36],
    ],
)


def circle_chase():
    master.clear()
    across = 48
    down = 6
    x_in = 0
    y_in = 0
    while True:
        for x in range(x_in, across):
            master.letter2(x, y_in, "0")
            if x > x_in:
                master.letter2(x - 1, y_in, " ")
            master.flush()
            if x < across - 1:
                time.sleep(0.05)
        for y in range(y_in, down):
            master.letter2(x, y, "0")
            if y > y_in:
                master.letter2(x, y - 1, " ")
            master.flush()
            if y < down - 1:
                time.sleep(0.05)
        for x in range(across - 1, x_in - 1, -1):
            master.letter2(x, y, "0")
            if x < across - 1:
                master.letter2(x + 1, y, " ")
            master.flush()
            if x > 0:
                time.sleep(0.05)

        if down - 1 == y_in + 1:
            break

        for y in range(down - 1, y_in, -1):
            master.letter2(x, y, "0")
            if y < down - 1:
                master.letter2(x, y + 1, " ")
            master.flush()
            # if y > 0:
            time.sleep(0.05)
            if y == y_in + 1:
                master.letter2(x, y, " ")
        x_in += 1
        y_in += 1
        across -= 1
        down -= 1


def board_test(start_x, start_y):
    master.text2(start_x, start_y + 0, "8" * 16)
    master.text2(start_x, start_y + 1, "8" * 16)
    master.text2(start_x, start_y + 2, "8" * 16)
    master.text2(start_x, start_y + 3, "8" * 16)
    master.text2(start_x, start_y + 4, "8" * 16)
    master.text2(start_x, start_y + 5, "8" * 16, flush=True)


if __name__ == "__main__":
    # master.clear()
    # board_test(0, 0)
    # time.sleep(1)
    # master.clear()
    # board_test(16, 0)
    # time.sleep(1)
    # master.clear()
    # board_test(32, 0)
    # time.sleep(1)
    # master.clear()
    circle_chase()
