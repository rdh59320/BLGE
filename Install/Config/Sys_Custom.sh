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
if [ -f /opt/BeLGE/App/.Xresources ]; then
    sudo mv /opt/BeLGE/App/.Xresources ~/.Xresources
    sudo chown $USER:$USER ~/.Xresources
    xrdb -merge ~/.Xresources
else
    echo "Warning: .Xresources file not found. Skipping Xterm configuration."
fi

## Adding new apps on the system

# Defining path to desktop to send a desktop shortcut
Desktop_path=$(xdg-user-dir DESKTOP)

# Function to copy and set permissions for .desktop files
copy_desktop_file() {
    local src="$1"
    local dest_dir="$2"
    local filename=$(basename "$src")
    
    if [ -f "$src" ]; then
        sudo cp "$src" "$dest_dir/"
        sudo chown $USER:$USER "$dest_dir/$filename"
    else
        echo "Warning: $src not found. Skipping."
    fi
}

### SysUpdater
copy_desktop_file "/opt/BeLGE/App/Sys_Update/Sysupdater.desktop" "$Desktop_path"
copy_desktop_file "/opt/BeLGE/App/Sys_Update/Sysupdater.desktop" "/usr/share/applications"

### CPU Switcher
copy_desktop_file "/opt/BeLGE/App/CPU_Switch/CPU_switch.desktop" "$Desktop_path"
copy_desktop_file "/opt/BeLGE/App/CPU_Switch/CPU_switch.desktop" "/usr/share/applications"

### ClamAV
copy_desktop_file "/opt/BeLGE/App/ClamAV/ClamAV.desktop" "$Desktop_path"
copy_desktop_file "/opt/BeLGE/App/ClamAV/ClamAV.desktop" "/usr/share/applications"

## Grub customization
sudo mkdir -p /boot/grub/Images
sudo mv /opt/BeLGE/App/BeLGE_wallpaper.jpg /boot/grub/Images/
sudo mv -f /opt/BeLGE/App/grub /etc/default/grub
sudo update-grub

echo "System customization completed successfully."

# End script
