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
echo -e "\n\n Adding Steam installer package and \n\n Other dependency packages for compatibility tools \n\n"

sudo apt install -y git unzip xdotool xxd yad scummvm inotify-tools libssl-dev dosbox timidity steam-installer

echo -e "\n\n Installing ProtonUp-Qt compatibility tool \n\n"
flatpak install flathub net.davidotek.pupgui2 -y

echo "Steam and ProtonUp-Qt installation completed successfully."

# End script
