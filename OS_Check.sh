#!/bin/bash

# Designer : Roman PCR59320 aka Roman O'Cry  (pcr59320@gmail.com / https://github.com/rdh59320/)
# Description : OS check script
# Licence CREATIVE COMMONS CC BY-NC-SA 4.0
# Version : 1.0
# Begin OS_check script

# Condition non focal, jammy or noble distro => OS variable is set to 0
echo "0" > /opt/BeLGE/Var/OS/OS;

# Preparing variable directories to store compat. information
# If request is not true then the file will be empty

hostnamectl | grep "Operating System" | grep "Ubuntu 20.04" > /opt/BeLGE/Var/OS/FF
hostnamectl | grep "Operating System" | grep "Ubuntu 22.04" > /opt/BeLGE/Var/OS/JJ
hostnamectl | grep "Operating System" | grep "Ubuntu 24.04" > /opt/BeLGE/Var/OS/NN

# All accepted OS version variables
# Empty file is created if the request does not fit with the called distro 

FF='cat /opt/BeLGE/Var/OS/FF'
JJ='cat /opt/BeLGE/Var/OS/JJ'
NN='cat /opt/BeLGE/Var/OS/NN'

# Defining the boolean compatibility variable (0 = unsupported OS / 1 = supported OS)
# Variables change to determine OS and affect 0 as a non-existence value for previous file FF, JJ and NN
# If one of the supported distros is detected then one of the 3 var files below won't be equal to 0 but 1 

# Case test when /opt/BeLGE/Var/OS/FF file is empty
if [ ! -s "$FF" ] 
	then
	# Case test when non empty (focal fossa detected)
	else echo " You are on Ubuntu 20.04 Focal Fossa";
	# OS variable is set to fossa instead of 0 if FF var file is not empty 
	echo "focal" > /opt/BeLGE/Var/OS/OS;
fi;

# Case test when /opt/BeLGE/Var/OS/JJ file is empty
if [ ! -s "$JJ" ]
	then
	# Case test when non empty (jammy jellyfish detected)
	else echo " You are on Ubuntu 22.04 Jammy Jellyfish";
	# OS variable would be needed to determine the right config when file not empty #(distro has been detected) 
	echo "jammy" > /opt/BeLGE/Var/OS/OS;
fi;

# Case test when /opt/BeLGE/Var/OS/NN file is empty
if [ ! -s "$JJ" ]
	then
	# Case test when non empty (noble numbat detected)
	else echo " You are on Ubuntu 24.04 Noble Numbat";
	# OS variable would be needed to determine the right config when file not empty #(distro has been detected) 
	echo "noble" > /opt/BeLGE/Var/OS/OS;
fi;

# Back to main Install script
# End of the script

