USAGE="Usage: ./info.sh /dev/somedevice"

if [[ -z $1 ]]
then
	echo $USAGE >&2
	exit 1
fi

# This gives us the ATTRS that we can use to write udev rules
udevadm info --attribute-walk --path $(udevadm info --query path --name $1)