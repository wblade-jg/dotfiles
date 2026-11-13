#!/bin/sh

mkdir -p ~/Pictures/Screenshots
path=~/Pictures/Screenshots/$(date +'%s_screenshot.png')
grim -g "$(slurp)" "$path"
notify-send -i camera-photo "Screenshot" "Saved to $path"