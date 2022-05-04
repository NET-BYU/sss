import sys

sys.path.append("..")

from display import seven_seg as ss  # import SevenSegment
from display import game_display as gd  # import Display
import time

STARTING_X = 10
STARTING_Y = 3

TOP_SIDE_Y_OFFSET = 5
BOTTOM_Y_OFFSET = 17
HEX_SIDE_HEIGHT = 8
HEX_HALF_WIDTH = 6
HEX_HALF_HEIGHT = 8
PIXEL_FULL = 0xF
PIXEL_BOTTOM = 0x1
PIXEL_LEFT = 0x2
PIXEL_TOP = 0x4
PIXEL_RIGHT = 0x8

def draw_the_logo(screen, x, y):
    screen.draw_shape_line(x + 1, y, x + 6, y + 4, PIXEL_BOTTOM) # hex top right
    screen.draw_shape_line(x + 6, y + 4, x + 2, y + 1, PIXEL_LEFT) # hex top right 2
    screen.draw_shape_line(x + HEX_HALF_WIDTH + 1, y + TOP_SIDE_Y_OFFSET, x + HEX_HALF_WIDTH + 1, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_LEFT) # hex right side
    screen.draw_shape_line(x + HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 1, x + 1, y + HEX_HALF_HEIGHT * 2 + 1, PIXEL_TOP) # hex bottom right
    screen.draw_shape_line(x + 1, y + HEX_HALF_HEIGHT * 2 + 1, x + HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 1, PIXEL_LEFT) # hex bottom right 2
    screen.draw_shape_line(x, y + HEX_HALF_HEIGHT * 2 + 1, x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_TOP) # hex bottom left
    screen.draw_shape_line(x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, x, y + HEX_HALF_HEIGHT * 2 + 1, PIXEL_RIGHT) # hex bottom left 2
    screen.draw_shape_line(x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET, x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_RIGHT) # hex left side
    screen.draw_shape_line(x, y, x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET, PIXEL_BOTTOM) # hex top left
    screen.draw_shape_line(x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET, x, y, PIXEL_RIGHT) # hex top left 2
    screen.draw_shape_line(x - 2, y + TOP_SIDE_Y_OFFSET, x - 2, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_LEFT) # N/L
    screen.draw_shape_line(x - 1, y + TOP_SIDE_Y_OFFSET - 1, x - 1, y + TOP_SIDE_Y_OFFSET + 4, PIXEL_RIGHT) # N|
    screen.draw_pixel(x - 2, y + TOP_SIDE_Y_OFFSET + 1, PIXEL_TOP + PIXEL_RIGHT) # N
    screen.draw_pixel(x - 1, y + TOP_SIDE_Y_OFFSET + 2, PIXEL_BOTTOM + PIXEL_LEFT) # N
    screen.draw_shape_line(x, y + TOP_SIDE_Y_OFFSET, x + 3, y + TOP_SIDE_Y_OFFSET, PIXEL_TOP) # E/T
    screen.draw_shape_line(x, y + TOP_SIDE_Y_OFFSET, x, y + TOP_SIDE_Y_OFFSET + 4, PIXEL_LEFT) # E
    screen.draw_pixel(x, y + TOP_SIDE_Y_OFFSET + 2, PIXEL_TOP) # E    
    screen.draw_shape_line(x + 2, y + TOP_SIDE_Y_OFFSET, x + 2, y + TOP_SIDE_Y_OFFSET + 4, PIXEL_RIGHT) # T
    screen.draw_shape_line(x - 2, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, x - 1, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_BOTTOM) # L
    screen.draw_shape_line(x, y + HEX_HALF_HEIGHT + 2, x, y + BOTTOM_Y_OFFSET - 1, PIXEL_LEFT) # A
    screen.draw_shape_line(x + 1, y + HEX_HALF_HEIGHT + 2, x, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_RIGHT) # A
    screen.draw_pixel(x, y + HEX_HALF_HEIGHT + 1, PIXEL_BOTTOM + PIXEL_RIGHT) # A
    screen.draw_pixel(x + 1, y + HEX_HALF_HEIGHT + 1, PIXEL_BOTTOM + PIXEL_LEFT) # A
    screen.draw_shape_line(x, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT - 1, x + 3, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_TOP) # A/B
    screen.draw_shape_line(x + 2, y + HEX_HALF_HEIGHT + 1, x + 2, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_LEFT) # B
    screen.draw_shape_line(x + 2, y + HEX_HALF_HEIGHT + 1, x + 4, y + HEX_HALF_HEIGHT + 1, PIXEL_TOP) # B----
    screen.draw_shape_line(x + 3, y + HEX_HALF_HEIGHT + 1, x + 3, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_RIGHT) # B
    screen.draw_shape_line(x + 2, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, x + 3, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT, PIXEL_BOTTOM) # B
    screen.draw_pixel(x + 3, y + HEX_HALF_HEIGHT + 2, PIXEL_BOTTOM) # B
    screen.draw_pixel(x - 1, y + TOP_SIDE_Y_OFFSET - 2, PIXEL_FULL)
    screen.draw_pixel(x + 5, y + HEX_HALF_HEIGHT + 1, PIXEL_FULL)
    screen.draw_pixel(x, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 2, PIXEL_BOTTOM)
    screen.draw_pixel(x + 1, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 2, PIXEL_FULL)
    screen.push()

def welcome_netlab(screen, queue, mqtt_client):

    print("Welcome to the NET Lab")

    location = [STARTING_X, STARTING_Y]
    isLeft = False
    isDown = True
    draw_the_logo(screen, location[0], location[1])

    input_ = ""
    while input_ != b"q":

        if not queue.empty():
            input_ = queue.get(block=False)
        else:
            input_ = ""

        # if location[0] == HEX_HALF_WIDTH:
        #     isLeft = False
        # if location[0] == screen.x_width - HEX_HALF_WIDTH - 1:
        #     isLeft = True
        # if location[1] == 0:
        #     isDown = True
        # if location[1] == screen.y_height - BOTTOM_Y_OFFSET:
        #     isDown = False

        # if not isLeft:
        #     location[0] += 1
        # else:
        #     location[0] -= 1
        
        # if isDown:
        #     location[1] += 1
        # else:
        #     location[1] -= 1

        # draw_the_logo(screen, location[0], location[1])
        # time.sleep(0.05)


    screen.clear()
