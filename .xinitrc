#!/bin/sh

## Script which is run when startx is starting X11 Server

# Initial setup
setbg &                 # Setting background
xset r rate 300 50 &    # Speed xrate up

autostart="xcompmgr dunst dwmblocks"

for program in $autostart; do
  pidof -s "$program" || setsid -f "$program"
done >/dev/null 2>&1

ssh-agent dwm
