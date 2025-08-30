#!/bin/bash
floating=$(hyprctl activewindow | grep -m 1 "floating:" | cut -f2 -d' ')

move_step=80
resize_x=0
resize_y=0

case $1 in
	"l") resize_x=-1 ;;
	"r") resize_x=1 ;;
	"u") resize_y=-1 ;;
	"d") resize_y=1 ;;
esac

if [ "$floating" == 1 ]
then
	hyprctl dispatch moveactive $((-move_step * resize_x / 2)) $((-move_step * resize_y / 2))
fi

hyprctl dispatch resizeactive $((move_step * resize_x)) $((move_step * resize_y))
