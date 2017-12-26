#!/bin/bash

# if player is playing: pause it
if playerctl status | grep Playing; then
	resume=1
	playerctl pause
fi

xset +dpms
xset dpms 10
i3lock -n -c 000000
xset -dpms

# if player was paused before lock: resume it
if [ $resume = 1 ]; then
	playerctl play
fi
