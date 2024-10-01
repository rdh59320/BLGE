#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : GPU supplier check script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin GPU_Check script

# Creating local installation variables files in User directory
mkdir /home/$USER/.BeLGE/Var/GPU

# Condition GPU is neither amd, intel nor nvidia=> GPU variable is set to 0
echo "0" > /home/$USER/.BeLGE/Var/GPU/GPU;

# Graphics used device (Device-1) request from inxi function (file will be empty if request of the main device is not affected to the target supplier)

inxi -G | grep "Device-1" | grep "AMD" > /home/$USER/.BeLGE/Var/GPU/AMD
inxi -G | grep "Device-1" | grep "Intel" > /home/$USER/.BeLGE/Var/GPU/Intel
inxi -G | grep "Device-1" | grep "NVIDIA" > /home/$USER/.BeLGE/Var/GPU/NVIDIA

amd='cat /home/$USER/.BeLGE/Var/GPU/AMD'
intel='cat /home/$USER/.BeLGE/Var/GPU/Intel'
nvidia='cat /home/$USER/.BeLGE/Var/GPU/NVIDIA'

# Variables simplification into boolean (empty=0, non-empty=1)

# Case AMD file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)
if [ ! -s "$amd" ] then 
    echo "0" > /home/$USER/.BeLGE/Var/GPU/AMD;

else 
    echo "amd" > /home/$USER/.BeLGE/Var/GPU/GPU;
	
fi;

# Case Intel file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)
if [ ! -s "$intel" ] then 
    echo "0" > /home/$USER/.BeLGE/Var/GPU/Intel;

else 
    echo "intel" > /home/$USER/.BeLGE/Var/GPU/GPU;
	
fi;
	
# Case NVIDIA file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)	
if [ ! -s "$nvidia" ] then 
    echo "0" > /home/$USER/.BeLGE/Var/GPU/NVIDIA;

else 
    echo "nvidia" > /home/$USER/.BeLGE/Var/GPU/GPU;
	
fi;

# Back to main script
# End of the script
