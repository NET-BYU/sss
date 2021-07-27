#!/bin/bash
# reload the udev rules
sudo udevadm control --reload-rules && sudo service udev restart && sudo udevadm trigger