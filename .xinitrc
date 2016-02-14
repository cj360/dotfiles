#! /bin/bash
# my .xinitrc config
# start dbus
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xrdb -merge .Xresources

# start wm/de
#exec startxfce4
#xset s off
#xset -dpms
#xset s noblank
#exec i3
