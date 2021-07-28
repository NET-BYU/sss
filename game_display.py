class Display:
    def __init__(self, board_object, x_wdith, y_height):
        self.board_object = board_object
        self.x_width = x_wdith
        self.y_height = y_height
        self.display_buf = [[0 for x in range(x_wdith)] for y in range(y_height / 2)]
        self.changed_list = []

    def draw_pixel(self, x, y, value, combine=True, push=False):
        half_height = y / 2
        if y % 2:
            value = (
                (value & 1) << 3
                | (value & 2) << 1
                | (value & 4) >> 2
                | (value & 8) << 4
            )
        else:
            value = (value & 3) | (value & 4) >> 4 | (value & 8) << 2
        if combine:
            value = self.display_buf[x][half_height] & value
        self.display_buf[x][half_height] = value
        self.changed_list.append((x, y / 2))
        if push:
            self.push()
