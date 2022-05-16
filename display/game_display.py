from display import symbols


class Display:
    """ Game Display is a class that abstracts different S^3 panels into one display"""

    def __init__(self, board_objects, x_width, y_height):
        """Constructor
        
        board_objects -- 2d array of seven segment objects oriented how the sign is put together, i.e. [[panel0, panel1],[panel2,panel3]]
        x_width -- number of digits in the display on the x axis
        y_height -- number of pixels on the y axis (each vertical digit is split into two pixels)
        """
        self.board_objects = board_objects
        self.x_width = int(x_width)
        self.y_height = int(y_height)
        self.display_buf = [
            [0 for x in range(self.x_width)] for y in range(self.y_height // 2)
        ]
        self.changed_list = []

    def draw_pixel(self, x, y, value, combine=True, push=False):
        """Draw shape to one pixel location

        x -- x coordinate
        y -- y coordinate
        value -- which leds to turn on for the pixel (1 for bottom, 2 for left, 4 for top, 8 for right, add sides together for multiple sides)
        combine -- digits are split into two pixels, when drawing to one combine keeps what is already drawn on the other side of the digit
        push -- when true all the recent changes are pushed to the display
        """
        half_height = y // 2
        if value == 0 and combine:
            current_value = self.display_buf[half_height][x]
            if y % 2:
                if current_value & 0x62:
                    self.display_buf[half_height][x] = current_value & 0x63
                else:
                    self.display_buf[half_height][x] = current_value & 0x62
            else:
                if current_value & 0x1C:
                    self.display_buf[half_height][x] = current_value & 0x1D
                else:
                    self.display_buf[half_height][x] = current_value & 0x1C
            self.changed_list.append((x, y // 2))
            return

        if y % 2:
            value = (
                (value & 1) << 3
                | (value & 2) << 1
                | (value & 4) >> 2
                | (value & 8) << 1
            )
        else:
            value = (value & 3) | (value & 4) << 4 | (value & 8) << 2
        # if value | self.display_buf[half_height][x] == self.display_buf[half_height][x]:
        #     return
        if combine:
            value = self.display_buf[half_height][x] | value
        self.display_buf[half_height][x] = value
        self.changed_list.append((x, y // 2))
        if push:
            self.push()

    def get_pixel(self, x, y):
        """Get the value already at the pixel

        x -- x coordinate
        y -- y coordinate
        """
        half_height = y // 2
        value = self.display_buf[half_height][x]

        if y % 2:
            half_value = (
                bool(value & 32) << 3
                | bool(value & 64) << 2
                | bool(value & 2) << 1
                | bool(value & 1)
            )
        else:
            half_value = (
                bool(value & 16) << 3
                | bool(value & 1) << 2
                | bool(value & 4) << 1
                | bool(value & 8)
            )

        return half_value

    def push(self):
        """Push all the recent changes to the display
        """
        for location in self.changed_list:
            self.board_objects[location[1] // 6][location[0] // 16].raw2(
                location[0] % 16,
                location[1] % 6,
                self.display_buf[location[1]][location[0]],
            )
        for row in self.board_objects:
            for board in row:
                board.flush()
        self.changed_list.clear()

    def clear(self):
        """Clear all the panels on the display
        """
        self.display_buf = [
            [0 for x in range(self.x_width)] for y in range(self.y_height // 2)
        ]
        for row in self.board_objects:
            for board in row:
                board.clear()
        self.changed_list.clear()

    def draw_hline(self, start_x, start_y, length, top=True, combine=True, push=False):
        """Draw horizontal line

        start_x -- x coordinate
        start_y -- y coordinate
        length -- length of line to draw
        top -- draw horizontal line on the top or bottom of the pixel
        combine -- digits are split into two pixels, when drawing to one combine keeps what is already drawn on the other side of the digit
        push -- when true all the recent changes are pushed to the display
        """ 
        half_height = start_y // 2
        if start_y % 2:
            for x in range(length):
                if top:
                    if combine:
                        self.display_buf[half_height][x + start_x] = (
                            self.display_buf[half_height][x + start_x] | 0x01
                        )
                    else:
                        self.display_buf[half_height][x + start_x] = 0x01
                else:
                    if combine:
                        self.display_buf[half_height][x + start_x] = (
                            self.display_buf[half_height][x + start_x] | 0x08
                        )
                    else:
                        self.display_buf[half_height][x + start_x] = 0x08
                self.changed_list.append((x + start_x, half_height))
        else:
            for x in range(length):
                if top:
                    if combine:
                        self.display_buf[half_height][x + start_x] = (
                            self.display_buf[half_height][x + start_x] | 0x40
                        )
                    else:
                        self.display_buf[half_height][x + start_x] = 0x40
                else:
                    if combine:
                        self.display_buf[half_height][x + start_x] = (
                            self.display_buf[half_height][x + start_x] | 0x01
                        )
                    else:
                        self.display_buf[half_height][x + start_x] = 0x01
                self.changed_list.append((x + start_x, half_height))
        if push:
            self.push()

    def draw_vline(self, start_x, start_y, length, left=True, combine=True, push=False):
        """Draw vertical line

        start_x -- x coordinate
        start_y -- y coordinate
        length -- length of line to draw
        left -- draw vertial line on the left or right of the pixel
        combine -- digits are split into two pixels, when drawing to one combine keeps what is already drawn on the other side of the digit
        push -- when true all the recent changes are pushed to the display
        """ 
        for y in range(length):
            y_loc = start_y + y
            y_half = y_loc // 2
            if y_loc % 2:
                if left:
                    if combine:
                        self.display_buf[y_half][start_x] = (
                            self.display_buf[y_half][start_x] | 0x04
                        )
                    else:
                        self.display_buf[y_half][start_x] = 0x04
                else:
                    if combine:
                        self.display_buf[y_half][start_x] = (
                            self.display_buf[y_half][start_x] | 0x10
                        )
                    else:
                        self.display_buf[y_half][start_x] = 0x10
            else:
                if left:
                    if combine:
                        self.display_buf[y_half][start_x] = (
                            self.display_buf[y_half][start_x] | 0x02
                        )
                    else:
                        self.display_buf[y_half][start_x] = 0x02
                else:
                    if combine:
                        self.display_buf[y_half][start_x] = (
                            self.display_buf[y_half][start_x] | 0x20
                        )
                    else:
                        self.display_buf[y_half][start_x] = 0x20
            self.changed_list.append((start_x, y_half))

    def draw_shape_line(
        self, start_x, start_y, end_x, end_y, value, combine=True, push=False
    ):
        """Draw line with given value at each pixel, can be diagonal

        start_x -- starting x coordinate
        start_y -- starting y coordinate
        end_x -- ending x coordinate
        end_y -- ending y coordiante
        value -- which leds to turn on for the pixel (1 for bottom, 2 for left, 4 for top, 8 for right, add sides together for multiple sides) 
        combine -- digits are split into two pixels, when drawing to one combine keeps what is already drawn on the other side of the digit
        push -- when true all the recent changes are pushed to the display
        """ 
        if start_x != end_x:
            slope = (end_y - start_y) / (end_x - start_x)
            b = start_y - slope * start_x
            for x in range(min(start_x,end_x),max(start_x,end_x)+1):
                self.draw_pixel(x,round(b)+round(slope*x),value,combine)
        else:
            for y in range(min(start_y,end_y),max(start_y,end_y)+1):
                self.draw_pixel(start_x,y,value,combine)
        if push:
            self.push()

    def draw_text(self, x, y, msg, combine=True, push=False):
        """Print a message to the screen, y_height-2 is lowest y value accepted without error

        x -- x coordinate
        y -- y coordinate
        msg -- string message to print
        combine -- digits are split into two pixels, when drawing to one combine keeps what is already drawn on the other side of the digit
        push -- when true all the recent changes are pushed to the display
        """ 
        if y % 2:
            for pos, char in enumerate(msg):
                value = symbols.get_char2(char)
                # get top and bottom values out of value
                top_value = (value & 0x20) >> 2 | (value & 0x40) >> 4 | (value & 0x02)
                bottom_value = (
                    (value & 0x04) >> 1
                    | (value & 0x08) >> 3
                    | (value & 0x10) >> 1
                    | (value & 0x01) << 2
                )
                self.draw_pixel(x + pos, y, top_value, combine=combine)
                self.draw_pixel(x + pos, y + 1, bottom_value, combine=combine)
        else:
            half_y = y // 2
            for pos, char in enumerate(msg):
                value = symbols.get_char2(char)
                self.display_buf[half_y][x + pos] = value
                self.changed_list.append((x + pos, half_y))
        if push:
            self.push()

    # work in progress
    def fill_box(self, start_x, start_y, x_len, y_len, push=False):
        if push:
            self.push()
