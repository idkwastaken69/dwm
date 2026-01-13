#!/bin/bash
setxkbmap -layout gb
feh --bg-scale ~/walls/godmadoka.png
picom -b
dwmblocks
until dbus-send --session --dest=org.freedesktop.DBus \
  --type=method_call / org.freedesktop.DBus.ListNames >/dev/null 2>&1
do
  sleep 0.2
done

dunst &
