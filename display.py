from lib import seven_seg as ss  # import SevenSegment
from lib import game_display as gd  # import Display
from loguru import logger

bright = 3

# panel0 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=12,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel1 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=13,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel2 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=2,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel3 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=3,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel4 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=4,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel5 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=5,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel6 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=6,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel7 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=7,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel8 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=14,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel9 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=9,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel10 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=10,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

# panel11 = ss.SevenSegment(
#     num_digits=96,
#     cs_num=11,
#     brightness=bright,
#     segment_orientation_array=[
#         [1, 2],
#         [3, 4],
#         [5, 6],
#         [7, 8],
#         [9, 10],
#         [11, 12],
#     ],
# )

def create_screen():

    panel0 = ss.SevenSegment(
    num_digits=96,
    cs_num=12,
    brightness=bright,
    segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel1 = ss.SevenSegment(
        num_digits=96,
        cs_num=13,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel2 = ss.SevenSegment(
        num_digits=96,
        cs_num=2,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel3 = ss.SevenSegment(
        num_digits=96,
        cs_num=3,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel4 = ss.SevenSegment(
        num_digits=96,
        cs_num=4,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel5 = ss.SevenSegment(
       num_digits=96,
       cs_num=5,
       brightness=bright,
       segment_orientation_array=[
           [1, 2],
           [3, 4],
           [5, 6],
           [7, 8],
           [9, 10],
           [11, 12],
       ],
    )

    panel6 = ss.SevenSegment(
        num_digits=96,
        cs_num=6,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel7 = ss.SevenSegment(
        num_digits=96,
        cs_num=7,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel8 = ss.SevenSegment(
        num_digits=96,
        cs_num=14,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    panel9 = ss.SevenSegment(
       num_digits=96,
       cs_num=9,
       brightness=bright,
       segment_orientation_array=[
           [1, 2],
           [3, 4],
           [5, 6],
           [7, 8],
           [9, 10],
           [11, 12],
       ],
    )

    panel10 = ss.SevenSegment(
       num_digits=96,
       cs_num=10,
       brightness=bright,
       segment_orientation_array=[
           [1, 2],
           [3, 4],
           [5, 6],
           [7, 8],
           [9, 10],
           [11, 12],
       ],
    )

    panel11 = ss.SevenSegment(
        num_digits=96,
        cs_num=11,
        brightness=bright,
        segment_orientation_array=[
            [1, 2],
            [3, 4],
            [5, 6],
            [7, 8],
            [9, 10],
            [11, 12],
        ],
    )

    #5,9,10
    #4,11,8
    #2,3,7
    #0,1,6
    screen = gd.Display(
        [[panel5, panel10, panel9],[panel4, panel11, panel8], [panel2, panel3, panel7], [panel0, panel1, panel6]],
        48,
        48,
    )

    # screen = gd.Display(
    #    [[panel9]],
    #    16,
    #    12,
    # )

    return screen

def close_screen(screen):
    logger.info("Closing screen", screen.board_objects)
    # panel4.close()
    # panel11.close()
    # panel8.close()
    # panel2.close()
    # panel3.close()
    # panel7.close()
    # panel0.close()
    # panel1.close()
    # panel6.close()
    for row in range(len(screen.board_objects)):
        for panel in range(len(screen.board_objects[row])):
            screen.board_objects[row][panel].close()
