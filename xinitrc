#!/bin/zsh
# https://blog.dbrgn.ch/2012/1/19/dwm-config-volume-battery-notification-unread-e-mail-count-more/
export EDITOR=vim
export BROWSER=google-chrome

setxkbmap -option ctrl:nocaps

while true
do
	x-set-dwm-title
	BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
	STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
  if [[ "$STATUS" == *"Discharging" ]]; then
    if [[ $BATT -le 5 ]]; then
      beep && sleep 0.2
      beep && sleep 0.2
      beep && sleep 0.2
    fi
  fi

	# Update every 10s
	sleep 10s
done &

# xscreensaver &
numlockx &

exec dwm
