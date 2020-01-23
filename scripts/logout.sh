#!/bin/bash

another=$(echo "LOGOUT
SUSPEND
REBOOT
POWEROFF" | awk '{print $(NF-1)}' | rofi -theme ~/.cache/wal/rofi -dmenu -l 4 -i -p "SYSTEM")

if [ "$another" == "LOGOUT" ] ; then
	i3-msg exit
elif [ "$another" == "SUSPEND" ] ; then
	systemctl suspend;
elif [ "$another" == "REBOOT" ] ; then
	systemctl reboot
elif [ "$another" == "POWEROFF" ] ; then
	systemctl poweroff

else
    echo $another
fi

