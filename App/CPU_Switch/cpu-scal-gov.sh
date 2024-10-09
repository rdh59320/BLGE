#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : Script to switch between powersave and performance CPU governors
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.1

set -e

# Function for error handling
handle_error() {
    echo "Error occurred in script at line: $1" >&2
    exit 1
}

trap 'handle_error $LINENO' ERR

# Function to get current CPU governor
get_current_governor() {
    cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
}

# Function to set CPU governor
set_governor() {
    echo "$1" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor > /dev/null
    echo "Governor was switched to $1"
}

# Main script
echo "---CPU-SCALING-GOVERNOR-SWITCHER---"
echo ""
echo "Your CPU is currently configured to use: $(get_current_governor)"
echo ""
echo "What would you like to do?"
echo "Choose [p] or [P] to select Performance Governor"
echo "Choose [s] or [S] to select Powersave Governor"
echo "Choose any other key to keep the current profile"
read -p "Your choice: " cpu_change

case "${cpu_change,,}" in
    p)
        set_governor "performance"
        ;;
    s)
        set_governor "powersave"
        ;;
    *)
        echo "Governor profile kept as: $(get_current_governor)"
        ;;
esac

echo "Operation completed successfully."
sleep 2
exit 0
