#! /bin/bash
# my .xinitrc config
# start dbus
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

numlockx &
xrdb -merge .Xresources
exec i3
