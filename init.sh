#!/bin/bash

. ~/scpt/keybind.sh
[[ -n "$DISPLAY" ]] && setxkbmap gb

if ! [[ -n "$DISPLAY" ]]; then
	if [[ `tty` =~ '^/dev/tty1$' ]]; then 
		read "?startx? "
		echo
		if [[ $REPLY =~ '^[Yy]$' ]]; then
			startx
		else
			screen
		fi
	elif [[ `tty` =~ '^/dev/tty[2-6]$' ]]; then
		screen
	fi
fi
