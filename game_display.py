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
            value = self.display_buf[x][half_height] | value
        self.display_buf[x][half_height] = value
        self.changed_list.append((x, y / 2))
        if push:
            self.push()
    
    def push(self):
        for location in self.changed_list:
            self.board_object.raw2(location[0],location[1],self.display_buf[location[0]][location[1]])
        self.board_object.flush()

    def draw_hline(self,start_x,start_y,length,top=True,combine=True,push=False):
        half_height = y / 2
        if y % 2:
            for x in range(length):
                if top:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x01
                    else:
                        self.display_buf[x+start_x][half_height] = 0x01
                else:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x08
                    else:
                        self.display_buf[x+start_x][half_height] = 0x08     
        else:
            for x in range(length):
                if top:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x40
                    else:
                        self.display_buf[x+start_x][half_height] = 0x40
                else:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x01
                    else:
                        self.display_buf[x+start_x][half_height] = 0x01
        self.changed_list.append((x+start_x,half_height))
        if push:
            self.push()

    def draw_vline(self,start_x,start_y,length,left=True,combine=True,push=False):
        half_height = y / 2
        if y % 2:
            for x in range(length):
                if left:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x04
                    else:
                        self.display_buf[x+start_x][half_height] = 0x04
                else:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x10
                    else:
                        self.display_buf[x+start_x][half_height] = 0x10  
        else:
            for x in range(length):
                if left:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x02
                    else:
                        self.display_buf[x+start_x][half_height] = 0x02
                else:
                    if combine:
                        self.display_buf[x+start_x][half_height] = self.display_buf[x+start_x][half_height] | 0x20
                    else:
                        self.display_buf[x+start_x][half_height] = 0x20
        self.changed_list.append((x+start_x,half_height))
        if push:
            self.push()
        
        def fill_box(self, start_x,start_y, x_len,y_len,push=False):

            if push:
                self.push()
