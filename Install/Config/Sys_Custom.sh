#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : BeLGE package application and customization script
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

## Xterm configuration for apps use
sudo cp /opt/BeLGE/Install/Resources/.Xresources ~/.Xresources
sudo chown $USER:$USER ~/.Xresources
xrdb -merge ~/.Xresources

## Adding new apps on the system

# Defining path to desktop to send a desktop shortcut
Desktop_path=$(xdg-user-dir DESKTOP)

## Copy destop shortcut to Desktop and applications directories with change of owner and allowing exection
### SysUpdater
sudo cp /opt/BeLGE/App/Sys_Update/Sysupdater.desktop $Desktop_path
sudo chown $USER $Desktop_path/Sysupdater.desktop
sudo chmod +x $Desktop_path/Sysupdater.desktop

sudo cp /opt/BeLGE/App/Sys_Update/Sysupdater.desktop /usr/share/applications 
sudo chown $USER:$USER /usr/share/applications/Sysupdater.desktop 
sudo chmod +x /usr/share/applications/Sysupdater.desktop

### CPU Switcher
sudo cp /opt/BeLGE/App/Sys_Update/CPU_switch.desktop $Desktop_path 
sudo chown $USER:$USER $Desktop_path/CPU_switch.desktop 
sudo chmod +x $Desktop_path/CPU_switch.desktop

sudo cp /opt/BeLGE/App/Sys_Update/CPU_switch.desktop /usr/share/applications 
sudo chown $USER:$USER /usr/share/applications/CPU_switch.desktop 
sudo chmod +x /usr/share/applications/CPU_switch.desktop

### ClamAV
sudo cp /opt/BeLGE/App/Sys_Update/ClamAV.desktop $Desktop_path 
sudo chown $USER:$USER $Desktop_path/ClamAV.desktop 
sudo chmod +x $Desktop_path/ClamAV.desktop

sudo cp /opt/BeLGE/App/Sys_Update/ClamAV.desktop /usr/share/applications 
sudo chown $USER:$USER /usr/share/applications/ClamAV.desktop 
sudo chmod +x /usr/share/applications/ClamAV.desktop

echo -e "\n\n BeLGE Apps installed successfully \n\n"

## Grub customization
sudo mkdir -p /boot/grub/Images
sudo cp /opt/BeLGE/Install/Resources/BeLGE_wallpaper.jpg /boot/grub/Images/
sudo cp -f /opt/BeLGE/Install/Resources/grub /etc/default/grub
sudo update-grub

echo -e "\n\n System customization completed successfully \n\n"

# End script
