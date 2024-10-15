#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : BeLGE package installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.1

set -e  # Exit immediately if a command exits with a non-zero status.

# Function for error handling
handle_error() {
    echo "Error occurred in script at line: $1"
    exit 1
}

trap 'handle_error $LINENO' ERR

# Begin Install script

## Package Installation Request

echo -e "\n\n\n   Be.L.G.E V2.0 aka  \n\n\n"
echo -e "\n\n   Better Linux Gaming Experience   \n\n"
echo -e "\n\n   Available for UBUNTU 22.04 and 24.04 LTS \n\n"
echo -e "\n\n   EXPERIMENTAL Package for Steam installation with ProtonUp-Qt\n\n"

# Request for Package installation
read -p " Type y/Y to install or q/Q to quit then press [ENTER] :  " repstart

## Agreement to installation or exit confirmation
confirm=false

while [ "$confirm" = false ]; do

    if [ "$repstart" = "q" ] || [ "$repstart" = "Q" ]; then
        echo -e "\n\n Package won't be installed \n\n"
        echo " Good Bye !!!"
        echo -e "\n\n"
        sleep 2 
        exit 0
        
    elif [ "$repstart" = "y" ] || [ "$repstart" = "Y" ]; then
        echo -e "\n\n Package Installation Starting \n\n Your system needs to be compatible to continue the process  \n\n"
        break
    
    else
        echo -e "\n\n Only q,Q,y and Y are valid answers. \n\n"
        read -p " Type y/Y to install or q/Q to quit then press [ENTER] :  " repstart
    fi
    
done

# Install wget curl, inxi & xz-utils for system infos, package download and extraction

echo -e "\n\n  Please wait while the program is applying updates and \n\n"
echo -e "\n\n  installing the required packages for compatibility analysis \n\n"
sleep 1

sudo apt update
sudo apt full-upgrade -y
sudo apt install -y inxi curl wget xz-utils

# Downloading package archive and extraction into the opt directory then removing archive 

cd /opt || exit 1
if ! sudo wget -O BeLGE.tar.xz https://github.com/rdh59320/BeLGE/releases/download/BeLGE-V2-0/BeLGE.tar.xz; then
    echo "Failed to download BeLGE package. Please check your internet connection."
    exit 1
fi

sudo tar -Jxvf BeLGE.tar.xz -C /opt/
sudo rm BeLGE.tar.xz

echo -e "\n\n  Package has been downloaded and extracted \n\n"

# Making every script file executable

sudo chmod +x /opt/BeLGE/Install/Comp/*
sudo chmod +x /opt/BeLGE/Install/Config/*

### Compatibility Scripts

## OS check script
sudo bash /opt/BeLGE/Install/Comp/OS_Check.sh

## GPU check script
sudo bash /opt/BeLGE/Install/Comp/GPU_Check.sh

# Processing the compatibility test with previous scripts variables
## Getting OS and GPU check variables
OS=$(cat "/opt/BeLGE/Var/OS")
GPU=$(cat "/opt/BeLGE/Var/GPU")

# Compatibility check => if OS or GPU var is set to "0" means not compatible then stopping program

if [ "$OS" = "0" ] || [ "$GPU" = "0" ]; then
    echo -e "Your system is not supported \n\n Program must stop now \n\n Package will be deleted from your system \n\n"
    sleep 1
    sudo rm -rf /opt/BeLGE
    sleep 3
    exit 1
fi

## Confirmation request of the package installation

echo -e "\n\n\n  Your system is suitable for installation \n\n\n Would you like to continue installation of the package? \n Type q or Q then press [ENTER] to exit installation \n"
read -p " Or press Any Other Key to Continue [DEFAULT] : " repinstall

if [ "$repinstall" = "q" ] || [ "$repinstall" = "Q" ]; then
    echo -e "\n\n Installation has been aborted \n\n Program will shut down now and \n\n Package will be deleted from your system \n\n"
    sleep 1
    sudo rm -rf /opt/BeLGE
    sleep 3
    exit 0
fi

# System configuration script
sudo bash /opt/BeLGE/Install/Config/Sys_Config.sh

# WineHQ configuration script
sudo bash /opt/BeLGE/Install/Config/WineHQ.sh

# GPU drivers configuration script
sudo bash /opt/BeLGE/Install/Config/GPU_Drivers.sh 

# Steam Debian package Installation
sudo bash /opt/BeLGE/Install/Config/Steam_Config.sh 

# System Customization
bash /opt/BeLGE/Install/Config/Sys_Custom.sh

# Last update then reboot

echo -e "\n\n System is now prepared \n\n"

echo -e "\n\n\n Desktop shortcuts added to finalize \n\n" 

echo -e "\n\n BeLGE package Installation complete \n\n"

echo -e "\n\n\n Last Update before Restart \n\n\n"

sudo aptitude update
sudo aptitude full-upgrade -y
sudo apt autoremove --purge -y

echo -e "\n\n\n System update complete. Ready for reboot \n\n\n"

read -p " Press any key to launch the system reboot : " reboot

# Install script autoremove before reboot 

sudo rm -f /opt/BeLGE_Install.sh
sudo rm -rf /opt/BeLGE/Install
sudo rm -rf /opt/BeLGE/Var
echo -e "\n\n System is rebooting \n\n"
sleep 1 && sudo reboot

# End script
