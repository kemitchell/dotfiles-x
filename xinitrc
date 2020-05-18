#!/bin/bash
# https://blog.dbrgn.ch/2012/1/19/dwm-config-volume-battery-notification-unread-e-mail-count-more/
export EDITOR=vim
export BROWSER=google-chrome

setxkbmap -layout "us,ru" -option "ctrl:nocaps" -option "grp:shifts_toggle"

while true; do
	xsetdwmtitle
	sleep 5s
done &

numlockx &
xscreensaver &

exec dwm
