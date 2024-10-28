#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : System updater app
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.1

set -e

# Function for error handling
handle_error() {
    echo "Error occurred in script at line: $1" >&2
    exit 1
}

trap 'handle_error $LINENO' ERR

# Function to update ClamAV
update_clamav() {
    echo -e "\n\n Updating ClamAV database \n\n"
    sudo systemctl stop clamav-freshclam
    sudo freshclam
    sudo systemctl start clamav-freshclam
}

# Function to update APT packages
update_apt() {
    echo -e "\n\n APT updates \n\n"
    sudo apt update
    sudo apt full-upgrade -y
    sudo apt autoremove --purge -y
    sudo apt autoclean
}

# Function to update Flatpak packages
update_flatpak() {
    echo -e "\n\n Flatpak updates \n\n"
    flatpak update -y
    flatpak uninstall --unused -y
}

# Main execution
echo -e "\n Full System Updater \n"
echo "Update the System: Press any key (Default)"
echo "Quit the System Updater: Press Q"
read -p "Choose what to do then press [Enter]: " request

if [[ "${request,,}" == "q" ]]; then
    echo -e "\n\n You chose not to update the system \n\n"
    echo -e "\n\n Good Bye! \n\n"
    exit 0
fi

update_clamav
update_apt
if [ $(hostnamectl | grep -e 'Operating System' | grep -e 'Ubuntu') = ""; then echo -e " ";
    
else 
    echo -e "\n\n Snap Updates \n\n"
    sudo snap refresh
fi

update_flatpak

echo -e "\n\n System updates are completed \n\n"

# Prompt for reboot
echo -e "Would you like to reboot your system? \n\n"
read -p "Press [y] or [Y] then [ENTER] to reboot: " rep

if [[ "${rep,,}" == "y" ]]; then
    echo -e "\n\n Reboot is ongoing \n\n"
    sleep 2
    sudo reboot
else
    echo -e "\n\n System reboot not requested \n\n"
    sleep 2
fi 

exit 0
