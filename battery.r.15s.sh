#!/usr/bin/env bash

a=$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep state | cut -c 26)
if [[ $a == 'd' ]]
then b='-'
else b='+'
fi

c=$b"$(upower -i /org/freedesktop/UPower/devices/battery_BAT0 | grep energy-rate | grep -o '[0-9]\+\(,[0-9]\+\)\?' | cut -c -4) W"

echo $c
