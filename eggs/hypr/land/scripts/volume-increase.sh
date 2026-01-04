#!/bin/bash
volume=$(bash ~/.config/hypr/land/scripts/get-volume.sh)

if ((volume + 5 <= 100)); then
	pactl set-sink-volume @DEFAULT_SINK@ '+5%'
fi

bash ~/.config/hypr/land/scripts/show-volume.sh
