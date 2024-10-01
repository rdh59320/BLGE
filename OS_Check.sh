#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : WineHQ staging installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

# Begin script

# Ubuntu version detection
if grep -q "Ubuntu 20.04" /etc/os-release; then
    echo "focal" > /home/$USER/.BeLGE/OS
elif grep -q "Ubuntu 22.04" /etc/os-release; then
    echo "jammy" > /home/$USER/.BeLGE/OS
elif grep -q "Ubuntu 24.04" /etc/os-release; then
    echo "noble" > /home/$USER/.BeLGE/OS
else
    echo "0" > /home/$USER/.BeLGE/OS
fi

# End script
