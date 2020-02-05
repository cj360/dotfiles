#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
echo "---" | tee -a /tmp/polybar-current.log
polybar -c ~/.config/polybar/config-current top >>/tmp/polybar-current.log 2>&1 &
echo "Bars launched"