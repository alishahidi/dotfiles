#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey nm-applet volumeicon cbatticon blueberry-tray autotiling xfce4-clipman)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# Set wallpaper
feh --bg-fill --randomize /home/ali/Pictures/Wallpapers &

# Lauch notification daemon
~/.config/i3/bin/i3dunst.sh

# Lauch compositor
~/.config/i3/bin/i3comp.sh

autotiling &
blueberry-tray &
cbatticon &
volumeicon &
xfce4-clipman &
nm-applet &
