#!/bin/bash
mkdir -p $(xdg-user-dir PICTURES)/Screenshots

if [ $1 == monitor ]
then
	if [ $2 == save ]
	then
		grim $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s.png')
	else
		grim - | wl-copy
	fi
else
	if [ $2 == save ]
	then
        wayfreeze --after-freeze-cmd 'grim -g "$(slurp)"  $(xdg-user-dir PICTURES)/Screenshots/$(date +"%s.png"); killall wayfreeze'
	else
        wayfreeze --after-freeze-cmd 'grim -g "$(slurp)" - | wl-copy; killall wayfreeze'
	fi
fi
