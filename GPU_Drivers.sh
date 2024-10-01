#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : GPU Drivers script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

## Getting the GPU supplier variable
GPU='cat /home/$USER/.BeLGE/Var/GPU/GPU'
## Applying the right PPA according to the detected GPU

# Case where AMD or Intel is the main GPU supplier (variables has been dowloaded above when checking GPU supplier)
if [ "$GPU" = "AMD" -o "$GPU" = "Intel" ]
	then echo -e "\n\n\n Adding Intel/AMD Mesa/Vulkan Drivers\n\n\n" ;
	sudo add-apt-repository ppa:kisak/kisak-mesa -y;
	sudo apt update;
	sudo apt -y full-upgrade;
	sudo apt install -y libgl1-mesa-dri:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386;
    	
# Case where NVIDIA is the main GPU supplier
elif [ "$GPU" = "NVIDIA" ] 
	then echo -e "\n\n\n Adding  NVIDIA Drivers \n\n\n";
	sudo add-apt-repository ppa:graphics-drivers/ppa -y;
	sudo apt update;
	sudo apt -y full-upgrade;
	sudo apt install -y nvidia-driver-535 libvulkan1 libvulkan1:i386;
fi;
	
# End script

