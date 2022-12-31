#!/bin/bash

kill -0 $(pidof tofi) 2>/dev/null && pkill tofi || 

case "$(echo -e "Lock\nPower Off\nReboot\nUpdate" | tofi --prompt-text "Power:")" in
"Lock") swaylock ;;
"Power Off") exec systemctl poweroff -i ;;
"Reboot") exec systemctl reboot ;;
"Update") exec kitty sudo pacman -Syu --noconfirm ;;
esac

