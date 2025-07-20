#!/bin/bash

while true; do
    date_time=$(date +'%Y-%m-%d %X')
    
    # Get battery percentage (works on most Linux systems)
    if [ -f /sys/class/power_supply/BAT0/capacity ]; then
        battery=$(cat /sys/class/power_supply/BAT0/capacity)
        # Check if battery is charging
        charging_indicator=""
        if [ -f /sys/class/power_supply/BAT0/status ]; then
            charging_status=$(cat /sys/class/power_supply/BAT0/status)
            if [ "$charging_status" = "Charging" ]; then
                charging_indicator="-C"
            fi
        fi
    elif [ -f /sys/class/power_supply/BAT1/capacity ]; then
        battery=$(cat /sys/class/power_supply/BAT1/capacity)
        # Check if battery is charging
        charging_indicator=""
        if [ -f /sys/class/power_supply/BAT1/status ]; then
            charging_status=$(cat /sys/class/power_supply/BAT1/status)
            if [ "$charging_status" = "Charging" ]; then
                charging_indicator="-C"
            fi
        fi
    else
        battery="N/A"
        charging_indicator=""
    fi
    
    echo "$date_time | $battery%$charging_indicator"
    #echo "$date_time"
    sleep 1
done
