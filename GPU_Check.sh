#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : GPU supplier check script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin GPU_Check script

# Condition GPU is neither amd, intel nor nvidia=> GPU variable is set to 0
echo "0" > /opt/BeLGE/Var/GPU/GPU;

# Graphics used device (Device-1) request from inxi function (file will be empty if request of the main device is not affected to the target supplier)

inxi -G | grep "Device-1" | grep "AMD" > /var/opt/BeLGE/GPU/AMD
inxi -G | grep "Device-1" | grep "Intel" > /var/opt/BeLGE/GPU/Intel
inxi -G | grep "Device-1" | grep "NVIDIA" > /var/opt/BeLGE/GPU/NVIDIA

amd='cat /var/opt/BeLGE/GPU/AMD'
intel='cat /var/opt/BeLGE/GPU/Intel'
nvidia='cat /var/opt/BeLGE/GPU/NVIDIA'

# Variables simplification into boolean (empty=0, non-empty=1)

# Case AMD file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)
if [ ! -s "$amd" ] 
	then
	else echo " Your GPU is supplied by AMD";
	echo "amd" > /var/opt/BeLGE/GPU/GPU;
fi;

# Case Intel file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)
if [ ! -s "$intel" ] 
	then
	else echo " Your GPU is supplied by Intel";
	echo "intel" > /var/opt/BeLGE/GPU/GPU;
fi;
	
# Case NVIDIA file is tested empty then AMD is false and boolean var is switched to 0 (else 1 if Device-1 is AMD)	
if [ ! -s "$nvidia" ] 
	then
	else echo " Your GPU is supplied by NVIDIA";
	echo "nvidia" > /var/opt/BeLGE/GPU/GPU;
fi;

# Back to main script
# End of the script
