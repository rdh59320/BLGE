#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : WineHQ staging installation script
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

### Installation of the WineHQ PPA for the suitable distro

echo -e "\n\n Adding WineHQ sources to Ubuntu \n\n"

sudo mkdir -pm755 /etc/apt/keyrings
if ! sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key; then
    echo "Failed to download WineHQ key. Please check your internet connection."
    exit 1
fi

# Condition to download the right PPA key according to your OS (variable OS previously generated)
Distro=$(cat "/home/$USER/.BeLGE/OS")

if ! sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/$Distro/winehq-$Distro.sources; then
    echo "Failed to download WineHQ sources. Please check your internet connection and OS compatibility."
    exit 1
fi

echo -e "\n\n Installing Wine-HQ staging on your System \n\n"
sudo apt update
if ! sudo apt install --install-recommends winehq-staging -y; then
    echo "Failed to install WineHQ. Please check the error messages above."
    exit 1
fi

echo "WineHQ installation completed successfully."

# End script
