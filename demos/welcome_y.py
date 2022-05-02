import sys

sys.path.append("..")

from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
import time

SIZE_MULTIPLIER = 1 # try 2 for better proportionality??
STARTING_X = 0
STARTING_Y = 10

RIGHT_X_OFFSET = 6 * SIZE_MULTIPLIER # horizontal distance between right extremity and top left
BOTTOM_X_OFFSET = 2 * SIZE_MULTIPLIER # horizontal distance between bottom left extremity and top left
BOTTOM_Y_OFFSET = 5 * SIZE_MULTIPLIER # vertical distance between bottom extremity and top left
HALF_HEIGHT_OFFSET = 3 * SIZE_MULTIPLIER
HALF_WIDTH_OFFSET = 3 * SIZE_MULTIPLIER
SERIF_OFFSET = 2 * SIZE_MULTIPLIER
FULL_PIXEL = 0xF
SECTION_RIGHT = 0x8
SECTION_LEFT = 0x2

def draw_the_y(screen, x, y, draw):
    if not draw:
        screen.draw_shape_line(x, y, x + SERIF_OFFSET, y, 0, combine = False)  # top left serif
        screen.draw_shape_line(x + RIGHT_X_OFFSET, y, x + RIGHT_X_OFFSET - SERIF_OFFSET, y, 0)    # top right serif
        screen.draw_shape_line(x + BOTTOM_X_OFFSET, y + BOTTOM_Y_OFFSET, x + BOTTOM_X_OFFSET + SERIF_OFFSET, y + BOTTOM_Y_OFFSET, 0) # bottom serif
        screen.draw_shape_line(x + SERIF_OFFSET//2, y + 1, x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET, 0)  # left Y branch main
        screen.draw_shape_line(x + SERIF_OFFSET//2 - 1, y + 1, x + HALF_WIDTH_OFFSET - 1, y + HALF_HEIGHT_OFFSET, 0)  # left Y branch left border
        screen.draw_shape_line(x + SERIF_OFFSET//2 + 1, y + 1, x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET, 0)  # left Y branch right border
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2, y + 1, x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET - 1, 0)  # right Y branch main
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2 - 1, y + 1, x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET - 1, 0)  # right Y branch left border
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2 + 1, y + 1, x + HALF_WIDTH_OFFSET + 2, y + HALF_HEIGHT_OFFSET - 1, 0)  # right Y branch right border
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET, y + BOTTOM_Y_OFFSET - 1, 0) # Y stem main
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET - 1, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET - 1, y + BOTTOM_Y_OFFSET - 1, 0) # Y stem left border
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET + 1, y + BOTTOM_Y_OFFSET - 1, 0) # Y stem left border
    else:
        screen.draw_shape_line(x, y, x + SERIF_OFFSET, y, FULL_PIXEL, combine = False)  # top left serif
        screen.draw_shape_line(x + RIGHT_X_OFFSET, y, x + RIGHT_X_OFFSET - SERIF_OFFSET, y, FULL_PIXEL)    # top right serif
        screen.draw_shape_line(x + BOTTOM_X_OFFSET, y + BOTTOM_Y_OFFSET, x + BOTTOM_X_OFFSET + SERIF_OFFSET, y + BOTTOM_Y_OFFSET, FULL_PIXEL) # bottom serif
        screen.draw_shape_line(x + SERIF_OFFSET//2, y + 1, x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET, FULL_PIXEL)  # left Y branch main
        screen.draw_shape_line(x + SERIF_OFFSET//2 - 1, y + 1, x + HALF_WIDTH_OFFSET - 1, y + HALF_HEIGHT_OFFSET, SECTION_RIGHT)  # left Y branch left border
        screen.draw_shape_line(x + SERIF_OFFSET//2 + 1, y + 1, x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET, SECTION_LEFT)  # left Y branch right border
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2, y + 1, x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET - 1, FULL_PIXEL)  # right Y branch main
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2 - 1, y + 1, x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET - 1, SECTION_RIGHT)  # right Y branch left border
        screen.draw_shape_line(x + RIGHT_X_OFFSET - SERIF_OFFSET//2 + 1, y + 1, x + HALF_WIDTH_OFFSET + 2, y + HALF_HEIGHT_OFFSET - 1, SECTION_LEFT)  # right Y branch right border
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET, y + BOTTOM_Y_OFFSET - 1, FULL_PIXEL) # Y stem main
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET - 1, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET - 1, y + BOTTOM_Y_OFFSET - 1, SECTION_RIGHT) # Y stem left border
        screen.draw_shape_line(x + HALF_WIDTH_OFFSET + 1, y + HALF_HEIGHT_OFFSET + 1, x + HALF_WIDTH_OFFSET + 1, y + BOTTOM_Y_OFFSET - 1, SECTION_LEFT) # Y stem left border
    screen.push()

def welcome_y(screen, queue, mqtt_client):

    print("Welcome to the Y")

    location = [STARTING_X, STARTING_Y]
    isLeft = False
    isDown = True
    draw_the_y(screen, location[0], location[1], True)

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
            print("Got something from the queue:", input_)
        else:
            input_ = ""

        if location[0] == 0:
            isLeft = False
        if location[0] == screen.x_width - RIGHT_X_OFFSET - 1:
            isLeft = True
        if location[1] == 0:
            isDown = True
        if location[1] == screen.y_height - BOTTOM_Y_OFFSET - 1:
            isDown = False
        
        draw_the_y(screen, location[0], location[1], False)


        if not isLeft:
            location[0] += 1
        else:
            location[0] -= 1

        if isDown:
            location[1] += 1
        else:
            location[1] -= 1
	
        draw_the_y(screen, location[0], location[1], True)
        time.sleep(0.04)


    screen.clear()
