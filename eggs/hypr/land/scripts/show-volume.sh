#!/bin/bash

volume=$(bash ~/.config/hypr/land/scripts/get-volume.sh)

if [ $(pactl get-sink-mute @DEFAULT_SINK@ | cut -f2 -d' ') == "yes" ]; then
    urgency="critical"
    muted=" (muted)"
else
    urgency="normal"
    muted=""
fi

notify-send "Volume: $volume%$muted" -u $urgency -i audio-headphones -r 8001 -h int:value:$volume -t 750 # volume
