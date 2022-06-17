import numpy as np


def get_all_from_queue(queue):
    while not queue.empty():
        yield queue.get()


def create_segment_buffer(screen):
    segment_buffer_width = 2 * (screen.x_width - 1)
    segment_buffer_height = 3 * int(screen.y_height / 2)

    x_buffer = np.zeros((segment_buffer_width, segment_buffer_height))
    y_buffer = np.zeros((segment_buffer_width, segment_buffer_height))

    return x_buffer, y_buffer


def display_segment_buffer(x_buffer, y_buffer, screen):
    width = screen.x_width - 1
    height = int(screen.y_height / 2)

    for x in range(width):
        for y in range(height):

            state = 0

            if x_buffer[x * 2][y * 3]:
                state += 64  # 64 = TOP
            if x_buffer[x * 2][y * 3 + 1]:
                state += 1  # 1 = CENTER
            if x_buffer[x * 2][y * 3 + 2]:
                state += 8  # 8 = BOTTOM

            if y_buffer[x * 2 + 1][y * 3]:
                state += 32  # 32 = TR
            if y_buffer[x * 2 + 1][y * 3 + 1]:
                state += 16  # 16 = BR
            if y_buffer[x * 2][y * 3 + 1]:
                state += 4  # 4 = BL
            if y_buffer[x * 2][y * 3]:
                state += 2  # 2 = TL

            # Only draw the pixel if there is something to draw
            if state != 0:
                screen.draw_raw(x, y, state)

    screen.push()


def undraw_segment_buffer(x_buffer, y_buffer, screen):
    width = screen.x_width - 1
    height = int(screen.y_height / 2)

    for x in range(width):
        for y in range(height):
            if (
                x_buffer[x * 2][y * 3]
                or x_buffer[x * 2][y * 3 + 1]
                or x_buffer[x * 2][y * 3 + 2]
                or y_buffer[x * 2 + 1][y * 3]
                or y_buffer[x * 2 + 1][y * 3 + 1]
                or y_buffer[x * 2][y * 3 + 1]
                or y_buffer[x * 2][y * 3]
            ):
                screen.draw_raw(x, y, 0)


def draw_segment_line(x1, y1, x2, y2, x_buffer, y_buffer):
    width, height = x_buffer.shape

    x1 = constrain(x1, 0, width - 1)
    y1 = constrain(y1, 0, height - 1)

    x2 = constrain(x2, 0, width - 1)
    y2 = constrain(y2, 0, height - 1)

    if x2 < x1:
        x1, x2 = x2, x1
        y1, y2 = y2, y1

    dx = x2 - x1
    dy = y2 - y1

    r = 0
    ny = 0
    pny = 0
    nny = 0

    p = dy / dx if dx != 0 else 0
    t = 0

    for i in range(dx + 1):
        r = int(round(t))
        pny = ny
        ny = y1 + r

        if i > 0:  # vertical lines connecting horizontal lines

            for j in range(abs(ny - pny)):
                if pny > ny:
                    nny = pny - j - 1
                else:
                    nny = pny + j

                y_buffer[x1 + i][nny] = 1

        if i != dx:
            x_buffer[x1 + i][ny] = 1
        t += p

    if dx == 0 and dy != 0:  # in case of no vertical lines
        fs = 0
        fe = int(dy)

        if dy < 0:
            fs = fe
            fe = 0

        for i in range(fs, fe):
            y_buffer[x1][y1 + i] = 1


def constrain(val, min_val, max_val):
    return min(max_val, max(min_val, val))
