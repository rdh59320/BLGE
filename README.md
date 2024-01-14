# BeLGE aka Better Linux Gaming Experience

**BeLGE Package** was designed to enable you to run MS Games within the Steam app on a freshly installed version of Ubuntu 20.04 LTS or Ubuntu 22.04 LTS (still testing on other distros).

## Table of Contents
- [Acknowledgments](#acknowledgments)
- [Warnings](#warnings)
- [System Requirements](#system-requirements)
- [Package Install Instructions](#package-install-instructions)
- [Video Tutorials](#video-tutorials)
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
- This package is **only configured for Ubuntu 20.04 or 22.04-JJ LTS and WAS NOT TESTED WITH ANOTHER SYSTEM LANGUAGE THAN ENGLISH YET** (other languages may experience issues when running the script due to folder names). **So, if you are not using Ubuntu 20.04 or 22.04 with English language set on it, I advise you not to test the package** (broken links could appear due to different folder names with another language).
- Let's take into account that this package is **STILL EXPERIMENTAL**, and **YOU ARE RESPONSIBLE for ANY ISSUE** that could happen during its execution!!! (I never had any trouble yet)
- It remains impossible for me to connect to the XBox server but this does not prevent you to play online multiplayer mode with a great gaming experience.
- **YOU MUST OWN THE GAME ON STEAM TO RUN THIS PACKAGE, DON'T EVER USE A HACKED VERSION** (let's keep in mind the money could be useful for Steam to maintain Proton for exemple. If you are not willing to pay even a copper to play, maybe you should look after something which is already free instead !)

## System Requirements

**Minimal System Requirements (for now) :**
- Minimal configuration tested system for now is a DELL Latitude E5470 with Intel Core i7-6820HQ CPU (frequency up to 3.6 GHz in Turbomode) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512 GB SSD ROM (all technical data are listed in the [Successfully Tested Devices](#successfully-tested-devices) section below.
   
**Recommended:**
- Octo-core CPU @ 3.6 GHz (Intel Core i5/7 or AMD Ryzen 5/7 or higher performances CPU for example) with at least 16GB RAM DDR4 and a SSD disk with at least 30GB free space.

## Package Install Instructions

- Open a terminal (Type "Terminal" in the application menu or Ctrl + Alt + T) then copy/paste the following command in it:
  - Focal (Ubuntu 20.04) : 

        wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-UBUNTU2004-v1-0/BeLGE-Ubuntu2004-V1-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh
    
  - Jammy (Ubuntu 22.04) :

        wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-UBUNTU2204-v1-0/BeLGE-Ubuntu2204-V1-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh
 
  - Mantic (Ubuntu 23.10) [non LTS - Experimental] :
 
          wget -O BeLGE_Install.sh https://github.com/rdh59320/BeLGE/releases/download/BeLGE-UBUNTU2310-v1-0/BeLGE-Ubuntu2310-V1-0.sh && sudo chmod +x BeLGE_Install.sh && bash BeLGE_Install.sh

    
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

## Video Tutorials
Coming soon !

## Successfully Tested Devices
- **DELL Latitude E5470 (2016) with Intel Core i7-6820HQ CPU (Frequency up to 3.6 GHz) with embedded Intel HD Graphics 530 GPU, 16GB RAM (2x8GB) DDR4 2133 MHz and a 512GB SSD disk :**
  
System:


- **DELL VOSTRO (2023) with AMD Ryzen 7-5700U CPU (Frequency up to 4.3 GHz) with embedded AMD Radeon Graphics, 32GB RAM (1x32) DDR4 3200 MHz and a 512GB ROM SSD :**
  
   System:
  Host: VostRom Kernel: 6.2.0-39-generic x86_64 bits: 64 Desktop: GNOME 42.9
    Distro: Ubuntu 22.04.3 LTS (Jammy Jellyfish)
  
  Machine:
  Type: Laptop System: Dell product: Vostro 3525 v: 1.14.0
  Mobo: Dell model: 0RYWXV v: A02 serial: NA
    UEFI: Dell v: 1.14.0 date: 11/10/2023
  
Battery:
  ID-1: BAT1 charge: 40.8 Wh (100.0%) condition: 40.8/40.8 Wh (100.0%)
  CPU:
  Info: 8-core model: AMD Ryzen 7 5700U with Radeon Graphics bits: 64
    type: MT MCP cache: L2: 4 MiB
  Speed (MHz): avg: 1425 min/max: 1400/4370 cores: 1: 1400 2: 1400 3: 1400
    4: 1400 5: 1400 6: 1400 7: 1800 8: 1400 9: 1400 10: 1400 11: 1400 12: 1400
    13: 1400 14: 1400 15: 1400 16: 1400
    
  Graphics:
  Device-1: AMD Lucienne driver: amdgpu v: kernel
  Device-2: Microdia Integrated_Webcam_HD type: USB driver: uvcvideo
  Display: server: X.Org v: 1.21.1.4 driver: X: loaded: amdgpu,ati
    unloaded: fbdev,modesetting,radeon,vesa gpu: amdgpu
    resolution: 1920x1080~120Hz
  OpenGL:
    renderer: RENOIR (radeonsi renoir LLVM 15.0.7 DRM 3.49 6.2.0-39-generic)
    v: 4.6 Mesa 23.3.2 - kisak-mesa PPA
    
  Audio:
  Device-1: AMD Renoir Radeon High Definition Audio driver: snd_hda_intel
  Device-2: AMD Raven/Raven2/FireFlight/Renoir Audio Processor
    driver: snd_rn_pci_acp3x
  Device-3: AMD Family 17h HD Audio driver: snd_hda_intel
  Sound Server-1: ALSA v: k6.2.0-39-generic running: yes
  Sound Server-2: PulseAudio v: 15.99.1 running: yes
  Sound Server-3: PipeWire v: 0.3.48 running: yes
  
  Drives:
  Local Storage: total: 476.94 GiB used: 136.26 GiB (28.6%)
  ID-1: /dev/nvme0n1 vendor: Samsung model: PM9B1 NVMe 512GB
    size: 476.94 GiB
    
  Partition:
  ID-1: / size: 274.46 GiB used: 136.04 GiB (49.6%) fs: ext4
    dev: /dev/nvme0n1p7
  ID-2: /boot/efi size: 296 MiB used: 224.4 MiB (75.8%) fs: vfat
    dev: /dev/nvme0n1p1
    
  Swap:
  ID-1: swap-1 type: file size: 2 GiB used: 0 KiB (0.0%) file: /swapfile
  ID-2: swap-2 type: zram size: 15.35 GiB used: 0 KiB (0.0%)
    dev: /dev/zram0
    
  Sensors:
  System Temperatures: cpu: 51.0 C mobo: 41.0 C sodimm: SODIMM C gpu: amdgpu
    temp: 45.0 C
  Fan Speeds (RPM): cpu: 0
  
  Info:
  Processes: 422 Uptime: 4h 56m Memory: 30.69 GiB used: 6.26 GiB (20.4%)
  Shell: Sudo inxi: 3.3.13

  - **New Devices to come  !!! Hope so !!!**
