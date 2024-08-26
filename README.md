# BeLGE aka Better Linux Gaming Experience

**BeLGE Package** was designed to enable you to run MS Games within the Steam app on a freshly installed version Ubuntu LTS 20.04, Ubuntu 22.04 or Ubuntu 24.04 (still testing !!!). 

## Table of Contents
- [Acknowledgments](#acknowledgments)
- [Warnings](#warnings)
- [System Requirements](#system-requirements)
- [Package Install Instructions](#package-install-instructions)
- [Tutorial](#tutorial)
- [Successfully Tested Devices](#successfully-tested-devices)
  
## Acknowledgments

This package would not have been possible without the following contributors:
- [GamingOnLinux](https://www.gamingonlinux.com/) for all their tips and supporting the Linux Gamer Community 
- [KISAK PPA](https://launchpad.net/~kisak/+archive/ubuntu/kisak-mesa) for providing all the GPU drivers needed for AMD & Intel devices
- [WineHQ Project](https://www.winehq.org/about) for allowing us to emulate MS Programs 
- [Thomas Crider aka GloriousEggroll](https://github.com/GloriousEggroll) for providing us GE-proton
- [Jérémie Roquet aka Arkanosis](https://github.com/Arkanosis) for his AoE2 Linux gaming website advice (Un grand merci pour toi, Jérémie !!! C'était super utile !!!) 
- [Maarten Baert](https://www.maartenbaert.be/simplescreenrecorder/) for providing SimpleScreenRecorder I am using to make video tutorials (Haartelijke bedankt voor Maarten ook, natuurlijk !!! Mischien de beste desktoprecorder die ik ooit heb gebruikt !!! Bravo !!!). If you don't see them yet, they are coming soon.
- Everyone who gave me the support to give birth to this project ! 
- The entire Linux Community of course (especially those playing AoE2DE on Steam) !!!
- Always be grateful for the Open-Source Community, so THANKS to ALL of YOU !!!

## Warnings

- **DO NOT USE THIS PACKAGE IF YOUR SYSTEM DOES NOT HAVE THE MINIMAL REQUIREMENTS BELOW.**
- To avoid any configuration conflicts with your system, it is **STRICTLY RECOMMENDED TO USE THIS PROGRAM ON A FRESHLY INSTALLED OS.**
- This package is **only configured for Ubuntu LTS 20.04 Focal Fossa and 22.04-JJ and WAS NOT TESTED WITH ANOTHER SYSTEM LANGUAGE THAN ENGLISH YET** (other languages may experience issues when running the script due to folder names, i'm working on it). 
**So, if you are not using Ubuntu 20.04 or 22.04 with English language set on it, I advise you not to test the package or set your system in English during Installation** (broken links could appear due to different folder names with another language).
- The program was **tested on Ubuntu 20.04 Focal Fossa LTS** but **many instabilities** were noticed so the **BE CAREFULL WHEN USING IT** (an update will be available soon with Ubuntu 24.04 as well !). 
- Let's take into account that this package is **STILL EXPERIMENTAL**, and **YOU ARE RESPONSIBLE for ANY ISSUE** that could happen during its execution!!! (I never had any trouble yet)
- It remains impossible for me to connect to the XBox server but this does not prevent you to play online multiplayer mode with a great gaming experience (Maybe the same reasons that CaptureAge is not working on Linux just like Arkanosis said on https://aoe2.arkanosis.net/linux/#how_do_i_use_capture_age_on_linux , you should have look !) .
- **YOU MUST OWN THE GAME ON STEAM TO RUN THIS PACKAGE, DON'T EVER USE A HACKED VERSION** (Let's keep in mind that money could be useful for Valve to maintain Steam Proton for exemple. If you are not willing to pay even a copper to play, maybe you should look after something which is already free instead ! Cracked version aren't so innocent that it could seem to since in these world only a few people are really ready to spent time ansd mind ressources for others !!! Too Bad !!!)

## System Requirements

**Minimal System Requirements (for now) :**
- Minimal configuration tested system for now is a DELL Latitude E5470 with Intel Core i7-6820HQ CPU (frequency up to 3.6 GHz in Turbomode) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512 GB SSD ROM (all technical data are listed in the [Successfully Tested Devices](#successfully-tested-devices) section below.
   
**Recommended:**
- Octo-core CPU @ 3.6 GHz (Intel Core i5/7 or AMD Ryzen 5/7 or higher performances CPU for example) with at least 16GB RAM DDR4 and a SSD disk with at least 30GB free space.

## Package Install Instructions

- Open a terminal (Type "Terminal" in the application menu or Ctrl + Alt + T) then copy/paste the following command in it:

 - Focal Fossa (Ubuntu 20.04 LTS) :
 
        wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-UBUNTU2004-v1-0/BeLGE-Ubuntu2004-V1-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh


 - Jammy Jellyfish (Ubuntu 22.04 LTS) :

        wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-UBUNTU2204-v1-0/BeLGE-Ubuntu2204-V1-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh
    
    
 - Noble Numbat (Ubuntu 24.04) [non LTS - Experimental] ==> COMING SOON ! 
    
- Since the script had to optimize some system parameters, super-user commands (sudo) are included in it and thus your password will be requirted for its correct execution.
- Once the script ended and the system has been rebooted, you will notice a new desktop shortcup named "Steam Install" (if you don't, issues might have occured during the installation script execution).
- Be attentive during the Steam Intsallation procedurer to accept "Wine-Mono" before closing close "Wine Configuration" and then "Wine-Gecko" before closing the Internet Explorer browser (wait the winehq website appears on the browser to confirm Gecko has been installed) for the script to pursue.
- Once the Steam have been installed, enter your Steam login and password to access your account.
- As soon as the Steam app has been set up, close it by selecting the Steam Button (on the Status Bar top right of your screen) and then click on "Exit Steam" else the script won't go on.
- The script will then download and add "GE-Proton" compatibility tool to the Steam App.
- When the terminal closes, the script is over, and you can launch the Steam app again.
- Select an MS game in your Library.
- If you don't have it yet, you'll have to buy now (else you can't play) ! It's worthy, trust me !!!
- Have fun and make friends online ... or not !!!

## Tutorial
- Comming soon !! I hope but it took longer than I used to think first !!! 

## Successfully Tested Devices
- **DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512GB SSD disk**

- **DELL VOSTRO (2023) with AMD Ryzen 7-5700U CPU (Frequency up to 4.3 GHz) with embedded AMD Radeon Graphics, 32GB RAM (1x32) DDR4 3200 MHz and a 512GB ROM SSD :**
  
- **New Devices to come  !!! Hope so !!!**
