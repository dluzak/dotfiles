#!/bin/bash
# Script to start spotify when pressing play button if it was off.
if !(ps aux | pgrep spotify); then
	spotify 1>/dev/null &
	sleep 1
fi

playerctl play-pause
