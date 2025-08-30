#!/bin/bash
wlogout_running=$(pidof wlogout | wc -l)

if [ $wlogout_running = 0 ]; then
    wlogout
else
    killall wlogout
fi
