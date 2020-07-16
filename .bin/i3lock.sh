#!/bin/bash

#icon="$HOME/.config/i3/lock.png"
img="$HOME/.cache/i3lock.png"

maim $img
# Pixelate image
convert $img -scale 10% -scale 1000% $img
# Blur image
#convert $img -blur 0x4 500% $img
#convert $img $icon -gravity center -composite $img
i3lock -u -i $img -e --clock --timestr="%I:%M" --timecolor=ffffffff --timesize=30 --datecolor=ffffffff --datesize=30 -B=30
