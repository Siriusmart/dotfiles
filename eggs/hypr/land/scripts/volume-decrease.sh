#!/bin/bash
volume=$(bash ~/.config/hypr/land/scripts/get-volume.sh)

pactl set-sink-volume @DEFAULT_SINK@ '-5%'

bash ~/.config/hypr/land/scripts/show-volume.sh
