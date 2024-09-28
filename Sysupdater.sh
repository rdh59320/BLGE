#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : System updater app
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Script begining #

echo -e "\n Full System Updater \n"
echo ""
echo "Update the System : Press any Key (Default)"
echo "Quit the System Updater : Press Q"
echo ""
read -p "Choose what to do then [Entrée] : " request
echo ""

# Demande de sortie

if [ "$request" = "q" -o "$request" = "Q" ]
then
     echo -e "\n\n You choose not to update the system \n\n"
     echo -e "\n\n Good Bye ! \n\n"
     sleep 1
     exit
fi

# ClamAV database
echo -e "\n\n Updating ClamAV database \n\n"
sudo systemctl stop clamav-freshclam
sleep 1
sudo freshclam
sleep 1
sudo systemctl start clamav-freshclam

# APT
echo -e "\n\n APT updates \n\n"

sudo aptitude update
sudo aptitude -y full-upgrade
sudo apt -y autoremove --purge
sudo apt autoclean

# MAJ dépôts Snap

echo -e "\n\n Snap updates \n\n"

sudo snap refresh

# MAJ dépôts Snap

echo -e "\n\n Flatpak updates \n\n"

flatpak update -y
flatpak uninstall --unused

echo -e "\n\n System updates are completed \n\n"

# Demande de reboot

echo -e "Would you like to reboot your system ? \n\n"

read -p "Press [y] or [Y] then [ENTER] to reboot :" rep

if [ "$rep" = "O" -o "$rep" = "o" -o "$rep" = "y" -o "$rep" = "Y" ]

# Reboot

     then echo -e "\n\n Reboot is ongoing \n\n"
     sleep 2
     sudo reboot

else

# No Reboot
     echo -e "\n\n System reboot not requested \n\n"
     sleep 2

fi 

exit

# End of the script # 
