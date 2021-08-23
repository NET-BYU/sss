from demos.game_of_life import game_of_life
import paho.mqtt.client as mqtt
from display import screen
from demos import (
    checkerboard,
    netlab_flag,
    sweep,
    letters,
    circle,
    spiral,
    welcome_y,
    welcome_netlab,
    game_of_life,
)
import games.breakout.breakout as bo

import games.snake.snek as sn
from config import command_queue
import inputs, threading

actions = {
    b"snake": sn.snek_game,
    b"snake_ai": sn.snek_ai_game,
    b"breakout": bo.breakout,
    b"breakout_ai": bo.breakout_demo,
    b"gameoflife": game_of_life.game_of_life,
    b"checkerboard": checkerboard.checkboard_screensaver,
    b"flag": netlab_flag.byu_netlab,
    b"spiral": spiral.spiral,
    b"circle": circle.circle,
    b"sweep": sweep.sweep,
    b"letters": letters.letters,
    b"welcome_y": welcome_y.welcome_y,
    b"welcome_netlab": welcome_netlab.welcome_netlab,
}


def process_input(queue):
    while True:
        print("Processing...")
        input_ = queue.get()
        print(input_)

        try:
            selected_action = actions[input_]
            selected_action(screen, queue)
        except KeyError:
            print("err")
            pass


def mqtt_input(queue):
    def on_message(client, userdata, message):
        queue.put(message.payload)

    client = mqtt.Client()
    client.username_pw_set("sss", "***REMOVED***")
    client.on_message = on_message
    client.tls_set("/etc/ssl/certs/ca-certificates.crt")
    client.connect("aq.byu.edu", 8883)
    client.subscribe("byu_sss/input")
    client.loop_start()


def gamepad_input(queue):
    def gamepad_listener():
        leftPressed = False
        rightPressed = False
        upPressed = False
        downPressed = False
        while True:
            events = inputs.get_gamepad()
            for event in events:
                if event.code == "ABS_X":
                    if event.state == 0:
                        queue.put(b"h")
                        leftPressed = True
                    elif event.state == 127:
                        if leftPressed:
                            queue.put(b"hh")
                            leftPressed = False
                        elif rightPressed:
                            queue.put(b"kk")
                            rightPressed = False
                    elif event.state == 255:
                        queue.put(b"k")
                        rightPressed = True
                elif event.code == "ABS_Y":
                    if event.state == 0:
                        queue.put(b"u")
                        upPressed = True
                    elif event.state == 127:
                        if upPressed:
                            queue.put(b"uu")
                            upPressed = False
                        elif downPressed:
                            queue.put(b"jj")
                            downPressed = False
                    elif event.state == 255:
                        queue.put(b"j")
                        downPressed = True

                # print(event.ev_type, event.code, event.state)

    gamepad_thread = threading.Thread(target=gamepad_listener, daemon=True)
    gamepad_thread.start()


def main():

    gamepad_input(command_queue)

    # Set up inputs
    mqtt_input(command_queue)

    # Process inputs
    process_input(command_queue)


if __name__ == "__main__":
    main()
