<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============


##Getting your Raspberry Pi ready for openFrameworks:

0. Install the latest _**Raspbian**_ image, according to the instructions in the [Official Quickstart Guide](http://www.raspberrypi.org/quick-start-guide). More instructions on the page [Raspberry Pi Preparing Your SD Card](Raspberry-Pi-Preparing-Your-SD-Card)
    * **Make sure you are working with the the "hard float" version of wheezy (aka "Raspbian"), not the soft-float version (aka "Soft-float Debian "wheezy").** 
0. You might want to [set up wifi on your Raspberry Pi](Raspberry-Pi-Setting-Up-Wifi) (optional)
0. Please note if you are booting for the first time you will need to have a USB keyboard and either a HDMI Monitor or a HDMI to DVI||VGA adapter depending on your setup.  Please read [this guide](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=26&t=4751&sid=e0ac7081d9cf50ce6f676933b9d5bf03) as it contains a lot of useful information about bringing up your pi for the first time.  Please select the following options from the configuration screen described in this [this guide](http://www.raspberrypi.org/phpBB3/viewtopic.php?f=26&t=4751&sid=e0ac7081d9cf50ce6f676933b9d5bf03).
    * expand_rootfs, this expands the root file-system to your full SD card. 
    * ssh, enable sshd at boot (if you wish to ssh into your pi instead of using a USB keyboard)
    * memory_split, set it to 128 (which is good for both the 256 RPis and later) 
    * **if you already have a working pi you should do the following**
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * `sudo apt-get install git-core binutils`
    * run `sudo wget http://goo.gl/1BOfJ -O /usr/bin/rpi-update && sudo chmod +x /usr/bin/rpi-update`
    * then execute the `sudo rpi-update`
    * **you will need to reboot your pi after this step** `sudo reboot`

0. Once you are logged in to the RPI on the command line (via SSH or plugged into a screen) make sure your system is up-to-date.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: The above steps may take a little while._
    * If you are still having issues updating apt-get run the following command then repeat the steps from above: `sudo rm /var/lib/apt/lists/* -vf`
    * install git: `sudo apt-get install git`
    * install and enable Multicast DNS (mDNS) for board to be reachable at `raspberrypi.local.` from machines on the same network: `sudo apt-get install libnss-mdns`

0. Then download OF for linux armv6 if you haven't done it before and uncompress it somewhere on the pi

## Building openFrameworks and an oF App:


### Installing dependencies and Compiling the openFrameworks Core:

0. First, you will need to install the dependencies and codecs oF uses using the following commands:
    * `cd $(OF_ROOT)/scripts/linux/debian_armv6l`
    * `sudo ./install_codecs.sh`
    * `sudo ./install_dependencies.sh` 
0. Next you need to build the core openFrameworks libraries. **Set your gpu_mem=64 in order build without breaking. ** To do so, navigate to the `$(OF_ROOT)/libs/openFrameworksCompiled/project` folder on your RPI and run:
    _Note: The build takes approximately 1hr to complete. this is going to take a [while](http://xkcd.com/303/)_
    * `make` to build the Release library.
    * or
    * `make Debug` to build the debug library.
0. If you have the need for speed and have an Ubuntu desktop machine to spare (or VM!), see the [Raspberry Pi Cross Compiling Guide](Raspberry-Pi-Cross-compiling-guide.html) to compile directly from your computer or [Raspberry Pi DISTCC Guide](Raspberry-Pi-DISTCC-guide.html) to compile from the PI but use your computer to speed up the compiling.

_Note:This will use the new makefile system to automatically detect your system and will load the platform specific configurations found in the `linuxarmv6l` subfolder. This platform specific makefile is used for compiling BOTH core libraries AND compiling specific oF projects.  If you are experimenting with missing features, you may need to modify that file at some point. It is very well documented (in fact all of the new makefile system is heavily commented, so feel free to look around and make suggestions!)._



###Compiling Your First App

For example:

* `cd $(OF_ROOT)/examples/graphics/polygonExample`
* `make`
* `make run`

To create a new project you can just make a copy of the emptyExample in examples/empty/emotyExample to a path similar to apps/myapps/newApp. It's important that your application directory is 3 levels below OF_ROOT.

##Notes:
For doing development on your pi from OS X via SSH you should perform the following steps:

* On your Raspberry Pi enable sshd to start at boot 
* On your Mac from Finder select Apple>System Preferences>Sharing>Internet Sharing
* Check Internet with 'Share Your Connection from: WiFi' and 'To Computers Using: Ethernet'
* Plug an ethernet cable from your Raspberry Pi into your Mac
* Restart your Raspberry Pi

OSX uses the range `192.168.2.2-254` as its DHCP range for devices connected via the ethernet jack your pi will probably be `192.168.2.2` but it could be `192.168.2.7`You might have to run [nmap](http://nmap.org/) to find the IP of your pi if you do not have a USB keyboard handy `nmap  -v -sP 192.168.2.2-254` should do the trick.  Alternatively, you can directly query the current dhcp leases to find your connected ip address with:
`grep ip_address /private/var/db/dhcpd_leases | cut -d= -f2 | nmap -iL - -sn`


For Linux (with gnome):

* On your Raspberry Pi enable sshd to start at boot 
* On your Linux machine from the network manager applet, select `Edit connections`
* Press Add
* Select Ethernet
* In the Device MAC Address Select the first one that appears
* Now select the `IPv4 Settings` tab
* In method select `Shared to other computers`
* Press save
* Plug an ethernet cable from your Raspberry Pi into your computer
* Restart your Raspberry Pi

Gnome's network manager uses the range `10.0.42.2-254` as its DHCP range for devices connected via the ethernet jack. Your pi will get an address in that range and it'll be always the same but you'll need to check the first time. You might have to run [nmap](http://nmap.org/) to find the IP of your pi if you do not have a USB keyboard handy `nmap  -v -sP 10.42.0.0/24` should do the trick. 

Common to all platforms, mDNS:

If you have enabled mDNS (see above) or are using an earlier version of Raspbian with mDNS pre-enabled, the board will be reachable at `raspberrypi.local.` (or `raspberry.local.`) and you can SSH with the username pi: `ssh pi@raspberrypi.local.`  If you have changed the name, or can't find it, run avahi-discover to check all the available machines in the network

If you haven't enabled mDNS open terminal and run the SSH command `ssh pi@the.ip.address.of.your.pi` if everything went well you should be presented with a password prompt.

'''}

