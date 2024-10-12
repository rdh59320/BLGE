#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : System configuration script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.1

set -e  # Exit immediately if a command exits with a non-zero status.

# Function for error handling
handle_error() {
    echo "Error occurred in script at line: $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

# Begin script

### Installation of the dep packages and sources

## OS optimization

echo -e "\n\n\n OS Optimization \n\n"

# Swappiness and max_map_count values in a custom file 
 
# Swappiness decreased to 10% instead of 60% 
echo "vm.swappiness=10" | sudo tee -a /etc/sysctl.d/99-sysctl.conf

# Max map count increased to 2147483642
echo "vm.max_map_count=2147483642" | sudo tee -a /etc/sysctl.d/99-sysctl.conf

# Loading custom VM file in system configuration
sudo sysctl -p /etc/sysctl.d/99-sysctl.conf

# Updating system with x86 architecture added then install required packages

echo -e "\n\n Adding 32 bits architecture for package compatibility \n\n And first updating system \n\n"
sudo dpkg --add-architecture i386
sudo apt update
sudo apt -y full-upgrade

# Install the useful dep prog
sudo apt install -y xterm numlockx tlp aptitude gdebi-core flatpak gnome-software-plugin-flatpak linux-lowlatency clamav clamtk clamav-daemon gedit stacer

# Updating Snap
sudo snap refresh

# Adding flathub repo for more applications available to the user after rebooting
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n\n\n System is Now Updated \n\n\n"

# Adding TLP to enhance power management
sudo systemctl enable tlp && sudo tlp start

echo "System configuration completed successfully."

# End script
