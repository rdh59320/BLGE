#!/bin/bash

# Version 1.0 
# Concepteur : Romain D'HAESE (romain.dhaese@gmail.com)
# Description : Script pour passer du powzersave au perfomance en CPU etc
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0

# Début du script #

cpugov='cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor'

echo ""
echo "---CPU-SCALING-GOVERNOR-SWITCHER---"
echo  ""
echo " Your CPU is configured on : "
$cpugov
echo ""
echo " What do you want ? "
echo " Choose [p] or [P] to select Performance Governor "
echo " Choose [s] or [S] to select Powersave Governor "
read -p " Anyother key to keep it the current profile then [Enter] : " cpuchange

if [ "$cpuchange" = "p" -o "$cpuchange" = "P" ] 
	then echo " Governor was switch to " && echo "performance" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor;
     
elif  [ "$cpuchange" = "s" -o "$cpuchange" = "S" ] 
	then echo " Governor was switched to " && echo "powersave" | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor;

else 	echo " Governor profile keept on : "
	$cpugov
fi

sleep 2

exit

# Fin du script #
