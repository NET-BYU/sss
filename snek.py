from game_display import Display
import random
import time
from itertools import count


def frameRate(period):
    nextTime = time.time() + period
    for i in count():
        now = time.time()
        toSleep = nextTime - now
        if toSleep > 0:
            time.sleep(toSleep)
            nextTime += period
        else:
            nextTime = now + period
        yield i, nextTime


def snek_game(display):
    game_over = False
    current_location = [display.x_width // 2, display.y_height // 2]
    snek_list = [current_location]
    snek_length = 1

    def get_new_food_location():
        food_location = [
            round(random.randrange(0, display.x_width)),
            round(random.randrange(0, display.x_width)),
        ]
        while food_location in snek_list:
            food_location = [
                round(random.randrange(0, display.x_width)),
                round(random.randrange(0, display.x_width)),
            ]
        return food_location

    current_food_location = get_new_food_location()

    # draw snek part
    display.draw_pixel(snek_list[0][0], snek_list[0][1], 15)
    # draw food
    display.draw_pixel(current_food_location[0], current_food_location[1])

    while not game_over:
        # check keyboard press and generate new snake part

        # check to make sure snek isn't in the weeds
        if (
            current_location[0] >= display.x_width
            or current_location[0] < 0
            or current_location[1] >= display.y_height
            or current_location[1] < 0
        ):
            game_over = True
            continue

        # check food situation
        if current_food_location == current_location:
            snek_length += 1
            current_food_location = get_new_food_location()
            # draw food
            display.draw_pixel(current_food_location[0], current_food_location[1])

        # draw snek part
        display.draw_pixel(current_food_location[0], current_food_location[1])
        snek_list.append(current_location)
        if len(snek_list) > snek_length:
            display.draw_pixel(snek_list[0][0], snek_list[0][1], 0)
            snek_list.pop(0)
