#!/usr/bin/env bash

## Copyright (C) 2020-2022 Aditya Shakya <adi1090x@gmail.com>
## Everyone is permitted to copy and distribute copies of this file under GNU-GPL3
## Autostart Programs

# Kill already running process
_ps=(picom dunst ksuperkey mpd xfce-polkit nm-applet volumeicon cbatticon blueberry-tray autotiling xfce4-clipman)
for _prs in "${_ps[@]}"; do
	if [[ `pidof ${_prs}` ]]; then
		killall -9 ${_prs}
	fi
done

# Fix cursor
xsetroot -cursor_name left_ptr

# Polkit agent
/usr/lib/xfce-polkit/xfce-polkit &

# Enable Super Keys For Menu
ksuperkey -e 'Super_L=Alt_L|F1' &
ksuperkey -e 'Super_R=Alt_L|F1' &

# Restore wallpaper
hsetroot -cover ~/.config/i3/wallpapers/default.png

# Lauch notification daemon
~/.config/i3/bin/i3dunst.sh

# Lauch compositor
~/.config/i3/bin/i3comp.sh

# Start mpd
exec mpd &

autotiling &
blueberry-tray &
cbatticon &
volumeicon &
xfce4-clipman &
sleep 2 && alacritty &
nm-applet &
