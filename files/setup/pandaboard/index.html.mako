## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

#Pandaboard

##Ubuntu installation
This guide is written following this guides

[http://omappedia.org/wiki/Ubuntu_Pre-built_Binaries_Guide](http://omappedia.org/wiki/Ubuntu_Pre-built_Binaries_Guide)

[https://groups.google.com/d/topic/pandaboard/7DLabw7amBg/discussion](https://groups.google.com/d/topic/pandaboard/7DLabw7amBg/discussion)

[https://groups.google.com/forum/?fromgroups=#!topic/pandaboard/vKunvhMNV8k](https://groups.google.com/forum/?fromgroups=#!topic/pandaboard/vKunvhMNV8k)

If you have problems installing Ubuntu on your Pandaboard refer to those guides

##Required: 

* PandaboardES,
* sd-card more than 4GB,
* internal or external card reader (USB 3.0 pref.).
* internet connection (LAN or wifi)

You need to install hard-float version of Ubuntu: version 12.04. This because OF is configured for hard float for better performance.

You must download the zipped .img desktop from [here](http://cdimage.ubuntu.com/releases/12.04/release/ubuntu-12.04-preinstalled-desktop-armhf+omap4.img.gz)


##Installing Ubuntu on the SDCard:

###Linux

* Place the SD card at your host computer.
* Make sure the SD card is not mounted (just umount it if needed)
* Identify the correct raw device name (like /dev/sde - not /dev/sde1). To know what the name of your (sd-card) launch in a terminal:

        disks --enumerate
   
    or use the utility disk application from the Desktop. Pay attention any wrongs could be dangerous here!
 
* Run the following command from a terminal:
(replacing  sde with the right values )

        zcat ./ubuntu-12.04-preinstalled-desktop-armhf+omap4.img.gz | sudo dd bs=4M of=/dev/sde ; sudo sync

* Some people have reported issues with this method. If this doesn't work, try the following commands:

        gunzip ubuntu-12.04-preinstalled-desktop-armhf+omap4.img.gz
        sudo dd bs=4M if=ubuntu-12.04-preinstalled-desktop-armhf+omap4.img of=/dev/sde
        sudo sync


###Mac OSX
* locate the SD Card (look for /dev/diskN):

     diskutil list

* Unmount the disk where "N" is the number of the disk taken from the above command:

     diskutil unmountDisk /dev/diskN

* Use the following code to write the image to diskN:

        dd bs=4m if=ubuntu-12.04-preinstalled-desktop-armhf+omap4.img of=/dev/diskN


###MS Windows

* Download the image and extract it using WinZip or some other archive utility. Then use Win32ImageWriter to write the unzipped img file to your flash device.
* Follow the instruction on the help reference to burn the mage in the sdcard.
* You can download Win32ImageWriter from [here](https://launchpad.net/win32-image-writer).

##Installing Ubuntu from the sdcard

After copying ubuntu on the sdcard from your computer, eject your sd-card, insert it  in your pandaboard, plug a keyboard and a mouse, plug a monitor on you hdmi. As you plug the voltage Ubuntu will start the booting process and loading the kernel. After that it will autoresize and create automatically the partition on your disk. In a few seconds you will see a window in your screen asking for the installation language . The configuration setup is started! follow all the instructions this part is super friendly. At the end it will ask to reboot. Do it and follow the next steps.

##Install OMAP4 addons
Once the Pandaboard finished booting, follow those instruction to configure it.

* Add TI OMAP release PPA

        sudo su add-apt-repository ppa:tiomap-dev/release

* Perform the upgrade

        apt-get update

        apt-get dist-upgrade

        apt-get install ubuntu-omap4-extras

* You can re-run a dist-upgrade for safety at the end, then reboot.


##Post Installation Important Information

* After the installation/update, it is advised to log as default user and to execute:

    * On Panda 4430:

            /usr/bin/alsaucm -c Panda set _verb HiFi


    * On PandaES 4460:

            /usr/bin/alsaucm -c PandaES set _verb HiFi

* Install new bootloaders: You need to force installation of new bootloaders (if any) through command:

        sudo /usr/sbin/flash-kernel --update-bootloader

* Change Ubuntu desktop: it is advised to use Ubuntu 2D instead of Ubuntu (3D) default UI. (Nevertheless, main compiz issues have been fixed)

* Check dkms installation: in some cases, you might need to re-install dkms packages: after reboot,  check if omapdrm_pvr module is loaded, you can run in a console:

        lsmod

* if it's not there execute following command before to reboot:

        sudo apt-get install --reinstall pvr-omap4-dkms


* Change the boot args: you must modify the boot/boot.script as suggested in the Pandaboard google group:

    * Open terminal and go to boot directory

            cd /boot
            sudo nano boot.script


    * Please replace:
     
            "vram=40M mem=456M@0x80000000 mem=512M@0xA0000000"     (or any vram or split mem settings) 

    * with

            "mem=1G@0x80000000"

    * We advise following bootargs:

            ro elevator=noop console=ttyO2,115200n8 mem=1G@0x80000000 root=<UUID or LABEL root> fixrtc splash

    * (even if you are not using minicom, it is wise to add the "console" as well: if you install minicom in the future, you won't need to remodify the boot args).

    * Save it and then run the following command to apply the changes:

            flash-kernel

    * (this generate the new boot.scr and copy it to boot partition)


## Install openFrameworks

* Download openFrameworks for armv7 if you haven't done it before, uncompress it somewhere in your sdcard, usually in your home folder, documents or desktop
* Run the install_dependencies.sh and install_codecs.sh scripts in scripts/linux/ubuntu 
* Compile and run any of the examples, for example:

        cd $(OF_ROOT)/examples/graphics/polygonExample
        make
        make run
        
* The first time you compile a example it'll take a while to compile since it needs to compile all of openFrameworks. Next times it'll just need to compile you example code and it'll be much faster.
* You can edit your source files using gedit, the default text editor on linux which has great syntax highliting.



##Troubleshooting
.. 
A good idea is to check from time to time the Pandaboard Google group to keep yourself updated about new versions of TI OMAP.
[https://groups.google.com/forum/?fromgroups#!forum/pandaboard](https://groups.google.com/forum/?fromgroups#!forum/pandaboard)


###Repository fetch error:
If you got an error after apt-get update: cannot fetch some repository ("armhf" packages). 
You first need to add the PPA repository before running "apt-get update".

###Mouse cursor flashing:
Mouse cursor flash is consequence of HWcursor, you can fix that by disabling HWcursor in xorg.conf file, edit file /usr/share/X11/xorg.conf.d/99-omap.conf and add the bold line:

        Section "Device"
	        Identifier	"Video Device"
	        Driver 		"omap"
	        Option		"Debug"		"false"
	        Option		"HWcursor"		"false"
        EndSection


###Screen flickering
After reboot, the screen flicker in black when moving the mouse at on the desktop elements.
Then logout and in front of the user name, click on the ubuntu symbol. Then select "Ubuntu 2D".


##Optionals
Install Xubuntu
Using a lightweight desktop environment like Xfce will speed up the pandaboard.
Xubuntu is also a derivative of Ubuntu but with Xfce as the desktop environment and some other applications.

Install Xubuntu on top of Ubuntu:

        sudo apt-get update
        sudo apt-get install xubuntu-desktop

'''}
