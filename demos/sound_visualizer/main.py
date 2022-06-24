# from display import utils
import random
import numpy as np


def sound_visualizer(display, queue, sound_frames, fps):
    tick = utils.frameRate(fps)
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


def sound_visualizer_run(display, queue, mqtt_client):
    input = ""
    while True:
        if not queue.empty():
            input = queue.get(block=False)
            if input == b"q":
                display.clear()
                return
            break
    with open(
        "/home/pi/sss/demos/sound_visualizer/bensound-" + input.decode() + ".npy", "rb"
    ) as f:
        frames = np.load(f)
    sound_visualizer(
        display,
        queue,
        frames,
        30,
    )


class SoundVisualizer:
    """This demo showcases a sound visualization."""

    demo_time = 30

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        # Create generator here
        while True:
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass


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
