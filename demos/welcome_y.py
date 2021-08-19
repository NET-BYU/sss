import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time

SIZE_MULTIPLIER = 1
STARTING_X = 3
STARTING_Y = 3

RIGHT_X_OFFSET = 6 * SIZE_MULTIPLIER # horizontal distance between right extremity and top left
BOTTOM_X_OFFSET = 2 * SIZE_MULTIPLIER # horizontal distance between bottom left extremity and top left
BOTTOM_Y_OFFSET = 5 * SIZE_MULTIPLIER # vertical distance between bottom extremity and top left
HALF_HEIGHT_OFFSET = 3 * SIZE_MULTIPLIER
HALF_WIDTH_OFFSET = 3 * SIZE_MULTIPLIER
SERIF_OFFSET = 2 * SIZE_MULTIPLIER
FULL_PIXEL = 0xF
SECTION_RIGHT = 0x8
SECTION_LEFT = 0x2

def draw_the_y(screen, tl_x, tl_y):
    screen.draw_shape_line(tl_x, tl_y, tl_x + SERIF_OFFSET, tl_y, FULL_PIXEL)  # top left serif
    screen.draw_shape_line(tl_x + RIGHT_X_OFFSET, tl_y, tl_x + RIGHT_X_OFFSET - SERIF_OFFSET, tl_y, FULL_PIXEL)    # top right serif
    screen.draw_shape_line(tl_x + BOTTOM_X_OFFSET, tl_y + BOTTOM_Y_OFFSET, tl_x + BOTTOM_X_OFFSET + SERIF_OFFSET, tl_y + BOTTOM_Y_OFFSET, FULL_PIXEL) # bottom serif
    screen.draw_shape_line(tl_x + SERIF_OFFSET/2, tl_y + 1, tl_x + HALF_WIDTH_OFFSET, tl_y + HALF_HEIGHT_OFFSET, FULL_PIXEL)  # left Y branch main
    screen.draw_shape_line(tl_x + SERIF_OFFSET/2 - 1, tl_y + 1, tl_x + HALF_WIDTH_OFFSET - 1, tl_y + HALF_HEIGHT_OFFSET, SECTION_RIGHT)  # left Y branch left border
    screen.draw_shape_line(tl_x + SERIF_OFFSET/2 + 1, tl_y + 1, tl_x + HALF_WIDTH_OFFSET + 1, tl_y + HALF_HEIGHT_OFFSET, SECTION_LEFT)  # left Y branch right border
    screen.draw_shape_line(tl_x + RIGHT_X_OFFSET - SERIF_OFFSET/2, tl_y + 1, tl_x + HALF_WIDTH_OFFSET + 1, tl_y + HALF_HEIGHT_OFFSET - 1, FULL_PIXEL)  # right Y branch main
    screen.draw_shape_line(tl_x + RIGHT_X_OFFSET - SERIF_OFFSET/2 - 1, tl_y + 1, tl_x + HALF_WIDTH_OFFSET, tl_y + HALF_HEIGHT_OFFSET - 1, SECTION_RIGHT)  # right Y branch left border
    screen.draw_shape_line(tl_x + RIGHT_X_OFFSET - SERIF_OFFSET/2 + 1, tl_y + 1, tl_x + HALF_WIDTH_OFFSET + 2, tl_y + HALF_HEIGHT_OFFSET - 1, SECTION_LEFT)  # right Y branch right border
    screen.draw_shape_line(tl_x + HALF_WIDTH_OFFSET, tl_y + HALF_HEIGHT_OFFSET + 1, tl_x + HALF_WIDTH_OFFSET, tl_y + BOTTOM_Y_OFFSET - 1, FULL_PIXEL) # Y stem main
    screen.draw_shape_line(tl_x + HALF_WIDTH_OFFSET - 1, tl_y + HALF_HEIGHT_OFFSET + 1, tl_x + HALF_WIDTH_OFFSET - 1, tl_y + BOTTOM_Y_OFFSET - 1, SECTION_RIGHT) # Y stem left border
    screen.draw_shape_line(tl_x + HALF_WIDTH_OFFSET + 1, tl_y + HALF_HEIGHT_OFFSET + 1, tl_x + HALF_WIDTH_OFFSET + 1, tl_y + BOTTOM_Y_OFFSET - 1, SECTION_LEFT) # Y stem left border
    screen.push()

def welcome_y(screen, queue):

    print("Welcome to the Y")

    location = [STARTING_X, STARTING_Y]
    isLeft = False
    isDown = True
    draw_the_y(screen, location[0], location[1])

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        if location[0] == 0:
            isLeft = False
        if location[0] == screen.x_width - 1:
            isLeft = True
        if location[1] == 0:
            isDown = True
        if location[1] == screen.y_height - 1:
            isDown = False

        if not isLeft:
            location[0] += 1
        else:
            location[0] -= 1
        
        if isDown:
            location[1] += 1
        else:
            location[1] -= 1

        draw_the_y(screen, location[0], location[1])


    screen.clear()
