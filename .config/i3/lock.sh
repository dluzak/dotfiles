#!/bin/bash

# if player is playing: pause it
if playerctl status | grep Playing; then
	resume=1
	playerctl pause
fi

i3lock -n -c 000000

# if player was paused before lock: resume it
if [ $resume = 1 ]; then
	playerctl play
fi
