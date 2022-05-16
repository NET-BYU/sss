SIZE_MULTIPLIER = 1  # try 2 for better proportionality??
STARTING_X = 0
STARTING_Y = 10

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


class Welcome_Y:
    """This demo moves a Y across the screen"""

    # User input is passed through input_queue
    # Game output is passed through output_queue
    # Screen updates are done through the screen object
    def __init__(self, input_queue, output_queue, screen):
        # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
        self.frame_rate = 10
        self.demo_time = 30  # None for a game

        self.input_queue = input_queue
        self.output_queue = output_queue
        self.screen = screen
        # init demo/game specific variables here

    def run(self):
        location = [STARTING_X, STARTING_Y]
        isLeft = False
        isDown = True
        self.draw_the_y(location[0], location[1], True)
        yield
        # Create generator here
        while True:
            if location[0] == 0:
                isLeft = False
            if location[0] == self.screen.x_width - RIGHT_X_OFFSET - 1:
                isLeft = True
            if location[1] == 0:
                isDown = True
            if location[1] == self.screen.y_height - BOTTOM_Y_OFFSET - 1:
                isDown = False

            self.draw_the_y(location[0], location[1], False)

            if not isLeft:
                location[0] += 1
            else:
                location[0] -= 1

            if isDown:
                location[1] += 1
            else:
                location[1] -= 1

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
        self.screen.push()
