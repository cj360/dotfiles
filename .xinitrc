#!/bin/sh

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

xset +fp /home/andrew/.fonts
xset fp rehash

#export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name left_ptr
exec bspwm
