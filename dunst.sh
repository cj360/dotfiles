#!/bin/sh

mkdir -p  "${HOME}/.config/dunst"
ln -sf    "${HOME}/.cache/wal/dunstrc"    "${HOME}/.config/dunst/dunstrc"

# Restart dunst with the new color scheme
pkill dunst
dunst &