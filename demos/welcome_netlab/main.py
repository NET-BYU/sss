PIXEL_FULL = 0xF
PIXEL_BOTTOM = 0x1
PIXEL_LEFT = 0x2
PIXEL_TOP = 0x4
PIXEL_RIGHT = 0x8


# This is actually the UNDER_CONSTRUCTION module used as a place holder until the demo in main_progress.py is completed
class WelcomeNetlab:
    """This demo just displays an underconstruction sign"""

    demo_time = None

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
        xmax = self.screen.x_width
        ymax = self.screen.y_height
        line = self.screen.draw_shape_line
        dot = self.screen.draw_pixel

        while True:
            line(5, ymax // 2 - 10, 6, ymax // 2 - 10, PIXEL_TOP)
            line(5, ymax // 2 - 12, 6, ymax // 2 - 12, PIXEL_TOP)
            line(5, ymax // 2 - 8, 6, ymax // 2 - 8, PIXEL_BOTTOM)
            line(4, ymax // 2 - 8, 4, ymax // 2 - 10, PIXEL_RIGHT)
            line(7, ymax // 2 - 8, 7, ymax // 2 - 10, PIXEL_LEFT)
            dot(7, ymax // 2 - 12, PIXEL_RIGHT + PIXEL_TOP)
            dot(4, ymax // 2 - 12, PIXEL_LEFT + PIXEL_TOP)
            dot(8, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_LEFT)
            dot(3, ymax // 2 - 11, PIXEL_BOTTOM + PIXEL_RIGHT)
            dot(4, ymax // 2 - 6, PIXEL_TOP + PIXEL_LEFT)
            dot(3, ymax // 2 - 7, PIXEL_TOP + PIXEL_LEFT)
            dot(7, ymax // 2 - 6, PIXEL_TOP + PIXEL_RIGHT)
            dot(8, ymax // 2 - 7, PIXEL_TOP + PIXEL_RIGHT)
            line(2, ymax // 2 - 8, 2, ymax // 2 - 10, PIXEL_RIGHT)
            line(9, ymax // 2 - 8, 9, ymax // 2 - 10, PIXEL_LEFT)
            line(4, ymax // 2 - 5, 4, ymax // 2 + 5, PIXEL_RIGHT)
            line(7, ymax // 2 - 5, 7, ymax // 2 + 5, PIXEL_LEFT)
            dot(4, ymax // 2 + 6, PIXEL_TOP + PIXEL_LEFT)
            dot(3, ymax // 2 + 7, PIXEL_TOP + PIXEL_LEFT)
            dot(7, ymax // 2 + 6, PIXEL_TOP + PIXEL_RIGHT)
            dot(8, ymax // 2 + 7, PIXEL_TOP + PIXEL_RIGHT)
            line(2, ymax // 2 + 8, 2, ymax // 2 + 11, PIXEL_RIGHT)
            line(9, ymax // 2 + 8, 9, ymax // 2 + 11, PIXEL_LEFT)
            dot(3, ymax // 2 + 12, PIXEL_LEFT + PIXEL_BOTTOM)
            dot(8, ymax // 2 + 12, PIXEL_RIGHT + PIXEL_BOTTOM)
            dot(4, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
            dot(7, ymax // 2 + 13, PIXEL_FULL - PIXEL_TOP)
            line(4, ymax // 2 + 8, 4, ymax // 2 + 11, PIXEL_RIGHT)
            line(7, ymax // 2 + 8, 7, ymax // 2 + 11, PIXEL_LEFT)
            line(5, ymax // 2 + 7, 6, ymax // 2 + 7, PIXEL_BOTTOM)

            self.screen.draw_text(16, 12, "UNDER")
            self.screen.draw_text(16, 16, "CONSTRUCTION")
            self.screen.push()
            yield

    def stop(self):
        # Reset the state of the demo if needed, else leave blank
        pass


# class Welcome_Netlab:
#     """This demo just displays an underconstruction sign"""

#     # User input is passed through input_queue
#     # Game output is passed through output_queue
#     # Screen updates are done through the screen object
#     def __init__(self, input_queue, output_queue, screen):
#         # Provide the framerate in frames/seconds and the amount of time of the demo in seconds
#         self.frame_rate = 10
#         self.demo_time = None  # None for a game

#         self.input_queue = input_queue
#         self.output_queue = output_queue
#         self.screen = screen
#         # init demo/game specific variables here

#     def run(self):
#         x = 50
#         y = 50
#         # Create generator here
#         while True:
#             self.screen.draw_shape_line(
#                 x + 1, y, x + 6, y + 4, PIXEL_BOTTOM
#             )  # hex top right
#             self.screen.draw_shape_line(
#                 x + 6, y + 4, x + 2, y + 1, PIXEL_LEFT
#             )  # hex top right 2
#             self.screen.draw_shape_line(
#                 x + HEX_HALF_WIDTH + 1,
#                 y + TOP_SIDE_Y_OFFSET,
#                 x + HEX_HALF_WIDTH + 1,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_LEFT,
#             )  # hex right side
#             self.screen.draw_shape_line(
#                 x + HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 1,
#                 x + 1,
#                 y + HEX_HALF_HEIGHT * 2 + 1,
#                 PIXEL_TOP,
#             )  # hex bottom right
#             self.screen.draw_shape_line(
#                 x + 1,
#                 y + HEX_HALF_HEIGHT * 2 + 1,
#                 x + HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 1,
#                 PIXEL_LEFT,
#             )  # hex bottom right 2
#             self.screen.draw_shape_line(
#                 x,
#                 y + HEX_HALF_HEIGHT * 2 + 1,
#                 x - HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_TOP,
#             )  # hex bottom left
#             self.screen.draw_shape_line(
#                 x - HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 x,
#                 y + HEX_HALF_HEIGHT * 2 + 1,
#                 PIXEL_RIGHT,
#             )  # hex bottom left 2
#             self.screen.draw_shape_line(
#                 x - HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET,
#                 x - HEX_HALF_WIDTH,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_RIGHT,
#             )  # hex left side
#             self.screen.draw_shape_line(
#                 x, y, x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET, PIXEL_BOTTOM
#             )  # hex top left
#             self.screen.draw_shape_line(
#                 x - HEX_HALF_WIDTH, y + TOP_SIDE_Y_OFFSET, x, y, PIXEL_RIGHT
#             )  # hex top left 2
#             self.screen.draw_shape_line(
#                 x - 2,
#                 y + TOP_SIDE_Y_OFFSET,
#                 x - 2,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_LEFT,
#             )  # N/L
#             self.screen.draw_shape_line(
#                 x - 1,
#                 y + TOP_SIDE_Y_OFFSET - 1,
#                 x - 1,
#                 y + TOP_SIDE_Y_OFFSET + 4,
#                 PIXEL_RIGHT,
#             )  # N|
#             self.screen.draw_pixel(
#                 x - 2, y + TOP_SIDE_Y_OFFSET + 1, PIXEL_TOP + PIXEL_RIGHT
#             )  # N
#             self.screen.draw_pixel(
#                 x - 1, y + TOP_SIDE_Y_OFFSET + 2, PIXEL_BOTTOM + PIXEL_LEFT
#             )  # N
#             self.screen.draw_shape_line(
#                 x, y + TOP_SIDE_Y_OFFSET, x + 3, y + TOP_SIDE_Y_OFFSET, PIXEL_TOP
#             )  # E/T
#             self.screen.draw_shape_line(
#                 x, y + TOP_SIDE_Y_OFFSET, x, y + TOP_SIDE_Y_OFFSET + 4, PIXEL_LEFT
#             )  # E
#             self.screen.draw_pixel(x, y + TOP_SIDE_Y_OFFSET + 2, PIXEL_TOP)  # E
#             self.screen.draw_shape_line(
#                 x + 2,
#                 y + TOP_SIDE_Y_OFFSET,
#                 x + 2,
#                 y + TOP_SIDE_Y_OFFSET + 4,
#                 PIXEL_RIGHT,
#             )  # T
#             self.screen.draw_shape_line(
#                 x - 2,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 x - 1,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_BOTTOM,
#             )  # L
#             self.screen.draw_shape_line(
#                 x, y + HEX_HALF_HEIGHT + 2, x, y + BOTTOM_Y_OFFSET - 1, PIXEL_LEFT
#             )  # A
#             self.screen.draw_shape_line(
#                 x + 1,
#                 y + HEX_HALF_HEIGHT + 2,
#                 x,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_RIGHT,
#             )  # A
#             self.screen.draw_pixel(
#                 x, y + HEX_HALF_HEIGHT + 1, PIXEL_BOTTOM + PIXEL_RIGHT
#             )  # A
#             self.screen.draw_pixel(
#                 x + 1, y + HEX_HALF_HEIGHT + 1, PIXEL_BOTTOM + PIXEL_LEFT
#             )  # A
#             self.screen.draw_shape_line(
#                 x,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT - 1,
#                 x + 3,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_TOP,
#             )  # A/B
#             self.screen.draw_shape_line(
#                 x + 2,
#                 y + HEX_HALF_HEIGHT + 1,
#                 x + 2,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_LEFT,
#             )  # B
#             self.screen.draw_shape_line(
#                 x + 2,
#                 y + HEX_HALF_HEIGHT + 1,
#                 x + 4,
#                 y + HEX_HALF_HEIGHT + 1,
#                 PIXEL_TOP,
#             )  # B----
#             self.screen.draw_shape_line(
#                 x + 3,
#                 y + HEX_HALF_HEIGHT + 1,
#                 x + 3,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_RIGHT,
#             )  # B
#             self.screen.draw_shape_line(
#                 x + 2,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 x + 3,
#                 y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT,
#                 PIXEL_BOTTOM,
#             )  # B
#             self.screen.draw_pixel(x + 3, y + HEX_HALF_HEIGHT + 2, PIXEL_BOTTOM)  # B
#             self.screen.draw_pixel(x - 1, y + TOP_SIDE_Y_OFFSET - 2, PIXEL_FULL)
#             self.screen.draw_pixel(x + 5, y + HEX_HALF_HEIGHT + 1, PIXEL_FULL)
#             self.screen.draw_pixel(
#                 x, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 2, PIXEL_BOTTOM
#             )
#             self.screen.draw_pixel(
#                 x + 1, y + TOP_SIDE_Y_OFFSET + HEX_SIDE_HEIGHT + 2, PIXEL_FULL
#             )
#             self.screen.push()
#             yield

#     def stop(self):
#         # Reset the state of the demo if needed, else leave blank
#         pass
