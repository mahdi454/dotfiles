#!/bin/bash

rofi_poweroff_menu () {
    echo -e " Lock\nLog Out\nReboot\nPower Off" | rofi -font "Iosevka Bold 14" -show drun -show-icons -width 20 -l 4 -dmenu -i
}

chosen=$(rofi_poweroff_menu)

if [[ $chosen = "Log Out" ]]; then
    bspc quit
elif [[ $chosen = "Power Off" ]]; then
	systemctl poweroff
elif [[ $chosen = "Reboot" ]]; then
	systemctl reboot
elif [[ $chosen = " Lock"  ]]; then
	betterlockscreen -l
fi
