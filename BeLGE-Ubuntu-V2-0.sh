#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : BeLGE package installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin Install script

## MUST BE RUN AS ROOT

# if user is not running the command as root

if [ "$UID" -ne 0 ] then
# output message if user has not root priviledges
    echo "Please run the installer with SUDO!"
        # stop script         
    exit
fi

### Package Installation Request

echo -e "\n\n\n   Be.L.G.E V2.0 aka  \n\n\n"
echo -e "\n\n   Better Linux Gaming Experience   \n\n"
echo -e "\n\n   Avalaible for UBUNTU 20.04, 22.04 and 24.04 LTS \n\n"
echo -e "\n\n   EXPERIMENTAL Package for Steam installation with GE-Proton \n\n"

# Request for Package installation
read -p " Type y or Y then press [y/Y] to install or anyother key to quit [DEFAULT] : " repstart

if [ $repstart != "y" -o $repstar != "Y" ] then 
    echo -e "\n\n Package won't be installed \n\n";
    echo " Good Bye \!\!\!";
    echo -e "\n\n";
    sleep 2;
    exit;
fi;

# Install wget curl, inxi & xz-utils for system infos, package download and extraction

echo -e "\n\n  Please wait while the program is loading \n\n"
echo -e "\n\n  the required packages for compatibilty analysis \n\n"
sleep 1

apt update 
apt -y install inxi curl wget xz-utils

# Downloading package archive and extraction into the opt directory then removing archive 

cd opt/
wget -O BeLGE.tar.xz https://github.com/rdh59320/BeLGE/releases/download/BeLGE-V2-0/BeLGE.tar.xz
sleep 1
tar -Jxvf BeLGE.tar.xz -C /opt/
sleep 1
rm BeLGE.tar.xz

echo -e "\n\n  Package has been downloaded \n\n"

# Making every script file executables

chmod +x /opt/BeLGE/Install/Comp/*
chmod +x /opt/BeLGE/Install/Config/*

### Compatibility Scripts

## OS check script
bash /opt/BeLGE/Install/Comp/OS_Check.sh

## GPU compatibility check script
bash /opt/BeLGE/Install/Comp/GPU_Check.sh

# Processing the compatibility test with previous scripts variables
## Getting OS and GPU check variables
OS='cat /home/$USER/.BeLGE/Var/OS/OS'
GPU='cat /home/$USER/.BeLGE/Var/GPU/GPU'

## Checking OS is compatible 
if [ $OS = "0" ] then 
    echo -e "Your OS is not supported \n\n Programm must stop now \n\n Package will be deleted from your system \n\n";
    sleep 1;
    rm -rf /opt/BeLGE;
    rm -rf /home/$USER/.BeLGE;
    sleep 3;
    exit;
fi

## Checking GPU is compatible 
if [ $GPU = "0" ] then 
    echo -e "Your GPU is not supported \n\n Programm must stop now \n\n Package will be deleted from your system \n\n";
    sleep 1;
    rm -rf /opt/BeLGE;
    rm -rf /home/$USER/.BeLGE;
    sleep 3;
    exit;
fi

## Confirmation request of the package installation

echo -e "\n\n\n  Your system is suitable for installation \n\n\n Would you like to install the BeLGE package ? \n Type n or N then press [ENTER] to abort installation \n"
read -p " Or press Any Other Key to Continue [DEFAULT] : " repinstall

if [ $repinstall = "n" -o $repinstall = "N" ] then 
    echo -e "\n\n Installation has been aborted \n\n Program will shutdown now and \n\n Package will be deleted from your system \n\n";
    sleep 1;
    rm -rf /opt/BeLGE;
    rm -rf /home/$USER/.BeLGE
    sleep 3;
    exit;
fi

# System configuration script
bash /opt/BeLGE/Install/Config/Sys_Config.sh

# WineHQ configuration script
bash /opt/BeLGE/Install/Config/WineHQ.sh

# GPU drivers configuration script
bash /opt/BeLGE/Install/Config/GPU_Drivers.sh 

# Steam Debian package Installation
bash /opt/BeLGE/Install/Config/Steam_Config.sh 

# System Customization
bash /opt/BeLGE/Install/Config/Sys_Custom.sh

# Last update then reboot

echo -e "\n\n System is now prepared and \n\n"

echo -e "\n\n\n Desktop shortcut added to finalize \n\n" 

echo -e "\n\n BeLGE package Installation after System Reboot \n\n"

echo -e "\n\n\n Last Update before Restart \n\n\n"

apt update
apt full-upgrade
apt -y autoremove --purge

echo -e "\n\n\n Let's Reboot to apply all Updates \n\n\n"


read -p " Press any key to launch the system reboot : " reboot

# Install script autoremove before reboot 

rm -rf /home/$USER/.BeLGE
rm -f BeLGE_Install.sh
echo -e "\n\n System is rebooting \n\n"
sleep 1
reboot

# End script
