#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : BeLGE package installation script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0

red='\e[1;31m'
green='\e[1;32m'
neutral='\e[0;m'

which notify-send > /dev/null
if [ $? = 1 ]
then
	sudo apt install -y libnotify-bin
fi

which zenity > /dev/null
if [ $? = 1 ]
then
	sudo apt install -y zenity
fi

which clamav > /dev/null
if [ $? = 1 ]
then
	sudo apt install -y clamav clamav-daemon
fi

  
echo ""
echo -e -n "$green [1/2]$red UPDATING "
for i in `seq 20 $COLUMNS`;
    do echo -n "."
done
echo -e " $neutral"
zenity --info --width=300 --height=100 --text "Antivirus DataBase updates"
notify-send -i system-software-update "Clamav" "Updates"
sudo systemctl stop clamav-freshclam
sleep 1
sudo freshclam
sleep 1
sudo systemctl start clamav-freshclam
echo " "

echo -e -n "$green [2/2]$red SCAN "
for i in `seq 13 $COLUMNS`;
    do echo -n "."
done
 
echo -e " $neutral"
echo > log_clamav.txt
zenity --info --width=300 --height=100 --text "Choose which directory to scan"
notify-send -i system-software-update "Clamav" "Scan"
inputStr=$(zenity --file-selection --directory "${HOME}")
clamscan -r --remove --bell --log=log_clamav.txt $inputStr
echo " "

notify-send -i dialog-ok "Clamav" "Scan is now over"
    
sleep 2 
echo -e "\n\n Do you want to load the log_file"
read -p "Type [y/Y] then Enter if yes : " logfile
if [ "$logfile" = "y" -o "$logfile" = "Y" ]
   then gedit log_clamav.txt;fi; 
    
exit
