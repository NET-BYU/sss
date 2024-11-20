import os
import pygame
from pygame import mixer

pygame.init()
mixer.init()

dir_list = os.listdir("sss_sounds")
dir_list.sort()
for i in dir_list:
    if i == "Tetris.mp3":
        continue

    if i.endswith(".mp3"):
        try:
            # sound = mixer.Sound("sss_sounds/" + i)
            # sound.play()
            mixer.Sound("sss_sounds/" + i).play()
            input("Did you hear: " + i + "?")
        except:
            print("Unable to play sound file: {}".format(i))
