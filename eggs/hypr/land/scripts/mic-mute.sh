#!/bin/bash

pactl set-source-mute @DEFAULT_SOURCE@ toggle

if [ $(pactl get-source-mute @DEFAULT_SOURCE@ | cut -f2 -d' ') == "yes" ]; then
    muted="muted"
else
    muted="unmuted"
fi

notify-send "Microphone $muted" -i audio-input-microphone -r 8002 -t 750 # volume
