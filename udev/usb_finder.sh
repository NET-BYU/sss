#!/bin/bash

for sysdevpath in $(find /sys/bus/usb/devices/usb*/ -name dev); do
    (
	syspath="${sysdevpath%/dev}"
	devname="$(udevadm info -q name -p $syspath)"
	[[ "$devname" == "bus/"* ]]
	eval "$(udevadm info -q property -p $syspath | grep ID_SERIAL)"
	[[ -z "$ID_SERIAL" ]]
	echo "/dev/$devname - $ID_SERIAL"
    )
done