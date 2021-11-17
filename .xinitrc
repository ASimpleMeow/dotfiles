#!/bin/sh

## Script which is run when startx is starting X11 Server

# Initial setup
setbg                   # Setting background
xcompmgr &              # Starting compositor for transparency
dunst &                 # Starting dunst for notifications
xset r rate 300 50 &    # Speed xrate up
#dwmblocks &

while :; do
  ssh-agent dwm
done
