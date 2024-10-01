#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : WineHQ staging installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

### Installation of the WineHQ PPA for the suitable distro

echo -e "\n\n Adding WineHQ sources to Ubuntu \n\n"

mkdir -pm755 /etc/apt/keyrings
wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key

# Condition to download the right PPA key according to your OS (variable OS previously generated)

Distro='cat /home/$USER/.BeLGE/Var/OS/OS'
wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/$Distro/winehq-$Distro.sources

echo -e "\n\n Installing Wine-HQ staging on your System \n\n"
apt update
apt install --install-recommends winehq-staging -y
sleep 1

# End script

