#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [[ -f ~/.Xresources ]]; then
  xrdb -load ~/.Xresources
fi

source ~/.cache/wal/colors-tty.sh
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
xrandr -d :0 --output DP-4 --auto
xsetroot -cursor_name left_ptr
exec bspwm
