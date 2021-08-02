class Display:
    def __init__(self, board_objects, x_width, y_height):
        self.board_objects = board_objects
        self.x_width = int(x_width)
        self.y_height = int(y_height)
        self.display_buf = [
            [0 for x in range(self.x_width)] for y in range(self.y_height // 2)
        ]
        self.changed_list = []

    def draw_pixel(self, x, y, value, combine=True, push=False):
        half_height = y // 2
        if value == 0 and combine:
            if y % 2:
                self.display_buf[half_height][x] = (
                    self.display_buf[half_height][x] & 0x63
                )
            else:
                self.display_buf[half_height][x] = (
                    self.display_buf[half_height][x] & 0x1D
                )
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

    def push(self):
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
        self.display_buf = [
            [0 for x in range(self.x_width)] for y in range(self.y_height // 2)
        ]
        for row in self.board_objects:
            for board in row:
                board.clear()
        self.changed_list.clear()

    def draw_hline(self, start_x, start_y, length, top=True, combine=True, push=False):
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

    def draw_box_line(self, start_x, start_y, end_x, end_y, combine=True, push=False):

        if start_x != end_x:
            slope = (end_y - start_y) / (end_x - start_x)
            if start_x < end_x:
                for x in range(start_x, end_x + 1):
                    self.draw_pixel(x, round(x * slope), 15, combine)
            else:
                for x in range(end_x, start_x + 1):
                    self.draw_pixel(x, round(x * slope), 15, combine)
        else:
            if start_y < end_y:
                for y in range(start_y, end_y + 1):
                    self.draw_pixel(start_x, y, 15, combine)
            else:
                for y in range(end_y, start_y + 1):
                    self.draw_pixel(start_x, y, 15, combine)
        if push:
            self.push()

    def fill_box(self, start_x, start_y, x_len, y_len, push=False):
        if push:
            self.push()
