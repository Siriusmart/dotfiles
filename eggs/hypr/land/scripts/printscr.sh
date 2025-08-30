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
		slurp | grim -g -  $(xdg-user-dir PICTURES)/Screenshots/$(date +'%s.png')
	else
		slurp | grim -g - - | wl-copy
	fi
fi
