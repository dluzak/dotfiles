#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep1; done

polybar example &

echo "Bar launched"
