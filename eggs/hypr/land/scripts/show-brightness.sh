#!/bin/bash
current=$(brightnessctl get)
max=$(brightnessctl max)
percentage=$(echo "($current * 100) / $max" | bc)
percentage=$(echo "($percentage + 4) / 5 * 5" | bc)

notify-send "Brightness: $percentage%" -i display -r 8000 -h int:value:$percentage -t 750 # brightness
