#!/bin/bash
rofi_running=$(pidof rofi | wc -l)

if [ $rofi_running = 0 ]; then
    rofi -show $1
else
    killall rofi
fi
