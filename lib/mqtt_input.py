import keyboard, config
from time import sleep


class InputData:
    def __init__(self):
        self.keypress = ""

    def update(self, topic, payload):
        try:
            topic = topic.split("/")

            if topic[1] != "input":
                # print("poo")
                return

            if len(payload) > 1:
                config.userPin = payload
                return

            # input_data = json.loads(payload)
            # print(input_data)
            self.keypress = payload
            # print(self.keypress)

            keyboard.press(self.keypress)
            sleep(.1)
            keyboard.release(self.keypress)
            # print("pressed")

        except Exception as e:
            print("Something happened", e)