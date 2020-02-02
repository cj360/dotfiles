#!/usr/bin/env bash
#killall -q polybar
#while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
#echo "---" | tee -a /tmp/polybar1.log
#polybar example >>/tmp/polybar1.log 2>&1 &
#polybar bclock >>/tmp/polybar2.log 2>&1 &
#polybar bdate >>/tmp/polybar3.log 2>&1 &
#echo "Bars up."

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# Launch Polybar, using default config location ~/.config/polybar/config
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log 
polybar left >>/tmp/polybar1.log 2>&1 &
polybar center >>/tmp/polybar2.log 2>&1 &
polybar right >>/tmp/polybar3.log 2>&1 &
echo "Polybar launched..."