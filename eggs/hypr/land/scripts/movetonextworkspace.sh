#!/bin/bash
workspace=$(hyprctl activewindow | grep -m 1 "workspace:" | cut -f2 -d' ')

hyprctl dispatch movetoworkspace $(($workspace + 1))
