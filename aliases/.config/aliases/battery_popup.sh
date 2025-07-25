#!/bin/bash

# battery_popup.sh

BAT_PATH="/sys/class/power_supply/BAT0"
STATUS=$(cat "$BAT_PATH/status")
CAPACITY=$(cat "$BAT_PATH/capacity")

dunst &
notify-send "🔋 Battery $STATUS" "Charge: ${CAPACITY}%"

