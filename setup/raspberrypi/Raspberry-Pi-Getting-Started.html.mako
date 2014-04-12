## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Getting your Raspberry Pi ready for openFrameworks
============

    
## Install Raspbian "wheezy"
0. Install the latest _**Raspbian "wheezy"**_ image from the [Raspberry Pi downloads page](http://www.raspberrypi.org/downloads)
1. Follow the instructions at [Raspberry Pi Preparing Your SD Card](http://elinux.org/RPi_Easy_SD_Card_Setup) to get Raspbian installed onto your SD Card
    * **Make sure you are working with the the "hard float" version of Raspbian "wheezy", not the soft-float version (aka "Soft-float Debian "wheezy").**
         
## Configure the Raspberry Pi
This guide assumes you are starting from a fresh Raspian install and that you are able to connect to the Raspberry Pi to give it commands.

Options to give commands are:

0. SSH into the Pi from a different computer
0. Attach a keyboard and monitor to the Pi. 
	* If the Pi boots to the command prompt you are ready to go
	* If the Pi boots the X11 window system, open up LXTerminal from the shortcut on the Raspberry Pi Desktop

With a fresh install the Raspberry Pi configuration is presented at the first boot. Otherwise, you can re-configure with the command `sudo raspi-config`
_We need to make sure the CPU has 192MB of RAM in order to compile openFrameworks. Once you have compiled openFrameworks you may want to repeat this step with 128_
0.  Select `1 Expand Filesystem` and hit Enter
0.  Select `8 Advanced Options` and hit Enter
	* Select `A3 Memory Split` and hit Enter
	* Type `64` and Hit `<ok>`
	 
0. Reboot when prompted or type `sudo reboot`
0. Assuming you have internet access run these commands to update the software to the latest packages.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: The above steps may take a little while._

## Download openFrameworks
You now can download the Linux armv6 version of openFrameworks and uncompress it into a folder. Using a Shell, The following commands will download openFrameworks and uncompress it into the folder `/home/pi/openFrameworks`
 
0. `cd` 
0. `curl -O http://www.openframeworks.cc/versions/v0.8.1/of_v0.8.1_linuxarmv6l_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar vxfz of_v0.8.1_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1`

## Compile openFrameworks:
This step will take approximately 1 hour when compiling on the Raspberry Pi, Make sure you didn't skip the Memory Split step in the above section _**Configure the Raspberry Pi**_ or it will eventually fail.

Assuming openFrameworks is located at `/home/pi/openFrameworks` run the following commands to install the necessary packages and compile openFrameworks. 

0. `cd /home/pi/openFrameworks/scripts/linux/debian_armv6l`  
0. `sudo ./install_dependencies.sh` 

You are now ready to compile openFrameworks! 

0. `make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`

## Speeding up compiling
Compiling natively on the Raspberry Pi takes a long time. openFrameworks applications typically take much less time than the core library. Taking the time to set up a cross-compiling solution will save you enormous amounts of time. 

[Raspberry Pi DISTCC Guide](Raspberry-Pi-DISTCC-guide.html)    
[Raspberry Pi Cross Compiling Guide](Raspberry-Pi-Cross-compiling-guide.html)

## Compile your first app
Like on other platforms, openFrameworks ships with a bunch of examples located in the `openFrameworks/examples` folder. Inside examples the projects are sorted by the categories: 

* 3d 
* addons 
* communication 
* empty
* events
* gl
* gles
* graphics
* gui
* math
* sound
* utils
* video

Inside each category folder are a few examples of each. To run them you need to go into the folder, build and run.

For example, here is how you build and run the polygonExample:

* `cd /home/pi/openFrameworks/examples/graphics/polygonExample`
* `make`
* `make run`

To create your own project from scratch, copy `examples/empty/emptyExample` into `apps/myApps/yourProjectName` folder and start from there

For example:

* `cp -R /home/pi/openFrameworks/examples/empty/emptyExample /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `cd /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `make`
* `make run`

It is critical to keep your application directory 3 levels below the openFrameworks directory.

Have fun! :)


'''}

