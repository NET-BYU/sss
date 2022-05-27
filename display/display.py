import display.game_display as gd


def create_virtual_screen(screen):
    from display.simulator import Panel

    boards = [
        [Panel(i * 16 * 25, j * 30 * 6, screen) for i in range(3)] for j in range(4)
    ]
    return gd.Display(boards, 16 * 3, 12 * 4)


def create_physical_screen():
    import display.seven_seg as ss

    bright = 3  # brightness of of the panels (1-15)
    cs_num_lst = [
        5,
        10,
        9,
        4,
        11,
        14,
        2,
        3,
        7,
        12,
        13,
        6,
    ]  # channel select gpio pin numbers, array is in flattened row order from the top of the screen
    num_segs_across = 3
    num_segs_down = 4
    panel_array = [
        [
            ss.SevenSegment(
                num_digits=96,
                cs_num=cs_num_lst[i * num_segs_across + j],
                brightness=bright,
                segment_orientation_array=[
                    [1, 2],
                    [3, 4],
                    [5, 6],
                    [7, 8],
                    [9, 10],
                    [11, 12],
                ],
            )
            for j in range(num_segs_across)
        ]
        for i in range(num_segs_down)
    ]
    return gd.Display(
        panel_array,
        48,
        48,
    )


def close_screen(screen):
    for row in range(len(screen.board_objects)):
        for panel in range(len(screen.board_objects[row])):
            screen.board_objects[row][panel].close()
