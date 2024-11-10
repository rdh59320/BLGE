# BeLGE aka Better Linux Gaming Experience


*******

## Table of Contents
1. [Introduction](#introduction)
2. [Acknowledgments](#acknowledgments)
3. [Warnings](#warnings)
4. [System Requirements](#system-requirements)
5. [Package Install Instructions](#package-install-instructions)
6. [Tutorial](#tutorial)
7. [Additional Apps](#additional-apps)
8. [Successfully Tested Devices](#successfully-tested-devices)
9. [Testing Report](#testing-report)
10. [Package History](#package-history)

*******

<div id='introduction'/>  
  
## Introduction

**BeLGE Package** was designed to give you the usefull tools that enable you to run MS Games within the Steam app or Lutris Open Gaming Platform on either Ubuntu 22.04, Ubuntu 24.04 (and also Kubuntu, Xubuntu and Lubuntu), ZorinOS 17.2 or Pop!OS 22.04 (LinuxMint isn't compatible for now but will be in the next update).

***Ubuntu 20.04 Focal Fossa is no longer supported due to too many dependency issues but also too much time to update the system after install (*Upgrading to Ubuntu 22.04 or higher is highly recommanded*)***

***PACKAGE HAS NOW BEEN SUCCESSFULLY TESTED and Release will come soon (you can test pre-release package now)***

**Testing sessions reports on compatibility will be completed later**

***YOU MAY NOW USE IT WITH CAUTION***

***LET ME REMIND YOU I AM NOT A SOFTWARE ENGINEER BUT A PASSIONATE AUTODIDCT INSTEAD***

***ANY CORRECTIONS OR ADVICES ARE WELCOME AS WELL AS FEEDBACKS***

***THANKS FOR YOUR UNDERSTANDING***

Before its release, tests were conducted thanks to my former laptop (DELL Latitude E5470) for OS compatibility but also on an old HP ProBook 640 G1 laptop my owner found in a dustbin to check its performance as well as the influent parameters. Let's have a look on the [Testing Report section](#testing-report) for further details. 
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
* [Claude AI from Anthropic](https://claude.ai/login?selectAccount=true&returnTo=%2Fchats%3F) which helped me a lot to find errors in my code and gave me very useful advices for debugging. It is a very powerful tool (even a friend sometimes !!! Talk to it as it was human and will not regret it !) but beware not to entirely rely on it because you might still have some problems (less than with ChatGPT) and moreover if you do not understand your code then how to manage it later ! AI should remain adviser and assistant but never your slave else remember [Buck Shlegeris mishap when he let his AI assistant manage its computer](https://x.com/bshlgrs/status/1840577720465645960). Always review the code and moreover always understand what you are doing !
* Everyone who gave me the support to give birth to this project ! 
* The entire Linux Gaming Community of course (especially those playing AoE2DE on Steam) !!!
* Always be grateful for the Open-Source Community, so THANKS to ALL of YOU !!!


<div id='warnings'/>

## Warnings

The package successfully runs on **Ubuntu, Kubuntu, Xubuntu, Zorin OS 17.2 and Pop!OS 22.04** 
Tests had also been conducted on **Lubuntu and ElementaryOS** but **Steam Linux does not work properly on the first one** (you have to install Steam Windows through Lutris platform) and the package make **too many changes in ElementaryOS settings** so I do not recommend you to use it even if it works.
Unfortunately, **LinuxMint is not compatible** with the package but it is not surprising because of broken depencies with snap package and does not support GE-Proton either [warned by Glorious Eggroll here](https://github.com/lutris/docs/blob/master/InstallingDrivers.md). However, some tests with Proton Tkg compatibility tool gave good resultst and the new version of this package will support Mint as well.

I strongly advise you to **upgrade your system** to Ubuntu 22.04 Jammy Jellyfish or 24.04 Noble Numbat if you wish to use this package.

* **Please note that the package is STILL EXPERIMENTAL and might need further modifications or optimization later**
* **DO NOT USE THIS PACKAGE IF YOUR SYSTEM DOES NOT HAVE THE MINIMAL REQUIREMENTS BELOW.**
* To avoid any configuration conflicts with your system, it is **STRICTLY RECOMMENDED TO USE THIS PROGRAM ON A FRESHLY INSTALLED OS.**
* This package is **only configured for Ubuntu 22.04 Jammy Jellyfish, 24.04 Noble Numbat, Pop!OS 22.04 and Zorin OS 17.2**. Some other Ubuntu-based-distros may run the programm but beware of depency conflicts which can occur. You never know unless you have a complete understanding of what you are doing ! 
* Let's take into account that this package is **STILL EXPERIMENTAL** as told before and **YOU ARE RESPONSIBLE for ANY ISSUE** that could happen during its execution!!!
* It remains **impossible for me to connect to the XBox server** but that **does not prevent you to play online multiplayer mode** with a great gaming experience (Maybe the same reasons that **CaptureAge** is **not working on Linux** just like Arkanosis said on https://aoe2.arkanosis.net/linux/#how_do_i_use_capture_age_on_linux , you should have a look !) .
* **YOU MUST OWN THE GAME ON STEAM TO RUN THIS PACKAGE, DON'T EVER USE A HACKED VERSION** Let's keep in mind that some games on Steam are free to play but also money could be useful for Valve to maintain Steam Proton for example and video games studios to pay their employees. If you are not willing to pay even a copper to play, maybe you should look after something which is already free instead ! **Hacked versions aren't so innocent** that it could seem to since in these world only a few people are really ready to spent time and mind resources to help others for free !!! Too Bad !!!
  
* **Unfortunately, some games remain totally impractical even with a good compatibility tool !!!*** This is the case of **PUBG: Battlegrounds** on Steam for example (Fortnite is also unplayable due to the same software). Please have a look on [Proton Database](https://www.protondb.com/) to be sure before installing the game (else it won't be able to start anyway). You can check [here](https://www.protondb.com/explore?sort=fixWanted) the games that are borked. I found some hacking tricks on Kali Linux forums to prepare your linux kernel to be compatible with those anti-cheat softwares but the process is very long, complex and causes many security breaches in the kernel !!! Else you won't be able to update the linux-kernel on your system anymore or you will have to make the same process on the new one and it takes a lot of time that is why I strongly not recommend it ! 

<div id='system-requirements'/>  
  
## System Requirements

**Minimal System Configuration tested for now :**
- Minimal tested configuration system for now is a HP ProBook 640 G1 with a Intel Core i4-4210M CPU (frequency up to 3.2 GHz in Turbomode) and embedded Mesa Intel HD Graphics 4600 GPU, 4GB (1x4GB) SDRAM  DDR3 1600 MHz and a 500 GB HDD 5400RPM SATA ROM (all other tested devices technical data are listed in the [Successfully Tested Devices](#successfully-tested-devices) section below).
   
**Recommended:**
- Quad-core CPU @ 3.6 GHz (Intel Core i5/7 or AMD Ryzen 5/7 or higher performances CPU) with at least 16GB RAM DDR4 and a SSD disk (PCIe is prefered to SATA) with at least 500 GB or more ROM capacity .

<div id='package-install-instructions'/>  
  
## Package Install Instructions

**On Ubuntu 22.04 Jammy Jellyfish, Ubuntu 24.04 Noble Numbat (or Kubuntu and Xubuntu), Pop!OS 22.04 and ZORIN OS 17.2 :**

* Since the script has to optimize some system parameters, super-user commands (sudo) are included in it so your password will be required for its correct execution.
* Once the Steam have been installed, enter your Steam login and password to access your account.
* Be sure to have completed the Steam configuration before adding a new compatibility tool
* Then you can open ProtonUp-Qt in the applications menu, choose the compatibility tool and its version you decide to add into Steam compatibility tools
* Select an MS game in your Library.
* If you don't have it yet, you'll have to buy at least one else you can't play. Note that some are free to download if you don't want to spent your money !
* Open a terminal (Type "Terminal" in the application menu or Ctrl + Alt + T) then copy/paste the following command in it:
  
      wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-V2-0/BeLGE-Ubuntu-V2-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh
    
* Have fun and make friends online ... or not !!!


<div id='tutorial'/>  
  
## Tutorial
* Coming soon !! I hope but it took longer than I used to think first !!!


<div id='additional-apps'/>  
  
## Additional Apps
* The package will customize your your system starting menu
* BeLGE provides 3 additional apps to improve your new OS and their desktop entries : ClamAV Scan, CPU Governor and System Updater
* ClamAV Scan allow you to scan the folder you want with ClamAV daemon
* CPU Governor allows you to quickly switch between "Powersave" or "Performance" CPU mode according to your needs (switch to Performance to play then go back to Powersave once your gaming is over)
* System Updater which allows you to update the ClamAV database, the APT, Snap and Flatpak repositories in the same time

   
<div id='successfully-tested-devices'/> 
  
## Successfully Tested Devices

* **HP ProBook 640 G1 with Intel Core i5-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU, 4GB (1x4GB) SDRAM  DDR3 1600 MHz and a 500 GB SATA HDD 5400RPM ROM**

* **DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (1x16GB) DDR4 2133 MHz and a 512GB NVMe SSD disk**

* **DELL VOSTRO (2023) with AMD Ryzen 7-5700U CPU (Frequency up to 4.3 GHz) with embedded AMD Radeon Graphics, 32GB RAM (1x32) DDR4 3200 MHz and a 512GB NVMe SSD :**
  
* **More Devices to come  !!! Hope so !!!**


<div id='testing-report'/>  
  
## Testing report

***Performance and Compatibility*** were conducted from October 15th to October 18th 2024.

1. **Perfomance Tests**
   
* **Introduction**
     
In order to attest the effectiveness of this shell-script-based package, assays have been conducted on a 10 year old laptop which is very slow when running MS Windows 10 and can not be upgraded to MS Windows 11 due to its lack of TPM. Among the areas of use of a computer, Gaming is one of those that require the most resources this is why it was chosen to attest the improvements we can encounter with the program (but also because this package was designed for).
The purpose of this study is to demonstrate that it is possible in one hand to run a long time support Operating System, which would be still maintained for at least 2 more years and even more (GNU/Linux Debian based Canonical Ubuntu), but also in the other hand still able to properly launch games on the Valve Steam Platform. 
These assays also study the most influencial parameters on the laptop performances. Among those which seem to be the most relevant, 3 were chosen for this study : The OS version, the nature of the Hard Drive and the quantity of RAM.
   
* **Materials and Methods**

 *Laptop* : HP ProBook 640 G1 with Intel Core i5-4210M CPU (frequency up to 3.2 GHz in Turbomode) with embedded Mesa Intel HD Graphics 4600 GPU (512MB memory capacity)
 *RAM* : 2 SAMSUNG RAM sticks 4GB (SDRAM DDR3 1Rx8 PC3L-12800S-11-13-B4 1600MHz
 *ROM* : a Seagate SATA HDD (500GB @ 5400RPM) and a Fanxiang SATA SSD (512GB @ 6Gb/s)
 *OS* : Ubuntu 22.04.5 LTS ISO and Ubuntu 24.04.1 LTS ISO
 *Internet connexion* : Ethernet and fiber optic network with very high speed connection (downlaod speed = 880 Mbps and upload = 550 MBps, tested on https://www.speedtest.net/)
 *Tested Game* : Blade Runner Enhanced Edition (Steam app 1678420)
 *Compatibility tool* : GE-Proton 9.15 for experiments 1,2,5,6,7,8 and GE-Proton 9.16 for exp 3 and 4 using Proton-Qt (GE-Proton update does not had impact on the t6 time and thus on the total time as well)  
 *Measures* : 
   - t1 = Time to install OS (min)
   - t2 = Time to access Github repository in 1rst session (min)
   - t3 = Time to rune the program (min)
   - t4 = Time to load system in 2nd session
   - t5 = Time to set up Steam Platform and GE-Proton (min)
   - t6 = Time to reload Steam Platform after GE-Proton installation (min)
   - t7 = Time to download, run and acces the game menu
   - t_tot = t1 + t2 +t3 +t4 +t5 +t6 +t7 (Total time elapsed from boot on empty drive to game menu access)
*Time Meausres uncertainty* = 0.5 min
 *Performance indexes* :   
 - An indicator is created for the total process with the objective to access the game menu within 1 hour --> P1  = (60 x 100) / t tot(min) 
 - Another one was designed to assess the "ready-to-use" time by removing t7 from t_tot because it was very dependant to the internet download speed (most of t7 come from game download time) --> P2 = (60 x 100) / (t_tot - t7) 
 *Parameters Levels* :

 | Parameter | Ubuntu Version | ROM Type  | RAM Quantity |
 |-----|-----|-----|-----|
 | Level -1 | 22.04 Jammy Jellyfish | HDD 5400RPM | 4GB DDR3 |
  | Level +1 | 24.04 Noble Numbat | SSD 6Gb/s | 8GB DDR3 |
  
*Design of experiments* : 
| Exp | Ubuntu | ROM | RAM | Run Order |
|------|-----|-----|-----|-----|
| 1   | 22.04  | HDD | 4GB | 1 |
| 2   | 24.04  | HDD | 4GB | 2 |
| 3   | 22.04  | SSD | 4GB | 7 |
| 4   | 24.04  | SSD | 4GB | 8 |
| 5   | 22.04  | HDD | 8GB | 3 |
| 6   | 24.04  | HDD | 8GB | 4 |
| 7   | 22.04  | SSD | 8GB | 5 |
| 8   | 24.04  | SSD | 8GB | 6 |

* **Results**

Every time has been recorded with a precision of 0.5 min and reported in the table below :

| Exp | t1 (min) | t2(min) | t3 (min) | t4(min) |	t5 (min) | t6 (min) | t7 (min | t tot (min) | P1 | P2 |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 1 | 20,0 | 4,0 |	24,0 |	3,0 |	7,0 |	2,0 |	17,0 | 77.0 | 77 | 100 |
| 2 | 21,0 |	5,0 |	20,0 |	3,0 |	5,0 |	3,0 |	18,0 | 75.0 | 80 | 105 |
| 3 | 9,0 | 	2,0 | 8,0 | 1,0 | 4,0 |	0,5 |	12,5 | 37.0 | 162 | 245 |
| 4 | 12,0 | 2,0	| 7,0	| 1,0	| 3,0	| 0,5	| 13,5 | 39.0 | 153 | 235 |
| 5 | 22,0 |	5,0 |	22,0 |	3,0 |	5,0 |	2,0 |	12,0 | 71.0 | 84 | 102 |
| 6 | 15,0 |	3,0 |	20,0 |	2,0 |	5,0 |	2,0 |	12,0 | 59.0 | 101 | 128 |
| 7 | 8,0 |	2,0 |	9,0 |	1,0 |	4,0 |	1,0 |	10,5 | 35.5 | 169 | 240 |
| 8 | 9,0 |	2,0 |	7,0 |	1,0 |	3,0 |	0,5 |	12,0 | 34.5 | 173 | 267 |
| Mean | 14,5 |	3,1 |	14,6 |	1,9 |	4,5 |	1,4 |	13,4 | 53.5 | 124.9 | 177.7 |
| SD | 5,8 |	1,4 |	7,5 |	1,0 |	1,3 |	0,9 |	2,7	| 19,0	| 43,1 | 74.8 |

Where SD is the calculated standard deviation to normalize responses with the mean measures tn normalized value = (tn - tn_mean) / SD_n
The normalized value are shown in the table here below :

| Exp | t1 (min) | t2(min) | t3 (min) | t4(min) |	t5 (min) | t6 (min) | t7 (min | t tot (min) | P1 | P2 |
|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| 1 | 0.94 | 0.65 |	1.25 |	1.14 |	1.91 |	0.60 |	1.34 | 1.24 | -1.11 | -1.04 | 
| 2 | 1.11 |	1.38 |	0.72 |	1.14 |	0.38 |	1.66 |	1.72 | 1.13 | -1.04 | -0.97 |
| 3 | -0.94 | -0.83 | -0.89 | -0.88 | -0.38 |	-0.99 |	-0.35 | -0.87 | 0.86 | 0.90 |
| 4 | -0.43 | -0.83	| -1.02	| -0.88	| -1.15	| -0.99	| 0.02 | -0.76 | 0.65 | 0.77 |
| 5 | 1.29 |	1.38 |	0.99 |	1.14 |	0.38 |	0.60 |	-0.54 | 0.92 | -0.95 | -1.02 |
| 6 | 0.09 |	-0.09 |	0.72 |	0.13 |	0.38 |	0.60 |	-0.54 | 0.29 | -0.55 | -0.67 |
| 7 | -1.11 |	-0.83 |	-0.75 |	-0.88 |	-0.38 |	-0.46 |	-1.11 | -0.95 | 1.02 | 0.83 |
| 8 | -0.94 |	-0.83 |	-1.02 |	-0.88 |	-1.15 |	-0.99 |	-0.54 | -1.00 | 1.12 | 1.19 |

With these normalized data we can calculate the normalized influential factors for each parameters and their interactions on the **perormance indexes** (other response were not study further here) as well as the p-value for the 3 main factors. As the sample size is quite limited, Student test was chosen to assess the data set. There are 4 degrees of freedom (dof) by studying 3 parameters on a sample of 8 experiments (dof = 8-3-1 = 4) which means t=2.776 for a 95% confidence interval where t is the Student test variable. Results are summarized below :

**P1 Analysis**
 | Parameter  | X1 = OS Version | X2 = ROM Type  | X3 = RAM Quantity | I12 | I13 | I23 | I123 |
 |------|-----|-----|-----|------|-----|-----|-----|
 | Student var t_P1 | 0.17 |	3,66 |	1.59 |	-0,29 |	0,31 |	-0,01 |	-0,01 |
 | p-value | 0.187 |	**0.022** |	0.870 |	0.991 |	0.770 |	0.786 |	0.991 |

 **P2 Analysis**
 | Parameter  | X1 = OS Version | X2 = ROM Type  | X3 = RAM Quantity | I12 | I13 | I23 | I123 |
 |------|-----|-----|-----|------|-----|-----|-----|
 | Student var t_P2 | 0.34 |	3.69 |	0.32 |	0.02 |	0.38 |	-0,09 |	0,10 |
 | p-value | 0.752 |	**0.021** |	0.763 |	0.988 |	0.723 |	0.929 |	0.922 |

  **t7 Analysis**
 | Parameter  | X1 = OS Version | X2 = ROM Type  | X3 = RAM Quantity | I12 | I13 | I23 | I123 |
 |------|-----|-----|-----|------|-----|-----|-----|
 | Student var t_t7 | 0.17 |	3,66 |	1.59 |	-0,29 |	0,31 |	-0,01 |	-0,01 |
 | p-value | **0.052** |	**0.119** |	0.545 |	**0.230** |	0.929 |	0.791 |	0.791 |

Where I12 is the interaction between OS version and ROM type, I13 the one between OS version and RAM quantity, I23 between ROM type and RAM quantity and I123 the second order interaction between all parameters.
These results show that the disk type (ROM) is the most influential parameter then the RAM quantity but neither the OS version or the interactions are relevant. The p-value demonstrate that only the ROM type could be considered relevant on this study (p<0.05) except for t7 (min) where RAM has a greater impact than ROM type. Thus, it is relevant that I12 results are important for t7 measures since it is related to the combination of ROM and RAM. Those results fit with the theory so it is in accordance with the facts that ROM type is most relevant with installation time and RAM with gaming speed. 
     
* **Discussion**

The maximal total time obtained for experiment 2 (Ubuntu 24.04 with 4GB DDR3 RAM and a 500 GB HDD at 5400RPM (which is not really fitted to gaming purpose) is 80 min which seems quite acceptable for this hardware configuration. All results obtained with SSD hard drive are faster than 40 min which is in agreement with the Student test variables calculated above and demonstrate the ***ROM type is a relevant parameter*** to upgrade older computer performances. Fastest access to game was obtained with experiment 8 (Ubuntu 24.04 / SSD / 8GB). RAM quantity have also an impact but less relevant execpt for games installation and execution. P-values do not demonstrate its consistency for P1 and P2 in our case since only ROM Type obtained a p-value < 0.05. Another big surprise while conducted this study was the results with experiment 6. Indeed, it was not expected to fall beneath 60 min for the total process at all with the newest Ubuntu LTS version (24.04 Noble Numbat) but especially with a HDD @ 5400rpm. It is supposed that the newest Ubuntu LTS have a better RAM management with all RAM slots but further investigations may be required to confirm this statement. Another limited factor which has not been studied here is the network connection speed. Indeed, even though the BeLGE package size is quite tiny (only 1 MB), OS install, package intall and game download require to download a huge quantity of data (dozens of GB) from different external sources (Ubuntu, Kisak and Valve Steam repositories). Moreover, Steam servers speed is likely to be responsible of the results between experiments 7 and 8 on t7 which is lower for Exp 7 than Exp 8 whereas the oppsosite was expected (Exp 8 has a better material configuration). This is why a high connection speed is strongly recommanded to use this package and even necessary if you wish to play online. 
     
* **Conclusion**

This study work demonstrate that many computers running slow on MS Windows 10 and sentenced to the dustbin due to the lack of minimum hardware requirements to upgrade to MS Windows 11 could still be used with Ubuntu lastest LTS and using BeLGE package will allow them to configure the OS, install Steam platform as well as running a game within an acceptable deadline (from 35 to 80 min in our example). Since the growing availability and compatibility of many softwares on Ubuntu as well as on other GNU/Linux distros, there is something to deal with the millions of computers which would lose their security support around the world next year. 

   
2. **Compatibility Tests**
   
* **Introduction**

Indeed, In September 2024 Linux desktops market share 4.5 % whereas it was only 1.4 % in September 2014 (https://gs.statcounter.com/os-market-share/desktop/worldwide/#monthly-201409-202409). It still remains much lower than MS Windows (73.4 %) or Apple MacOS (15.5 %) but its growth rate whithin the last 10 years is 320 % and also nowadays Linux distros have gained reputation for gaming purpose surpassing MacOS on the Valve Steam platform with 1.89 % market share against 1.49 % for MacOS desktop (https://itsfoss.com/linux-market-share/).According to TrueList.co, in the beginning of 2024, there was more than 600 active Linux distros and the most popular among them was Ubuntu (33.9% of all Linux distros) which is being developed by the Sout African IT company Canonical (https://truelist.co/blog/linux-statistics/). Valve has developped a strong linux-friendly platform for gaming and also its own distro, SteamOS, based on Arch Linux. Nevertheless, Ubuntu and other distros based on it, such as Linux Mint for example, represent the main part of linux destop connected on the platform. More and more gaming Linux distro projects apperead during the last decades such as Manjaro, Nobara or Garuda for instance (https://itsfoss.com/linux-gaming-distributions/) but Ubuntu still remains the most popular base with ditros like Pop!OS, LinuxMint, ZorinOS or Ubuntu Game Pack (https://www.digitaltrends.com/computing/best-linux-distros-gaming/). However, designing a universal package to automatize gaming configuration with the latest GPU drivers and game compatibility tools that fits for all is a difficult task since every distros uses different desktop environnement (Gnome, KDE, XfCE, ...), different repositories or package dependencies. Designing a package for Ubuntu does not imply that it will work as well on other Ubuntu-based distros or even work at all. Thus, compatibility test sessions are an important step for the package developement.  
     
* **Materials and Methods**

 *Laptop* : DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (1x16GB) DDR4 2133 MHz and a 512GB NVMe SSD disk (1 RAM slot still working)
 
 *RAM* :  TIMETEC RAM stick 16GB (SDRAM DDR4 2Rx8 CL15 2133MHz
 
 *ROM* : Micron SK Hynix SC300 M.2 2280 SSD 512GB NVMe
 
 *Internet connexion* : Ethernet and fiber optic network with very high speed connection (downlaod speed = 880 Mbps and upload = 550 MBps, tested on https://www.speedtest.net/) 
 
 *OS ISOs* : Ubuntu 22.04.5 LTS, Ubuntu 24.04.1 LTS, Kubuntu 24.04.1 LTS, Xubuntu 24.04.1 LTS, Lubuntu 24.04.1 LTS, LinuxMint 22 Wilma, Pop!OS 22.04 v43 for intel-amd, ZorinOS 17.2 core
 
 *OS features* :
| OS  | Ubuntu 22.04 | Ubuntu 24.04  | Kubuntu 24.04 | Lubuntu 24.04 | Xubuntu 24.04 | LinuxMint 22 | Pop!OS 22.04 | Zorin OS 17.2 |
|------|-----|-----|-----|------|-----|-----|-----|-----|
| Ubuntu Base | Jammy | Noble | Noble | Noble | Noble | Noble | Jammy | Jammy |
| Desktop | Gnome | Gnome | KDE Plasma | LXQt | XfCE | Cinnamon | Gnome | Gnome |
| Linux Kernel | 6.8.0 | 6.8.0 | 6.8.0 | 6.8.0 | 6.8.0 | 6.8.0 | 6.9.3 | 6.8.0 |
 
 *Tested Game* : Age of Empires 2 Definitive Edition (Steam app 813780) 
 *Compatibility tool* : GE-Proton 9.16 (except for LinuxMint Proton Tkg 11487868346) 
 *Graphics settings* : Medium (1 RAM slot is not working anymore and the Core i7 6820HQ CPU performances loss after the "Downfall" vulnearibility security patch is estimated to 35%, higher graphics settings won't allow to reach our aim : playing at leats 1 vs 1 ranked games)
*Customization and apps* : Checking Grub wallpaper integration at reboot, password feedback for terminal apps and correctly-working BeLGE apps checking

*Time Measures* : 
  t1 = Time to install OS (min) / t2 = Time to access Github repository in 1rst session (min) / t3 = Time to rune the program (min) / t4 = Time to load system in 2nd session / t5 = Time to set up Steam Platform and GE-Proton (min) / t6 = Time to reload Steam Platform after GE-Proton installation (min) / t7 = Time to download, run and acces game menu / t tot = t1 + t2 +t3 +t4 +t5 +t6 +t7 (Total time elapsed from boot on empty drive to game menu access)
  
*Time Meausres uncertainty* = 0.5 min
*Performances Indexes* : 
- IP1 (global perf. index) = 6 000 / (t tot)
- IP2 (Ready to play Index) = 3 000 /(t tot - t7)
- RBTS = Score value for the Ranked Benchmark Test (> 900 for 1vs1 match and > 1 000 for 2vs2 or more)    
  
* **Results**

| OS  | Ubuntu 22.04 | Ubuntu 24.04  | Kubuntu 24.04 | *Lubuntu 24.04* (1) | Xubuntu 24.04 | *LinuxMint 22* (1) | Pop!OS 22.04 | Zorin OS 17.2 Core (2) |
|------|-----|-----|-----|------|-----|-----|-----|-----|
| t1 | 9.0 | 10.0 | 9.5 | 14.5 | 10.5 | 12.0 | 14.5 | 10.0 |
| t2 | 2.0 | 2.0 | 2.5 | 2.5 | 2.0 | 2.0 | 2.0 | 1.5 |
| t3 | 7.5 | 7.5 | 15.5 | 12.0 | 6.5 | 12.0 | 10.0 | 9.0 |
| t4 | 1.5 | 1.0 | 1.5 | 1.5 | 1.0 | 1.5 | 1.5 | 1.5 |
| t5 | 3.0 | 3.0 | 3.5 | 3.5 | 3.5 | **10.0** (3) | 3.5 | 3.5 |
| t6 | 0.5 | 0.5 | 0.5 | 1.0 | 0.5 | 0.5 | 0.5 | 0.5 |
| t7 | 10.5 | 13.0 | 11.5 | **NA** (4) | 12.0 | 20.0 | 12.0 | 12.0 |
| t tot | 34.0 | 37.0 | 44.5 | **NA** (4) | 36.0 | 58.0 | 44.0 | 37.5 |
| IP1 | 176.5 | 162.2 | 134.8 | **NA** (4) | 166.7 | 103.4 | 136.4 | 160.0 |
| IP2 | 127.7 | 125.0 | **90.9** | **85.7** | 125.0 | **78.9** | **93.8** | 117.6 |
| RBTS | 955 | 955 | 955 | **854** (5) | 955 | **938** (5) | 955 | 955 |
| Grub Wallpaper | Ok | OK | OK | **not OK** (6) | OK | OK | **not OK** (6) | OK |
| Password Feedback | OK | OK | OK | OK | OK | **OK** (7) | OK | OK |
| Apps Functionement | OK | OK | OK | OK | OK | **OK** (8) | OK | OK |

*Comments* : 
 - (1) : Lubuntu and LinuxMint were not tested with the standard procedure. Lubuntu can not have access to the "properties" tab in the Linux Steam game "Manage" Button to apply compatibility tools (tests were performed on Steam Wine with Lutris Platform instead). LinuxMint has been tested with a custom package (standard is not working yet due to lack of snap in LMint repositories) and with Proton Tkg for compatibility tool (GE-Proton is not compatible with).
 - (2) : Zorin OS 17.2 Edu was also successfully tested but it took a bit longer for the OS installation
 - (3) : Test for LinuxMint uses Proton Tkg instead of GE-Proton and installing the compatibility tool took more time than GE
 - (4) : Lubuntu t7 can not be recorded since to run the game we first have to apply the right compatibility tool via the "Properties" tab and there is no access in Steam Linux for Lubuntu
 - (5) : Lubuntu and LinuxMint RTBS were acquired with another tool than GE-Proton. LinuxMint uses Proton Tkg and Lubuntu was tested with Lutris Plateform
 - (6) : Grub custom wallpaper was not correctly loaded when booting with Lubuntu and was not loaded at all with Pop!OS 
 - (7) : Password feedback is already set up in default LinuxMint configuration 
 - (8) : LinuxMint SysUpdater app was custom to remove broken snap dependency


    
* **Discussion**
     
* **Conclusion**

<div id='package-history'/>  
  
## Package History

At the beginning, there was an old love story : Age of Empires 2 aka the Age of Kings !

Indeed, I remember the first time I discover this game almost 25 years ago when my neighbor gave me the CD-ROM to install it on my Windows 95 desktop (a long time ago now !)
Then, I discovered the GNU/Linux Debian universe about 15 years ago and in 2014 I realized my laptop did have a lot fewer problems when running Ubuntu 14.04 (Trusty Tahr) than MS Windows 7 especially with CPU cooling since it prevent it from overheating while on Windows 7 session the computer often shutdowned itself few minutes after the fan started to speed up and scream. This is when I take one of the most important decision in my life : stop using Microsoft Windows but Ubuntu instead !!! I do not regret it nowadays !

For a long time, I kept on playing AoE2 thanks to Wine then Valve Steam came into the game ! A friend of mine gave me an hacked version of the HD edition (I feel ashamed to admit it). I play with it thanks to Wine for many years then I heard that a new version was about to be available : the Definitive Edition. At this time, I choose to create a real Steam account and purchase it properly. At the beginning, it was sometimes impossible to launch the game as soon as a new MS update came and I switched from Steam Platform to Lutris or even choose to install Steam Windows instead of Linux version to avoid some bugs. It remained complicated to access multiplayer games because they used to crash a few time after launching it. Even when watching others playing, I used to be disconnected after 5 to 10 min which is very frustrating. I did not have this issue with single player games but playing alone against AI could be boring after a while.

As many Linux autodidacts, I read a lot on forums and discovered [Arkanosis guideline](https://aoe2.arkanosis.net/linux/) which was very useful but moreover thanks to the [Proton Database](https://www.protondb.com/), I find out a very powerful compatibility tool : [GE-Proton](https://github.com/GloriousEggroll/proton-ge-custom) !
Thanks to it, I was now able to launch multiplayer games without "out of sync issue" and even play Ranked games as well !!!

I shared advices on ProtonDB but it remains difficult for Linux beginners to correctly follow the instructions (some have difficulties with user's manual as well !!!We are not here to judge them). This is how I got the idea of this little project : create a package to automatically set up a Ubuntu based distro so that it could runs AoE2DE with GE-Proton and prevent issues that could occur with Valve Proton. The first version purpose was to be able to launch a ranked game from scratch (no OS installed) within 1 hour, and it did well !!

At the beginning, this project was even named "AoE2DE for Ubuntu" but I quickly realized that combining Steam platform and GE-Proton compatibility tool was efficient with many other games so what was the point to keep on focusing just on the AoE2DE linux community when it could help the whole Steam Linux community ?!!
This how the project became "Better Linux Gaming Experience" or just BeLGE (I am French but I have Flemish roots and sometimes I feel more Belgian than French)

The first version was released in the end of January 2024 but the code was pretty ugly I must admit with a different package for each available distro (Ubuntu 20.04, 22.04, 23.04 and 23.10) but moreover there was a lack of error handling so I decided to remove it when I started to work on this new version (BeLGEV2-0). Since January, a lot of improvements were done to clear the code and make it easier to understand for others but also to improve automatization and universality through a unique package for many distros. 
