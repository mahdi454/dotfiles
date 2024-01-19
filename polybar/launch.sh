#!/usr/bin/env bash

# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch polybar
polybar top &

if [[ $(xrandr -q | grep 'HDMI-1 connected') ]]; then
	polybar top_ext &
fi

sleep 1
xdo lower -N Polybar
