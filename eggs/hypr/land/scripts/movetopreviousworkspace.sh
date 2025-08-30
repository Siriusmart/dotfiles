#!/bin/bash
workspace=$(hyprctl activewindow | grep -m 1 "workspace:" | cut -f2 -d' ')

if [ $workspace != "1" ]; then
    echo $workspace
    hyprctl dispatch movetoworkspace $(($workspace - 1))
fi

