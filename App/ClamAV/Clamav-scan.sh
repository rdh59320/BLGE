#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : ClamAV scan script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.1

set -e

red='\e[1;31m'
green='\e[1;32m'
neutral='\e[0m'

log_file="$HOME/log_clamav.txt"

# Function for error handling
handle_error() {
    echo -e "${red}Error occurred in script at line: $1${neutral}" >&2
    exit 1
}

trap 'handle_error $LINENO' ERR

# Check and install dependencies
check_install_dependency() {
    if ! command -v "$1" &> /dev/null; then
        echo -e "${green}Installing $1...${neutral}"
        sudo apt install -y "$1"
    fi
}

check_install_dependency "notify-send"
check_install_dependency "zenity"
check_install_dependency "clamav"

# Update ClamAV database
update_clamav() {
    echo -e "${green}[1/2] UPDATING${neutral}"
    zenity --info --width=300 --height=100 --text="Antivirus Database updates"
    notify-send -i system-software-update "ClamAV" "Updating database"
    
    sudo systemctl stop clamav-freshclam
    sudo freshclam
    sudo systemctl start clamav-freshclam
}

# Perform scan
perform_scan() {
    echo -e "${green}[2/2] SCANNING${neutral}"
    : > "$log_file"
    zenity --info --width=300 --height=100 --text="Choose which directory to scan"
    notify-send -i system-software-update "ClamAV" "Starting scan"
    
    input_dir=$(zenity --file-selection --directory "${HOME}")
    clamscan -r --remove --bell --log="$log_file" "$input_dir"
    
    notify-send -i dialog-ok "ClamAV" "Scan is now complete"
}

# Main execution
update_clamav
perform_scan

# Offer to view log file
if zenity --question --text="Do you want to view the scan log?"; then
    gedit "$log_file"
fi

echo -e "${green}Scan completed. Log file: $log_file${neutral}"
exit 0
