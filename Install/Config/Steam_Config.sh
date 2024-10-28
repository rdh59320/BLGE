#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : Steam Installation script
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

# Steam Debian package Installation
echo -e "\n\n Downloading latest Steam debian package \n\n"

if ! wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb; then
    echo "Failed to download Steam package. Please check your internet connection."
    exit 1
fi

if ! sudo gdebi -n ~/steam.deb; then
    echo "Failed to install Steam package. Please check the error messages above."
    exit 1
fi

rm ~/steam.deb
echo -e " \n\nSteam has been pre-installed on your System \n\n"

# ProtonUp-Qt Installation via Flatpak as recommended by Davidotek

echo -e "\n\n Installing Lutris and ProtonUp-Qt dependencies \n\n"
sudo apt install git unzip xdotool xxd yad scummvm inotify-tools libssl-dev dosbox timidity lutris -y --install-recommends 
echo -e "\n\n Installing ProtonUp-Qt compatibility tool \n\n"
if ! flatpak install flathub net.davidotek.pupgui2 -y; then
    echo "Failed to install ProtonUp-Qt. Please check the error messages above."
    exit 1
fi

echo -e "\n\n ProtonUp-Qt is now installed on your system \n\n"

echo "Steam and ProtonUp-Qt installation completed successfully."

# End script
