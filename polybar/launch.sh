#!/usr/bin/env bash
polybar-msg cmd quit || killall -q polybar
#killall -q polybar
echo "---" | tee -a /tmp/polyfake.log /tmp/polybar1.log
#polybar fake 2>&1 | tee -a /tmp/polyfake.log & disown
#sleep 0.2
polybar bar1 2>&1 | tee -a /tmp/polybar1.log & disown
echo "Bars Lanuched..."
