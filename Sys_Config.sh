#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : System configuration script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

### Installation of the dep pacakages and sources

## OS optimization

echo -e "\n\n\n OS Optimization \n\n"

# Swappiness  and max_map_count values in a custom file 
 
# Swappiness decreased to 10% instead of 60% 
echo vm.swappiness=10 | tee -a /etc/sysctl.d/99-sysctl.conf

# Max map count increased to 1048576 such as in Steam Plateform please see (https://discourse.ubuntu.com/t/any-negative-thoughts-about-raising-vm-max-map-count/42044) 
echo vm.max_map_count=2147483642 | tee -a /etc/sysctl.d/99-sysctl.conf

# Loading custom VM file in system configuration
sysctl -p /etc/sysctl.d/99-sysctl.conf

# Updating system with x86 architecture added then install xterm, numlockx, tlp, aptitude, gdebi, flatpak and linux-lowlatency

echo " \n\n Adding 32 bits architecture for package compatibility \n\n And first updating system \n\n "	
dpkg --add-architecture i386
apt update
apt -y full-upgrade
# Install the useful dep prog
apt install -y xterm numlockx tlp aptitude gdebi-core flatpak flatpak gnome-software-plugin-flatpak linux-lowlatency clamav clamtk clamav-daemon gedit
# Updating Snap
snap refresh
sleep 1
#Adding flathub repo for more applications available to the user after rebooting
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo -e "\n\n\n  System is Now Updated \n\n\n"
sleep 1
echo -e "\n Downloading and Building the Package \n"

# Adding TLP to enhance power management
systemctl enable tlp && sudo tlp start
sleep 1

# End script

