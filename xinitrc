#!/bin/bash
# https://blog.dbrgn.ch/2012/1/19/dwm-config-volume-battery-notification-unread-e-mail-count-more/
while true; do
	xsetdwmtitle
	sleep 5s
done &

export BROWSER=google-chrome
setupkeyboard &
numlockx &
xscreensaver -no-splash &
display1080

exec dwm
