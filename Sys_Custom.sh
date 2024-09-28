#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : BeLGE package appliaction and customization script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

## Xterm configuration for apps use
mv /opt/BeLGE/App/.Xresources
chown $USER ~/.Xresources
xrdb -merge ~/.Xresources

## Adding new apps on the system

# Defining path to desktop to send a desktop shortcut
Desktop_path=$(xdg-user-dir DESKTOP)

### SysUpdater
cp /opt/BeLGE/App/Sys_Update/Sysupdater.desktop $Desktop_path/
cp /opt/BeLGE/App/Sys_Update/Sysupdater.desktop /usr/share/applications/
chown $USER $Desktop_path/Sysupdater.desktop
chown $USER /usr/share/applications/Sysupdater.desktop

### CPU Switcher
cp /opt/BeLGE/App/CPU_Switch/CPU_switch.desktop $Desktop_path/
cp /opt/BeLGE/App/Sys_Update/CPU_switch.desktop /usr/share/applications/
chown $USER $Desktop_path/CPU_switch.desktop
chown $USER /usr/share/applications/CPU_switch.desktop

### ClamAV
cp /opt/BeLGE/App/CPU_Switch/CPU_switch.desktop $Desktop_path/
cp /opt/BeLGE/App/Sys_Update/CPU_switch.desktop /usr/share/applications/
chown $USER $Desktop_path/CPU_switch.desktop
chown $USER /usr/share/applications/CPU_switch.desktop

## Grub customization
mkdir /boot/grub/Images
cp /opt/BeLGE/App/Grub/BeLGE_wallpaper.jpg /boot/grub/Images
cp -f /opt/BeLGE/App/Grub/grub /etc/default/grub
sleep
update-grub

# End script

