## -*- coding: utf-8 -*-
.. title: raspberry pi

Getting your Raspberry Pi 2 B ready for openFrameworks
============

## Create SD Card - ArchLinux "ARMv7"

_*This has to be done under a linux computer (you can use raspbian :D)_

Replace **sdX** in the following instructions with the device name for the SD card as it appears on your computer.

1. Start fdisk to partition the SD card:

		fdisk /dev/sdX

+ At the fdisk prompt, delete old partitions and create a new one:

	- Type **o**. This will clear out any partitions on the drive.

	- Type **p** to list partitions. There should be no partitions left.

	- Type **n**, then **p** for primary, **1** for the first partition on the drive, press **
	ENTER** to accept the default first sector, then type **+100M** for the last sector
	
	- Type **t**, then **c** to set the first partition to type **W95 AT32 (LBA)**
	
	- Type **n**, then **p** for primary, **2** for the second partition on the drive, and then 
	press **ENTER** twice to accept the default first andast sect
	
	- Write the partition table and exit by typing **w**.

+ Create and mount the FAT filesystem:

		mkfs.vfat /dev/sdX1
		mkdir boot
		mount /dev/sdX1 boot

+ Create and mount the ext4 filesystem:

		mkfs.ext4 /dev/sdX2
		mkdir root
		mount /dev/sdX2 root

+ Download and extract the root filesystem (as root, not via sudo):

		wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-2-latest.tar.gz
		bsdtar -xpf ArchLinuxARM-rpi-2-latest.tar.gz -C root
		sync

+ Move boot files to the first partition:

		mv root/boot/* boot

+ Unmount the two partitions:
	
		umount boot root

Insert the SD card into the Raspberry Pi, connect ethernet, and apply 5V power.
Use the serial console or SSH to the IP address given to the board by your router.
Login as the default user alarm with the password alarm.
The default root password is root.

---

## Accommodate ?
<br/>

1. Login as **root**

+ Install sudo

		pacman -S sudo

+ Delete **alarm** user

		userdel alarm

+ Create new **pi** user

		useradd -m -G users -s /bin/bash pi

+ Modify _sudoers_ file

	* sudo nano /etc/sudoers

			## Uncomment to allow members of group sudo to execute any command
			#%sudo ALL=(ALL) NOPASSWD: ALL

	* Uncomment the second of the above lines, so that it reads as follows:

			## Uncomment to allow members of group sudo to execute any command
			%sudo ALL=(ALL) NOPASSWD: ALL

	* Control-O + Control-X to save and exit 

+ Add superpowers to user **pi**

		groupadd sudo
		usermod -a -G sudo pi

+ Modify you bash for ease of use
	
	* nano .bashrc
	
			# This reads .bash_aliases file for aliases
			if [ -f ~/.bash_aliases ]; then			 		
			. ~/.bash_aliases
			fi

	* nano .bash_aliases

			#Enter openFrameworks folder just by typing "oF"
			alias oF='cd /home/pi/of_v0.9.2_linuxarmv7l'
			#Run project generator by typing projectgenerator
			alias projectgenerator='oF && ./apps/projectGenerator/commandLine/bin/projectGenerator'
			# Read temperature of rPi
			alias temp='/opt/vc/bin/vcgencmd measure_temp'
			# Read screen properties
			alias screen='/opt/vc/bin/tvservice -s'

	* nano .bash_profile
	
			#Setup openFrameworks variables
			export MAKEFLAGS=-j4 PLATFORM_ARCH=armv7l PLATFORM_VARIANT=raspberry2

---

## Preliminary work
<br/>

1. Make a directory to not make a mess (you can delete it afterwards)

		mkdir builds
		cd builds

+ Install devel something

		sudo pacman -S --needed base-devel
	
+ **Install rtMIDI**

		curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/rtmidi.tar.gz
	
+ Edit PKGBUILD file
	
		cd rtmidi
		nano PKGBUILD

+ Edit line where it says [ **arch=('i686' 'x86_64')** ] into [ **arch=('armv7h')** ]

		arch=('i686' 'x86_64') ----> arch=('armv7h')
	
+ Make

		makepkg -si

+ **Install rtAudio**

		curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/rtaudio.tar.gz
	
+ Edit PKGBUILD file 

		cd rtaudio
		nano PKGBUILD

+ Edit line where it says [ arch=('i686' 'x86_64') ] into [ arch=('armv7h') ]

		arch=('i686' 'x86_64') ----> arch=('armv7h')
	
+ Make

		makepkg -si
	
	[Accept all prompts (of course if you agree)]

+ Reboot and then you can delete the builds folder (packages have been already installed)
	
---

## openFramewokrs
<br/>


1. Get openframeworks from website:

		curl -O http://openframeworks.cc/versions/v0.9.2/of_v0.9.2_linuxarmv7l_release.tar.gz

+ Make oF directory 

		mkdir of_v0.9.2_linuxarmv7l

+ Unpack tar

		tar vxfz of_v0.9.2_linuxarmv7l_release.tar.gz -C of_v0.9.2_linuxarmv7l --strip-components 1
	
+ Update 

		pacman -Syu
	
+ Run scripts

		cd of_v0.9.2_linuxarmv7l/scripts/linux/archlinux
		sudo ./install_dependencies.sh
	
	[This usually takes some time and has some prompts (accept them)]
	
		sudo install_codecs.sh
	
+ Set makeflags (you can put this in your .bash_profile so you don't have to type it in every time)

		export MAKEFLAGS=-j4 PLATFORM_ARCH=armv7l PLATFORM_VARIANT=raspberry2
	
+ Compile oF

		make Release -C /home/pi/of_v0.9.2_linuxarmv7l/libs/openFrameworksCompiled/project
	
+ Run an example

		cd /home/pi/of_v0.9.2_linuxarmv7l/examples/graphics/polygonExample	
		make && make run

Have lots of fun ! **:)**
