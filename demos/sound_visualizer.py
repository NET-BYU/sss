from lib import game_functions
import random
import numpy as np


def sound_visualizer(display, queue, sound_frames, fps):
    tick = game_functions.frameRate(fps)
    bottom = display.y_height - 1
    # Display first frame
    for x in range(display.x_width):
        display.draw_shape_line(x, bottom, x, bottom - sound_frames[0][x], 15)
    display.push()
    next(tick)
    # Display the rest of ticks
    input = ""
    for frame_num in range(1, len(sound_frames)):
        if not queue.empty():
            input = queue.get(block=False)
            if input == b"q":
                display.clear()
                return

        for x in range(display.x_width):
            if sound_frames[frame_num][x] > sound_frames[frame_num - 1][x]:
                display.draw_shape_line(
                    x,
                    bottom - sound_frames[frame_num - 1][x],
                    x,
                    bottom - sound_frames[frame_num][x],
                    15,
                )
            else:
                display.draw_shape_line(
                    x,
                    bottom - sound_frames[frame_num - 1][x],
                    x,
                    bottom - sound_frames[frame_num][x],
                    0,
                )
        display.push()
        next(tick)


def sound_visualizer_run(display, queue):
    input = ""
    while True:
        if not queue.empty():
            input = queue.get(block=False)
            if input == b"q":
                display.clear()
                return
            break
    with open(
        "/home/pi/raspi_seven_seg/lib/bensound-" + input.decode() + ".npy", "rb"
    ) as f:
        frames = np.load(f)
    sound_visualizer(
        display,
        queue,
        frames,
        30,
    )


# def sound_visualizer_run(display, queue):
#     sound_visualizer(
#         display,
#         queue,
#         [
#             [random.randint(0, display.y_height - 1) for x in range(display.x_width)]
#             for frames in range(1000)
#         ],
#         10,
#     )
