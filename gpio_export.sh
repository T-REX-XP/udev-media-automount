#!/bin/sh

# log event
logger -t GPIO -p user.warn "Export GPIO"

echo "490">  /sys/class/gpio/export
echo "out"> /sys/class/gpio/gpio490/direction
echo "1">  /sys/class/gpio/gpio490/value

