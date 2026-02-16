#!/usr/bin/bash

# Threshold battery percentage
THRESHOLD=100

# Function to get battery percentage
get_battery() {
     # Fallback: read from /sys/class/power_supply
    BAT_PATH=$(find /sys/class/power_supply/ -name "BAT*" -type d | head -1)
    if [ -f "$BAT_PATH/capacity" ]; then
    BATTERY=$(cat "$BAT_PATH/capacity")
    else
        echo "Battery information not found."
        exit 1
    fi
    echo "$BATTERY"
}

# Get current battery level
BATTERY_LEVEL=$(get_battery)

# Compare with threshold
if [ "$BATTERY_LEVEL" -le "$THRESHOLD" ]; then
    # Notify using notify-send (install libnotify if needed)
        notify-send "Battery Low" "Battery is at ${BATTERY_LEVEL}%!"
        espeak "Battery is at ${BATTERY_LEVEL} percent"
fi