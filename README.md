# BeLGE aka Better Linux Gaming Experience

**BeLGE Package** was designed to enable you to run MS Games within the Steam app on a freshly installed version Ubuntu LTS either 20.04, Ubuntu 22.04 or Ubuntu 24.04. 

***PLEASE DO NOT TRY TO USE IT UNTIL THIS WARNING HAS BEEN REMOVERD***

***PACKAGE IS STILL IN CORRECTIONS DUE TO SEVERAL CODE ERRORS***

***THANKS FOR YOUR UNDERSTANDING***

## Table of Contents
- [Acknowledgments](#acknowledgments)
- [Warnings](#warnings)
- [System Requirements](#system-requirements)
- [Package Install Instructions](#package-install-instructions)
- [Additional Apps](#additional-apps)
- [Tutorial](#tutorial)
- [Successfully Tested Devices](#successfully-tested-devices)
  
## Acknowledgments

This package would not have been possible without the following contributors:
- [GamingOnLinux](https://www.gamingonlinux.com/) for all their tips and supporting the Linux Gamer Community 
- [KISAK PPA](https://launchpad.net/~kisak/+archive/ubuntu/kisak-mesa) for providing all the GPU drivers needed for AMD & Intel devices
- [WineHQ Project](https://www.winehq.org/about) for allowing us to emulate MS Programs 
- [Thomas Crider aka GloriousEggroll](https://github.com/GloriousEggroll) for providing us GE-proton
- [Thomas Crider aka GloriousEggroll](https://github.com/DavidoTek) for providing us ProntonUp-Qt (Vielen dank !!!) 
- [Jérémie Roquet aka Arkanosis](https://github.com/Arkanosis) for his AoE2 Linux gaming website advice (Un grand merci pour toi, Jérémie !!! C'était super utile !!!) 
- [Maarten Baert](https://www.maartenbaert.be/simplescreenrecorder/) for providing SimpleScreenRecorder I am using to make video tutorials (Haartelijke bedankt voor Maarten ook, natuurlijk !!! Mischien de beste desktoprecorder die ik ooit heb gebruikt !!! Bravo !!!). If you don't see them yet, they are coming soon.
- Everyone who gave me the support to give birth to this project ! 
- The entire Linux Community of course (especially those playing AoE2DE on Steam) !!!
- Always be grateful for the Open-Source Community, so THANKS to ALL of YOU !!!

## Warnings

- **Please note that the package is STILL EXPERIMENTAL and might need further modifications or optimization later**
- **DO NOT USE THIS PACKAGE IF YOUR SYSTEM DOES NOT HAVE THE MINIMAL REQUIREMENTS BELOW.**
- To avoid any configuration conflicts with your system, it is **STRICTLY RECOMMENDED TO USE THIS PROGRAM ON A FRESHLY INSTALLED OS.**
- This package is **only configured for Ubuntu LTS 20.04 Focal Fossa, 22.04 Jammy Jellyfish or 24.04 Noble Numbat** (some other other Ubuntu-based-distros may run the programm but beware). 
- The program was **tested on Ubuntu 20.04 Focal Fossa LTS** but **many instabilities** were noticed so the **BE CAREFULL WHEN USING IT**
- Let's take into account that this package is **STILL EXPERIMENTAL** as told before and **YOU ARE RESPONSIBLE for ANY ISSUE** that could happen during its execution!!! (I never had any trouble yet but I don't have only few systems to test it on)
- It remains **impossible** for me to connect to the XBox server but this does not prevent you to play online multiplayer mode with a great gaming experience (Maybe the same reasons that **CaptureAge** is **not working on Linux** just like Arkanosis said on https://aoe2.arkanosis.net/linux/#how_do_i_use_capture_age_on_linux , you should have a look !) .
- **YOU MUST OWN THE GAME ON STEAM TO RUN THIS PACKAGE, DON'T EVER USE A HACKED VERSION** (Let's keep in mind that money could be useful for Valve to maintain Steam Proton for exemple. If you are not willing to pay even a copper to play, maybe you should look after something which is already free instead ! Cracked version aren't so innocent that it could seem to since in these world only a few people are really ready to spent time ansd mind ressources for others !!! Too Bad !!!)
- **Unfortunately, some games remain totally impractical even with a good compatibility tool !!!*** This is the case of **PUBG: Battlegrounds** for example. Please have a look on [Proton Database](https://www.protondb.com/) to be sure before installing the game (else it won't be able to start anyway). You can check [here](https://www.protondb.com/explore?sort=fixWanted) the games that are borked.  
## System Requirements

**Minimal System Requirements (for now) :**
- Minimal configuration tested system for now is a HP ProBook 640 G1 with Intel Core i4-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU, 8GB (2x4GB) SDRAM  DDR3 1600 MHz and a 512 GB SATA SSD ROM (all other tested devices technical data are listed in the [Successfully Tested Devices](#successfully-tested-devices) section below).
   
**Recommended:**
- Quad-core CPU @ 3.6 GHz (Intel Core i5/7 or AMD Ryzen 5/7 or higher performances CPU) with at least 16GB RAM DDR4 and a SSD disk (NVMe is prefered to SATA) with at least 30GB free space.

## Package Install Instructions

- Open a terminal (Type "Terminal" in the application menu or Ctrl + Alt + T) then copy/paste the following command in it:

**On Ubuntu 20.04 FF, 22.04 JJ or 24.04 NN only :**
 
        wget -O BeLGE_Install.sh https://raw.githubusercontent.com/rdh59320/BeLGE/65caccf6c649019bec12c4e4561ae60fd07ceb90/BeLGE-Ubuntu-V2-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh

    
- Since the script had to optimize some system parameters, super-user commands (sudo) are included in it and thus your password will be required for its correct execution.
- Once the Steam have been installed, enter your Steam login and password to access your account.
- Be sure to have completed the Steam configuration before adding a new compatibility tool
- Then you can open ProtonUp-Qt in the appliactions menu, choose the compatibility tool and its version you decide to add into Steam compatibility tools
- Select an MS game in your Library.
- If you don't have it yet, you'll have to buy at least one else you can't play. Note that some are free to download if you don't want to spent your money !
- Have fun and make friends online ... or not !!!

## Additional Apps
- BeLGE provides additional apps to improve your new OS
- Low latency Linux Kernel is added so that you can increase a bit your system (don't expect a great increase !)
- The package will customize your your system starting menu in order for you to choose the best way for you to launch your system (either on generic or low latency kernel)
- BeLGE will also install 3 additional apps and their desktop entries : ClamAV Scan, CPU Governor and System Updater
- ClamAV Scan allow you to scan the folder you want with ClamAV daemon
- CPU Governor allows you to quickly switch between "Powersave" or "Performance" CPU mode according to your needs (switch to Performance to play then go back to Powersave once your gaming is over)
- System Updater which allows you to update the ClamAV database, the APT, Snap and Flatpak repositories in the same time

## Tutorial
- Comming soon !! I hope but it took longer than I used to think first !!! 

## Successfully Tested Devices

-**HP ProBook 640 G1 with Intel Core i4-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU, 8GB (2x4GB) SDRAM  DDR3 1600 MHz and a 512 GB SATA SSD ROM**

- **DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512GB NVMe SSD disk**

- **DELL VOSTRO (2023) with AMD Ryzen 7-5700U CPU (Frequency up to 4.3 GHz) with embedded AMD Radeon Graphics, 32GB RAM (1x32) DDR4 3200 MHz and a 512GB NVMe SSD :**
  
- **More Devices to come  !!! Hope so !!!**
