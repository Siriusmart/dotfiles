#!/bin/bash

volumes=$(pactl get-sink-volume @DEFAULT_SINK@ | head -n 1)
lvolume=$(echo "$volumes" | cut -f1 -d',' | cut -f2 -d'/' | cut -f1 -d'%' | xargs)
rvolume=$(echo "$volumes" | cut -f2 -d',' | cut -f2 -d'/' | cut -f1 -d'%' | xargs)

avgvolume=$(echo "($lvolume + $rvolume) / 2" | bc)

echo $avgvolume
