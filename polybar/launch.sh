#!/usr/bin/env bash
polybar-msg cmd quit || killall -q polybar
#killall -q polybar
echo "---" | tee -a /tmp/polybar1.log
#polybar fake 2>&1 | tee -a /tmp/polyfake.log & disown
#sleep 0.2
#polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
if type "xrandr" > /dev/null; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    if [ "$m" = "eDP-1-1" ]; then
      MONITOR=$m polybar --reload laptop &
    else
     MONITOR=$m polybar --reload monitor & 
    fi
  done
else
  polybar --reload bar1 &
fi

echo "Bars Lanuched..."
