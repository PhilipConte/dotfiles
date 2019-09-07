#!/bin/bash

another=$(echo "LOGOUT
SUSPEND
REBOOT
POWEROFF" | awk '{print $(NF-1)}' | rofi -theme android_notification -dmenu -l 4 -i -p "SYSTEM")

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

