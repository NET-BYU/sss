class Trace:
    def __init__(self, screen):
        self.screen = screen
        # init demo/game specific variables here

    # Draws or erases a 0 based on the position given
    def draw_0(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            self.screen.push()

    # Draws or erases a 1 based on position given
    def draw_1(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            self.screen.push()

    # Draws or erases a 2 based on the position given
    def draw_2(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(4, i + 25, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(14, i + 25, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(27, i + 25, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(37, i + 25, value, combine, False)
            self.screen.push()

    # Draws or erases a 3 based on the position given
    def draw_3(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False

        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            self.screen.push()

    # Draws or erases a 4 based on the position given
    def draw_4(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            self.screen.push()

        if position == 1:
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            self.screen.push()

    # Draws or erases a 5 based on the position given
    def draw_5(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(11, i + 25, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(21, i + 25, value, combine, False)
            self.screen.push()

        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(34, i + 25, value, combine, False)
            self.screen.push()

        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(44, i + 25, value, combine, False)
            self.screen.push()

    # Draws or erases a 6 based on the position given
    def draw_6(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(11, i + 25, value, combine, False)
            self.screen.push()

        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(21, i + 25, value, combine, False)
            self.screen.push()

        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(34, i + 25, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(44, i + 25, value, combine, False)
            self.screen.push()

    # Draws or erases a 7 based on position given
    def draw_7(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False
        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(11, i + 8, value, combine, False)
            self.screen.push()

        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(21, i + 8, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(34, i + 8, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(33):
                self.screen.draw_pixel(44, i + 8, value, combine, False)
            self.screen.push()

    # Draws or erases an 8 based on the position given
    def draw_8(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False

        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            self.screen.push()

        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            self.screen.push()

    # Draws or erases a 9 nine based on position given
    def draw_9(self, position, draw):
        if draw == True:
            value = 15
            combine = True
        else:
            value = 0
            combine = False

        if position == 3:
            for i in range(8):
                self.screen.draw_pixel(i + 4, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((3 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 4, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(4, i + 9, value, combine, False)
            self.screen.push()
        if position == 2:
            for i in range(8):
                self.screen.draw_pixel(i + 14, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((13 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 14, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(14, i + 9, value, combine, False)
            self.screen.push()
        if position == 1:
            for i in range(8):
                self.screen.draw_pixel(i + 27, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((26 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 27, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(27, i + 9, value, combine, False)
            self.screen.push()
        if position == 0:
            for i in range(8):
                self.screen.draw_pixel(i + 37, 8, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 48 - 8, value, combine, False)
            for i in range(32):
                self.screen.draw_pixel((36 + 8), i + 9, value, combine, False)
            for i in range(8):
                self.screen.draw_pixel(i + 37, 24, value, combine, False)
            for i in range(16):
                self.screen.draw_pixel(37, i + 9, value, combine, False)
            self.screen.push()

    # Helper function for drawing any number at any position.
    def draw_number(self, position, number, draw):
        if number == 0:
            self.draw_0(position, draw)
        if number == 1:
            self.draw_1(position, draw)
        if number == 2:
            self.draw_2(position, draw)
        if number == 3:
            self.draw_3(position, draw)
        if number == 4:
            self.draw_4(position, draw)
        if number == 5:
            self.draw_5(position, draw)
        if number == 6:
            self.draw_6(position, draw)
        if number == 7:
            self.draw_7(position, draw)
        if number == 8:
            self.draw_8(position, draw)
        if number == 9:
            self.draw_9(position, draw)
