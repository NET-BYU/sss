from game_display import Display
from seven_seg import SevenSegment
import time

panel = SevenSegment(
    num_digits=96,
    cs_num=0,
    brightness=2,
    segment_orientation_array=[
        [1, 2],
        [3, 4],
        [5, 6],
        [7, 8],
        [9, 10],
        [11, 12],
    ],
)

panel.clear()

display = Display([[panel]],16,12)

def check_pixel_drawing():
    for x in range(16):
        display.draw_pixel(x,0,x)
        display.draw_pixel(x,3,x)
    display.push()

def check_hline_drawing_bottom():
    for y in range(12):
        display.draw_hline(0,y,16-y,top=False)
    display.push()

def check_hline_drawing_top():
    for y in range(12):
        display.draw_hline(0,y,16-y,top=True)
    display.push()

def check_vline_drawing_left():
    for x in range(16):
        display.draw_vline(x,0,12)
    display.push()

def check_vline_drawing_right():
    for x in range(16):
        display.draw_vline(x,0,12,left=False)
    display.push()

if __name__ == "__main__":
    display.draw_box_line(0,0,4,11,push=True)
