import sys

sys.path.append("../..")

from display import seven_seg as ss  # import SevenSegment
from display import game_display as gd  # import Display
from random import getrandbits
from loguru import logger

MQTT_HOST = "aq.byu.edu"
MQTT_PORT = 8883
MQTT_USERNAME = "sss"
MQTT_PASSWORD = "***REMOVED***"
MQTT_CERT = "/etc/ssl/certs/ca-certificates.crt"


def nsh(screen, command_queue, mqtt_client, ai=False):

    print("NSH")

    screen.draw_text(0,0,"Banana", combine=True)

    screen.push()

    while True:
        print("waiting")
