#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : GPU Drivers script
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

## Getting the GPU supplier variable
GPU=$(cat "/opt/BeLGE/Var/GPU")

## Applying the right PPA according to the detected GPU

# Case where AMD or Intel is the main GPU supplier
if [ "$GPU" = "AMD" ] || [ "$GPU" = "Intel" ]; then
    echo -e "\n\n\n Adding Intel/AMD Mesa/Vulkan Drivers\n\n\n"
    sudo add-apt-repository ppa:kisak/kisak-mesa -y
    sudo apt update
    sudo apt install libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 -y
    
# Case where NVIDIA is the main GPU supplier
elif [ "$GPU" = "NVIDIA" ]; then
    echo -e "\n\n\n Adding NVIDIA Drivers \n\n\n"
    sudo apt update
    sudo apt install nvidia-driver-550 libvulkan1 libvulkan1:i386 -y
else
    echo "Unsupported GPU type: $GPU"
    exit 1
fi

echo "GPU drivers installation completed successfully."

# End script
