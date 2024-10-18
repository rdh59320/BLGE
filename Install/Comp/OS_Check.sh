#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : OS compatibility check script
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

# Ubuntu version detection
if grep -q "UBUNTU_CODENAME=focal" /etc/os-release; then
    echo "focal" > "/opt/BeLGE/Var/OS"
    echo "Detected Ubuntu 20.04 (Focal Fossa)"
elif grep -q "UBUNTU_CODENAME=jammy" /etc/os-release; then
    echo "jammy" > "/opt/BeLGE/Var/OS"
    echo "Detected Ubuntu 22.04 (Jammy Jellyfish)"
elif grep -q "UBUNTU_CODENAME=noble" /etc/os-release; then
    echo "noble" > "/opt/BeLGE/Var/OS"
    echo "Detected Ubuntu 24.04 (Noble Numbat)"
else
    echo "0" > "/opt/BeLGE/Var/OS"
    echo "Unsupported Ubuntu version detected. BeLGE requires Ubuntu 20.04, 22.04, or 24.04 LTS."
fi

# End script
