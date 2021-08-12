import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time, random


def letters(screen, queue):

    print("LETTERS")

    width = 16
    height = 6
    sleep_time = 0.075

    modules = [j for sub in screen.board_objects for j in sub]

    def letter_all(clear=False):
        for mod in modules:
            x = random.randint(0, width - 1)
            y = random.randint(0, height - 1)
            letter = chr(random.randint(33, 126))
            if clear:
                mod.letter2(x, y, letter)
            else:
                mod.letter2(x, y, " ")
            mod.flush()
        time.sleep(sleep_time)

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        letter_all()
        letter_all(clear=True)

    screen.clear()
