#!/bin/bash
address=$(hyprctl activewindow | head -n 1 | cut -f2 -d' ')
floating=$(hyprctl activewindow | grep -m 1 "floating:" | cut -f 2 -d' ')
size=$(hyprctl activewindow | grep -m 1 "size:" | cut -f 2 -d' ')
width=$(echo $size | cut -d "," -f 1)
height=$(echo $size | cut -d "," -f 2)

monitor=$(hyprctl activewindow | grep -m 1 "monitor:" | cut -f 2 -d' ')
monitor_size=$(hyprctl monitors $monitor | head -n 2 | tail -n 1 | cut -f 1 -d'@')
monitor_scale=$(hyprctl monitors $monitor | grep -m 1 "scale:" | cut -f 2 -d' ')
monitor_width=$(echo $monitor_size | cut -f 1 -d'x')
monitor_height=$(echo $monitor_size | cut -f 2 -d'x')

max_width=$(echo "$monitor_width * 0.8 / $monitor_scale" | bc)
max_height=$(echo "$monitor_height * 0.8 / $monitor_scale" | bc)

width=$((width > max_width ? max_width : width))
height=$((height > max_height ? max_height : height))

hyprctl dispatch togglefloating

if [ "$floating" == 0 ]
then
    hyprctl dispatch resizewindowpixel "exact $width $height,address:0x$address"
    hyprctl dispatch centerwindow 1
fi
