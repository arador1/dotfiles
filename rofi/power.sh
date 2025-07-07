#! /usr/bin/bash
#
chosen=$(printf "󰐥 Power Off\n Restart" | rofi -dmenu -i -l 3)
case "$chosen" in
"󰐥 Power Off") loginctl poweroff ;;
" Restart") loginctl reboot ;;
*) exit 1 ;;
esac
