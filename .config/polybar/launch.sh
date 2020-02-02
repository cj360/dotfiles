#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
echo "---" | tee -a /tmp/polybar.log
polybar -c ~/.config/polybar/config1 top >>/tmp/polybar.log 2>&1 &
echo "Bars launched"