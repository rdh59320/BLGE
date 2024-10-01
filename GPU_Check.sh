#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : WineHQ staging installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

GPU_INFO=$(inxi -G | grep "Device-1")

if echo "$GPU_INFO" | grep -qi "AMD"; then
    echo "AMD" > /home/$USER/.BeLGE/GPU
elif echo "$GPU_INFO" | grep -qi "Intel"; then
    echo "Intel" > /home/$USER/.BeLGE/GPU
elif echo "$GPU_INFO" | grep -qi "NVIDIA"; then
    echo "NVIDIA" > /home/$USER/.BeLGE/GPU
else
    echo "0" > /home/$USER/.BeLGE/GPU
fi

# End script
