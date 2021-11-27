#!/bin/sh

## Script which is run when startx is starting X11 Server

# Initial setup
setbg                   # Setting background
xset r rate 300 50 &    # Speed xrate up
dwmblocks &             # Status bar

autostart="xcompmgr dunst"

for program in $autostart; do
  pidof -s "$program" || "$program" &
done >/dev/null 2>&1

ssh-agent dwm
