import random

from demos.utils import get_all_from_queue
from sss_sounds import sss_sounds

SIZE_MULTIPLIER = 1  # try 2 for better proportionality??

RIGHT_X_OFFSET = (
    6 * SIZE_MULTIPLIER
)  # horizontal distance between right extremity and top left
BOTTOM_X_OFFSET = (
    2 * SIZE_MULTIPLIER
)  # horizontal distance between bottom left extremity and top left
BOTTOM_Y_OFFSET = (
    5 * SIZE_MULTIPLIER
)  # vertical distance between bottom extremity and top left
HALF_HEIGHT_OFFSET = 3 * SIZE_MULTIPLIER
HALF_WIDTH_OFFSET = 3 * SIZE_MULTIPLIER
SERIF_OFFSET = 2 * SIZE_MULTIPLIER
FULL_PIXEL = 0xF
SECTION_RIGHT = 0x8
SECTION_LEFT = 0x2


class WelcomeY:
    """This demo moves a Y across the screen"""

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
        location = [random.randint(0, 41), random.randint(0, 42)]
        isLeft = random.choice([True, False])
        isDown = random.choice([True, False])
        self.draw_the_y(location[0], location[1], True)
        yield

        while True:
            # Hide the old Y
            self.draw_the_y(location[0], location[1], False)

            on_corner = (
                (location[0] == 0 and location[1] == 0)
                or (
                    location[0] == 0
                    and location[1] == self.screen.y_height - BOTTOM_Y_OFFSET - 1
                )
                or (
                    location[0] == self.screen.x_width - RIGHT_X_OFFSET - 1
                    and location[1] == 0
                )
                or (
                    location[0] == self.screen.x_width - RIGHT_X_OFFSET - 1
                    and location[1] == self.screen.y_height - BOTTOM_Y_OFFSET - 1
                )
            )

            if on_corner:
                self.output_queue.put("SOUND " + sss_sounds.JINGLE_ACHIEVEMENT_01)

            if location[0] == 0:
                isLeft = False

                if not on_corner:
                    self.output_queue.put("SOUND " + sss_sounds.CLICK_EFFECT)
            if location[0] == self.screen.x_width - RIGHT_X_OFFSET - 1:
                isLeft = True

                if not on_corner:
                    self.output_queue.put("SOUND " + sss_sounds.CLICK_EFFECT)
            if location[1] == 0:
                isDown = True

                if not on_corner:
                    self.output_queue.put("SOUND " + sss_sounds.CLICK_EFFECT)
            if location[1] == self.screen.y_height - BOTTOM_Y_OFFSET - 1:
                isDown = False

                if not on_corner:
                    self.output_queue.put("SOUND " + sss_sounds.CLICK_EFFECT)

            if not isLeft:
                location[0] += 1
            else:
                location[0] -= 1

            if isDown:
                location[1] += 1
            else:
                location[1] -= 1

            # Draw the new Y
            self.draw_the_y(location[0], location[1], True)
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass

    def draw_the_y(self, x, y, draw):
        if not draw:
            self.screen.draw_shape_line(
                x, y, x + SERIF_OFFSET, y, 0, combine=False
            )  # top left serif
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET, y, x + RIGHT_X_OFFSET - SERIF_OFFSET, y, 0
            )  # top right serif
            self.screen.draw_shape_line(
                x + BOTTOM_X_OFFSET,
                y + BOTTOM_Y_OFFSET,
                x + BOTTOM_X_OFFSET + SERIF_OFFSET,
                y + BOTTOM_Y_OFFSET,
                0,
            )  # bottom serif
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2,
                y + 1,
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET,
                0,
            )  # left Y branch main
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2 - 1,
                y + 1,
                x + HALF_WIDTH_OFFSET - 1,
                y + HALF_HEIGHT_OFFSET,
                0,
            )  # left Y branch left border
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2 + 1,
                y + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET,
                0,
            )  # left Y branch right border
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2,
                y + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET - 1,
                0,
            )  # right Y branch main
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2 - 1,
                y + 1,
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET - 1,
                0,
            )  # right Y branch left border
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2 + 1,
                y + 1,
                x + HALF_WIDTH_OFFSET + 2,
                y + HALF_HEIGHT_OFFSET - 1,
                0,
            )  # right Y branch right border
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET,
                y + BOTTOM_Y_OFFSET - 1,
                0,
            )  # Y stem main
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET - 1,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET - 1,
                y + BOTTOM_Y_OFFSET - 1,
                0,
            )  # Y stem left border
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + BOTTOM_Y_OFFSET - 1,
                0,
            )  # Y stem left border
        else:
            self.screen.draw_shape_line(
                x, y, x + SERIF_OFFSET, y, FULL_PIXEL, combine=False
            )  # top left serif
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET, y, x + RIGHT_X_OFFSET - SERIF_OFFSET, y, FULL_PIXEL
            )  # top right serif
            self.screen.draw_shape_line(
                x + BOTTOM_X_OFFSET,
                y + BOTTOM_Y_OFFSET,
                x + BOTTOM_X_OFFSET + SERIF_OFFSET,
                y + BOTTOM_Y_OFFSET,
                FULL_PIXEL,
            )  # bottom serif
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2,
                y + 1,
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET,
                FULL_PIXEL,
            )  # left Y branch main
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2 - 1,
                y + 1,
                x + HALF_WIDTH_OFFSET - 1,
                y + HALF_HEIGHT_OFFSET,
                SECTION_RIGHT,
            )  # left Y branch left border
            self.screen.draw_shape_line(
                x + SERIF_OFFSET // 2 + 1,
                y + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET,
                SECTION_LEFT,
            )  # left Y branch right border
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2,
                y + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET - 1,
                FULL_PIXEL,
            )  # right Y branch main
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2 - 1,
                y + 1,
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET - 1,
                SECTION_RIGHT,
            )  # right Y branch left border
            self.screen.draw_shape_line(
                x + RIGHT_X_OFFSET - SERIF_OFFSET // 2 + 1,
                y + 1,
                x + HALF_WIDTH_OFFSET + 2,
                y + HALF_HEIGHT_OFFSET - 1,
                SECTION_LEFT,
            )  # right Y branch right border
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET,
                y + BOTTOM_Y_OFFSET - 1,
                FULL_PIXEL,
            )  # Y stem main
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET - 1,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET - 1,
                y + BOTTOM_Y_OFFSET - 1,
                SECTION_RIGHT,
            )  # Y stem left border
            self.screen.draw_shape_line(
                x + HALF_WIDTH_OFFSET + 1,
                y + HALF_HEIGHT_OFFSET + 1,
                x + HALF_WIDTH_OFFSET + 1,
                y + BOTTOM_Y_OFFSET - 1,
                SECTION_LEFT,
            )  # Y stem left border

        if draw:
            self.screen.push()
