import paho.mqtt.client as mqtt

from demos import checkerboard
from games.breakout import breakout
import queue, threading, keyboard
from config import command_queue

actions = {
    "snake": None,
    b"b": breakout.breakout,
    "checker_board": None
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

    # subscribe.callback(on_message, "byu_ssdd/input", hostname="mqtt.eclipseprojects.io")

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