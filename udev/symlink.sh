#!/bin/bash

# create symlinks to the rules in our repo
echo "symlink udev rules to  /etc/udev/rules.d/"
sudo ln -s ~/seven_segment_lib/*.rules /etc/udev/rules.d
printf "\nReloading udev\n\n"
sudo ~/seven_segment_lib/udev/reload.sh