#!/bin/bash
current_monitor="";

hyprctl monitors |
	while IFS= read -r line; do
		if [[ $line = "Monitor "* ]]; then
			current_monitor=$(echo $line | cut -f 2 -d' ')
		fi

		if [[ $line = *"focused: "* ]]; then
			if [ $(echo $line | cut -f 2 -d' ') == "yes" ]; then
				hyprshot -m $current_monitor -m output
			fi
		fi
	done
