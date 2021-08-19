from demos.game_of_life import game_of_life
import paho.mqtt.client as mqtt
from display import screen
from demos import checkerboard, netlab_flag, sweep, letters, circle, spiral, game_of_life
import games.breakout.breakout as bo

import games.snake.snek as sn
from config import command_queue

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


def main():

    # Set up inputs
    mqtt_input(command_queue)

    # Process inputs
    process_input(command_queue)


if __name__ == "__main__":
    main()
