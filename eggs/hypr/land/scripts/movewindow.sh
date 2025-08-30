#!/bin/bash
floating=$(hyprctl activewindow | grep -m 1 "floating:" | cut -f2 -d' ')

if [ "$floating" == 0 ]
then
    hyprctl dispatch swapwindow $1
else
    case $1 in
        "l")
	  hyprctl dispatch moveactive -80 0 ;;
        "r")
	  hyprctl dispatch moveactive 80 0 ;;
        "u")
	  hyprctl dispatch moveactive 0 -80 ;;
        "d")
	  hyprctl dispatch moveactive 0 80 ;;
    esac
fi
