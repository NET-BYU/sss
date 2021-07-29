from seven_seg import SevenSegment
from game_display import Display
from time import sleep
# import keyboard

SCREEN_Y = 12
SCREEN_X = 48

a = ""

panel = SevenSegment(
    num_digits=288,
    cs_num=2,
    brightness=2,
    segment_orientation_array=[
        [1, 2, 13, 14, 25, 26],
        [3, 4, 15, 16, 27, 28],
        [5, 6, 17, 18, 29, 30],
        [7, 8, 19, 20, 31, 32],
        [9, 10, 21, 22, 33, 34],
        [11, 12, 23, 24, 35, 36],
    ],
)

screen = Display(panel, 48, 12)

paddle = [23, 24, 25]
ball = (SCREEN_X / 2, SCREEN_Y / 2)
bricks = []
score = 0


def checkboard_screensaver():
    screen.board_object.clear()
    while True:
        # screen.board_object.clear()
        for x in range(48):
            for y in range(12):
                if y % 2 == 0:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=True)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=True)
        # screen.push()
        # sleep(3)
        # screen.board_object.clear()
        for x in range(48):
            for y in range(12):
                if y % 2:
                    if x % 2:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=True)
                else:
                    if x % 2 == 0:
                        screen.draw_pixel(x, y, 0xf, combine=False, push=True)
        screen.push()
        # sleep(3)


def breakout():
    pass
    

    # while True:
    #     if keyboard.read_key() == "p":
    #         print("You pressed p")
    #         break

def main():
    breakout()
    pass


if __name__ == "__main__":
    main()
# while True:
#     keyboard.on_press_key("p", lambda _:print("You pressed p"))
