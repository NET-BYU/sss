import paho.mqtt.client as mqtt

from demos import checkerboard, netlab_flag
import games.breakout.breakout as bo

# import games.snake.snek as sn
from config import command_queue

actions = {
    # b"snake": sn.snek_game,
    b"breakout": bo.breakout,
    b"checkerboard": checkerboard.checkboard_screensaver,
    b"flag": netlab_flag.byu_netlab,
    b"spiral": checkerboard.checkboard_screensaver,
    b"circle": checkerboard.checkboard_screensaver,
    b"sweep": checkerboard.checkboard_screensaver,
    b"letters": checkerboard.checkboard_screensaver,
}


def process_input(queue):
    while True:
        print("Processing...")
        input_ = queue.get()
        print(input_)

        try:
            selected_action = actions[input_]
            selected_action(queue)
        except KeyError:
            print("err")
            pass


def mqtt_input(queue):
    def on_message(client, userdata, message):
        queue.put(message.payload)

    client = mqtt.Client()
    client.username_pw_set("sss", "***REMOVED***")
    client.on_message = on_message
    client.connect("postman.cloudmqtt.com", 17408, 10000)
    client.subscribe("byu_sss/input")
    client.loop_start()


# def keyboard_input(queue):

#     def run():

#         pass

#     data_thread = threading.Thread(target=run)
#     data_thread.daemon = True
#     data_thread.start()


def main():

    # Set up inputs
    mqtt_input(command_queue)

    # Process inputs
    process_input(command_queue)


if __name__ == "__main__":
    main()
