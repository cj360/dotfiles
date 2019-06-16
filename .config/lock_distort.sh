#! /usr/bin/env bash
tmpbg="/tmp/screen.png"
scrot "$tmpbg"; corrupter -mag 1 "$tmpbg" "$tmpbg"
i3lock -k --timestr="%I:%M" -i "$tmpbg"; rm "$tmpbg"