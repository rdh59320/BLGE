#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : Steam Installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

# Steam Debian package Installation
echo -e "\n\n Dowloading latest Steam debian package \n\n"

wget -O ~/steam.deb http://media.steampowered.com/client/installer/steam.deb
sleep 1
gdebi -n ~/steam.deb
sleep 1
rm ~/steam.deb
echo -e " \n\nSteam has been pre-installed on your System \n\n"

# ProtonUp-Qt Installation via Flatpak as recommended by Davidotek

echo -e "\n\n Installing ProtonUp-Qt compatibility tool \n\n"
flatpak install flathub net.davidotek.pupgui2 -y
echo -e "\n\n ProtonUp-Qt is now installed on your system \n\n"

# End script
