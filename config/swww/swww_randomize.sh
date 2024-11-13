#!/bin/bash

#随机壁纸
# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix

#~ if [[ $# -lt 1 ]] || [[ ! -d $1   ]]; then
#~ echo "Usage:
#~ $0 <dir containing images>"
#~ exit 1
#~ fi

WALLPAPER_DIR="/home/arch/Pictures/background"

# Edit below to control the images transition
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=2

# This controls (in seconds) when to switch to the next image
INTERVAL=66

while true; do
	find "$WALLPAPER_DIR" |
		while read -r img; do
			echo "$((RANDOM % 1000)):$img"
		done |
		sort -n | cut -d':' -f2- |
		while read -r img; do
			swww img "$img"
			sleep $INTERVAL
		done
done
