#!/bin/bash

pactl set-sink-mute @DEFAULT_SINK@ toggle

bash ~/.config/hypr/land/scripts/show-volume.sh
