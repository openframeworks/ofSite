<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============


##Getting your Raspberry Pi ready for openFrameworks:
### Install Raspbian "wheezy"
0. Install the latest _**Raspbian “wheezy”**_ image from the [Raspberry Pi downloads page](http://www.raspberrypi.org/downloads)
1. Follow the instructions at [Raspberry Pi Preparing Your SD Card](http://elinux.org/RPi_Easy_SD_Card_Setup) to get Raspbian installed onto your SD Card
    * **Make sure you are working with the the "hard float" version of Raspbian "wheezy", not the soft-float version (aka "Soft-float Debian "wheezy").**
         
### Configure the Raspberry Pi
This guide assumes you are starting from a fresh Raspian install. With a fresh install the Raspberry Pi configuration is presented at the first boot. You will need to have a USB keyboard and either a HDMI Monitor or a HDMI to DVI||VGA adapter depending on your setup.

0.  Select `1 Expand Filesytem` and hit Enter
0.  Select `8 Advanced Options` and hit Enter
	* Select `A3 Memory Split` and hit Enter
	* Type `128` and Hit `<ok>`
	 
0. Reboot when prompted or `sudo reboot`
0. Assuming you have internet access run these commands to update the software to the latest packages.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: The above steps may take a little while._

#### If you have previously booted the Raspberry Pi

0. Open up a Shell session (LXTerminal on the Raspberry Pi Desktop) 
0.  `sudo raspi-config`
0.  Run the above steps

### Download openFrameworks
You now can download the Linux armv6 version of openFrameworks and uncompress it into a folder. Using a Shell, The following commands will download openFrameworks and uncompress it into the folder `/home/pi/openFrameworks`
 
0. `cd` 
0. `wget http://www.openframeworks.cc/versions/v0.8/of_v0.8_linuxarmv6_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar xfz of_v0.8_linuxarmv6_release.tar.gz -C openFrameworks --strip-components 1`

### Compiling openFrameworks:
This step will take approximately 1 hour when compiling on the Raspberry Pi, Make sure you didn't skip the memory split step above under _**Configure the Raspberry Pi**_ or it will eventually fail.

Assuming openFrameworks is located at `/home/pi/openFrameworks` run the following commands to install the necessary packages and compile openFrameworks. 

0. `cd /home/pi/openFrameworks/scripts/linux/debian_armv6l` 
0. `sudo ./install_codecs.sh` 
0. `sudo ./install_dependencies.sh` 

You are now ready to compile openFrameworks! 

0. `cd` 
0. `make -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`

As you can see compiling natively on the Raspberry Pi takes a long time. openFrameworks applications typically take much less time than the core library however taking the time to set up a cross-compiling solution will save you enormous amounts of time. 

[Raspberry Pi DISTCC Guide](Raspberry-Pi-DISTCC-guide.html)    
[Raspberry Pi Cross Compiling Guide](Raspberry-Pi-Cross-compiling-guide.html)

### Compiling Your First App
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

'''}

