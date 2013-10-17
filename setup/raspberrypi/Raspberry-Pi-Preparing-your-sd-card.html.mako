## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============


## Instructions
[If you did not order a preloaded RPi SD card, read this page on instructions for prepairing a RPi SD Card.](http://elinux.org/RPi_Easy_SD_Card_Setup)

## Images
* download through: http://www.raspberrypi.org/downloads
* distribution info: http://elinux.org/RPi_Distributions

## OS Specific Setup Tutorials and Apps
* mac: [RPi-sd card builder](http://alltheware.wordpress.com/2012/12/11/easiest-way-sd-card-setup/) or [RasPiWrite](https://github.com/exaviorn/RasPiWrite)
* win: [instructions](http://elinux.org/RPi_Easy_SD_Card_Setup#Copying_the_image_to_an_SD_card_on_Windows)
* linux: [instructions](http://elinux.org/RPi_Easy_SD_Card_Setup#Copying_an_image_to_the_SD_card_in_Linux_.28command_line.29)
* cross: [BerryBoot](http://www.berryterminal.com/doku.php/berryboot)

## From the Command Line OS X
* run `diskutil list` to list the disks
** you want to identify the disk not the partition of your SD Card i.e. disk2 not disk2s1
* run `diskutil unmountDisk /dev/<disk# from diskutil>`
* run `sudo dd bs=1m if=<your image file>.img of=/dev/<disk# from diskutil>`
_Note:this will take a few minutes_

'''}

