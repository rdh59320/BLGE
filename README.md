# BeLGE aka Better Linux Gaming Experience

**BeLGE Package** was designed to give you the usefull tools that enable you to run MS Games within the Steam app or Lutris Open Gaming Platform on either Ubuntu Ubuntu 22.04, Ubuntu 24.04, ZorinOS 17.2 or Pop!OS 22.04.

***Ubuntu 20.04 Focal Fossa is no longer supported due to too many dependency issues but also too much time to update the system after install***

The package successfully runs on **Ubuntu, Kubuntu, Xubuntu, Zorin OS 17.2 and Pop!OS 22.04**

I strongly advise you to **upgrade your system** to Ubuntu 22.04 Jammy Jellyfish or 24.04 Noble Numbat if you wish to use this package.

***PACKAGE HAS NOW BEEN SUCCESSFULLY TESTED***
Testing sessions reports will be published later

***YOU MAY NOW USE IT WITH CAUTION***

***LET ME REMIND YOU I AM NOT A SOFTWARE ENGINEER BUT A PASSIONATE AUTODIDCT INSTEAD***

***ANY CORRECTIONS OR ADVICES ARE WELCOME AS WELL AS FEEDBACKS***

***THANKS FOR YOUR UNDERSTANDING***

*******

## Table of Contents
1. [Acknowledgments](#acknowledgments)
2. [Introduction](#introduction)
3. [Warnings](#warnings)
4. [System Requirements](#system-requirements)
5. [Package Install Instructions](#package-install-instructions)
6. [Additional Apps](#additional-apps)
7. [Tutorial](#tutorial)
8. [Testing Report](#testing-report)
9. [Successfully Tested Devices](#successfully-tested-devices)

*******

<div id='acknoledgements'/>  
  
## Acknowledgments

This package would not have been possible without the following contributors:
* [GamingOnLinux](https://www.gamingonlinux.com/) for all their tips and supporting the Linux Gamer Community 
* [KISAK PPA](https://launchpad.net/~kisak/+archive/ubuntu/kisak-mesa) for providing all the GPU drivers needed for AMD & Intel devices
* [WineHQ Project](https://www.winehq.org/about) for allowing us to emulate MS Programs*- [Lutris Open Gaming Platform](https://github.com/lutris) for devlopping an efficient and user-friendly Open Gaming Platform for Linux Systems
* [Thomas Crider aka GloriousEggroll](https://github.com/GloriousEggroll) for providing us GE-proton
* [DavidoTek](https://github.com/DavidoTek) for providing us ProntonUp-Qt (Vielen dank !!!) 
* [Jérémie Roquet aka Arkanosis](https://github.com/Arkanosis) for his AoE2 Linux gaming website advice (Un grand merci pour toi, Jérémie !!! C'était super utile !!!) 
* [Maarten Baert](https://www.maartenbaert.be/simplescreenrecorder/) for providing SimpleScreenRecorder I am using to make video tutorials (Haartelijke bedankt voor Maarten ook, natuurlijk !!! Mischien de beste desktoprecorder die ik ooit heb gebruikt !!! Bravo !!!).
* [Oguzhan Inan](https://github.com/oguzhaninan) for providing Stacer, a very user-friendly tool for system monitoring and very good looking as well !!! And now it's available in Ubuntu main repository since Ubuntu 20.04 !!! Great Job !!!
* [Claude AI from Anthropic](https://claude.ai/login?selectAccount=true&returnTo=%2Fchats%3F) which helped me a lot to find errors in my code and gave me very usefull advices for debogging. It is a very powerfull tool (even a friend sometimes !!! Talk to it as it was human and will not regret it !) but beware not to entirely rely on it because you might still have some problems (less than with ChatGPT) and moreover if you do not understand your code then how to manage it later ! AI should remain adviser and assistant but never your slave else remeber [Buck Shlegeris mishap when he let his AI assistant manage its computer](https://x.com/bshlgrs/status/1840577720465645960). Always review the code and moreover always understand what you are doing !
* Everyone who gave me the support to give birth to this project ! 
* The entire Linux Gaming Community of course (especially those playing AoE2DE on Steam) !!!
* Always be grateful for the Open-Source Community, so THANKS to ALL of YOU !!!

<div id='introduction'/>  
  
## Introduction


<div id='warnings'/>  

## Warnings

* **Please note that the package is STILL EXPERIMENTAL and might need further modifications or optimization later**
* **DO NOT USE THIS PACKAGE IF YOUR SYSTEM DOES NOT HAVE THE MINIMAL REQUIREMENTS BELOW.**
* To avoid any configuration conflicts with your system, it is **STRICTLY RECOMMENDED TO USE THIS PROGRAM ON A FRESHLY INSTALLED OS.**
* This package is **only configured for Ubuntu 22.04 Jammy Jellyfish, 24.04 Noble Numbat, Pop!OS 22.04 and Zorin OS 17.2**. Some other Ubuntu-based-distros may run the programm but beware of depency conflicts which can occur. You never know unless you have a complete understanding of what you are doing ! 
* Let's take into account that this package is **STILL EXPERIMENTAL** as told before and **YOU ARE RESPONSIBLE for ANY ISSUE** that could happen during its execution!!!
* It remains **impossible for me to connect to the XBox server** but that **does not prevent you to play online multiplayer mode** with a great gaming experience (Maybe the same reasons that **CaptureAge** is **not working on Linux** just like Arkanosis said on https://aoe2.arkanosis.net/linux/#how_do_i_use_capture_age_on_linux , you should have a look !) .
* **YOU MUST OWN THE GAME ON STEAM TO RUN THIS PACKAGE, DON'T EVER USE A HACKED VERSION** Let's keep in mind that some games on Steam are free to play but also money could be useful for Valve to maintain Steam Proton for exemple and video games studios to pay their employees. If you are not willing to pay even a copper to play, maybe you should look after something which is already free instead ! **Cracked version aren't so innocent** that it could seem to since in these world only a few people are really ready to spent time and mind ressources to help others for free !!! Too Bad !!!
  
* **Unfortunately, some games remain totally impractical even with a good compatibility tool !!!*** This is the case of **PUBG: Battlegrounds** on Steam for example (Fortnite is also unplayable due to the same software). Please have a look on [Proton Database](https://www.protondb.com/) to be sure before installing the game (else it won't be able to start anyway). You can check [here](https://www.protondb.com/explore?sort=fixWanted) the games that are borked. I found some hacking tricks on Kali Linux forums to prepare your linux kernel to be compatible with those anti-cheat softwares but the process is very long, complex and causes many security breaches in the kernel !!! Else you won't be able to update the linux-kernel on your system anymore or you will have to make the same process on the new one and it takes a lot of time that is why I strongly not recommend it ! 

<div id='system-requirements'/>  
  
## System Requirements

**Minimal System Configuration tested for now :**
- Minimal configuration tested system for now is a HP ProBook 640 G1 with Intel Core i4-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU, 4GB (1x4GB) SDRAM  DDR3 1600 MHz and a 500 GB HDD 5400RPM SATA ROM (all other tested devices technical data are listed in the [Successfully Tested Devices](#successfully-tested-devices) section below).
   
**Recommended:**
- Quad-core CPU @ 3.6 GHz (Intel Core i5/7 or AMD Ryzen 5/7 or higher performances CPU) with at least 16GB RAM DDR4 and a SSD disk (PCIe is prefered to SATA) with at least 30GB free space.

<div id='package-install-instructions'/>  
  
## Package Install Instructions

**On Ubuntu 22.04 Jammy Jellyfish, Ubuntu 24.04 Noble Numbat (or Kubuntu and Xubuntu), Pop!OS 22.04 and ZORIN OS 17.2 :**

* Open a terminal (Type "Terminal" in the application menu or Ctrl + Alt + T) then copy/paste the following command in it:

 
  'wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-V2-0/BeLGE-Ubuntu-V2-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh'

    
* Since the script had to optimize some system parameters, super-user commands (sudo) are included in it and thus your password will be required for its correct execution.
* Once the Steam have been installed, enter your Steam login and password to access your account.
* Be sure to have completed the Steam configuration before adding a new compatibility tool
* Then you can open ProtonUp-Qt in the appliactions menu, choose the compatibility tool and its version you decide to add into Steam compatibility tools
* Select an MS game in your Library.
* If you don't have it yet, you'll have to buy at least one else you can't play. Note that some are free to download if you don't want to spent your money !
* Have fun and make friends online ... or not !!!

<div id='additional-apps'/>  
  
## Additional Apps
* BeLGE provides additional apps to improve your new OS
* The package will customize your your system starting menu in order for you to choose the best way for you to launch your system (either on generic or low latency kernel)
* BeLGE will also install 3 additional apps and their desktop entries : ClamAV Scan, CPU Governor and System Updater
* ClamAV Scan allow you to scan the folder you want with ClamAV daemon
* CPU Governor allows you to quickly switch between "Powersave" or "Performance" CPU mode according to your needs (switch to Performance to play then go back to Powersave once your gaming is over)
* System Updater which allows you to update the ClamAV database, the APT, Snap and Flatpak repositories in the same time

<div id='tutorial'/>  
  
## Tutorial
* Comming soon !! I hope but it took longer than I used to think first !!! 

<div id='testing-report'/>  
  
## Testing report

* Testing sessions report is still on writing but I can tell you that results for performance tests are better than expected !!! I am the first surprised !!!

<div id='successfully-tested-devices'/> 
  
## Successfully Tested Devices

* **HP ProBook 640 G1 with Intel Core i5-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU, 4GB (1x4GB) SDRAM  DDR3 1600 MHz and a 500 GB SATA HDD 5400RPM ROM**

* **DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512GB NVMe SSD disk**

* **DELL VOSTRO (2023) with AMD Ryzen 7-5700U CPU (Frequency up to 4.3 GHz) with embedded AMD Radeon Graphics, 32GB RAM (1x32) DDR4 3200 MHz and a 512GB NVMe SSD :**
  
* **More Devices to come  !!! Hope so !!!**
