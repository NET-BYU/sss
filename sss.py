from lib import subscriber as sub
from lib import mqtt_input
from demos import checkerboard
from games.breakout import breakout

# from games.snake import snake
import threading, keyboard
from random import randint
import paho.mqtt.client as mqtt
import config

pin = -1


def generate_pin():
    global pin
    pin = randint(999, 9999)


def main():
    client = mqtt.Client()
    client.connect("mqtt.eclipseprojects.io", 1883, 10000)

    input_data = mqtt_input.InputData()
    data_thread = threading.Thread(target=sub.run, args=([input_data],))
    data_thread.daemon = True
    data_thread.start()

    generate_pin()
    print(pin)

    while True:
        if config.hasUser:
            print("hasUser")
            client.publish("byu_ssdd/output/validate", "0")
            break

        if keyboard.is_pressed("v"):

            print("Awaiting input")
            while int(config.userPin) != pin:
                # print(type(config.userPin), type(pin))
                pass

            client.publish("byu_ssddbyu_ssdd//output/nav", "home.html")
            client.publish("byu_ssdd/output/nav", "home.html")
            client.publish("byu_ssdd/output/nav", "home.html")

            config.hasUser = True

            while True:
                # print("Main menu")

                # Games menu selected
                if keyboard.is_pressed("g"):
                    client.publish("byu_ssdd/output/nav", "games.html")
                    client.publish("byu_ssdd/output/nav", "games.html")
                    client.publish("byu_ssdd/output/nav", "games.html")
                    while True:
                        # print("Games")

                        # Breakout Game
                        if keyboard.is_pressed("b"):
                            client.publish(
                                "byu_ssdd/output/nav",
                                "controller.html?right=True&left=True",
                            )
                            breakout.breakout(500)

                        # Snake Game
                        elif keyboard.is_pressed("s"):
                            client.publish(
                                "byu_ssdd/output/nav",
                                "controller.html?right=True&left=True&up=True&left=True",
                            )
                            while True:
                                print("snek")
                                pass

                        # Pong Game
                        elif keyboard.is_pressed("s"):
                            client.publish(
                                "byu_ssdd/output/nav",
                                "controller.html?down=True&up=True",
                            )
                            # snake()
                            pass

                        # Go home
                        elif keyboard.is_pressed("h"):
                            # print("ay")
                            # break
                            client.publish("byu_ssdd/output/nav", "home.html")
                            client.publish("byu_ssdd/output/nav", "home.html")
                            client.publish("byu_ssdd/output/nav", "home.html")
                            break
                    continue

                # Demos menu selected
                elif keyboard.is_pressed("d"):
                    client.publish("byu_ssdd/output/nav", "demos.html")
                    while True:
                        # print("Demos")

                        # Checkered demo
                        if keyboard.is_pressed("k"):
                            checkerboard.checkboard_screensaver()

                        # Flag demo
                        elif keyboard.is_pressed("f"):
                            pass

                        # Spiral demo
                        elif keyboard.is_pressed("s"):
                            pass

                        # Circle demo
                        elif keyboard.is_pressed("c"):
                            pass

                        # Sweep demo
                        elif keyboard.is_pressed("w"):
                            pass

                        # Letters demo
                        elif keyboard.is_pressed("l"):
                            pass

                        # Go home
                        elif keyboard.is_pressed("h"):
                            client.publish("byu_ssdd/output/nav", "home.html")
                            client.publish("byu_ssdd/output/nav", "home.html")
                            client.publish("byu_ssdd/output/nav", "home.html")
                            break


if __name__ == "__main__":
    main()
