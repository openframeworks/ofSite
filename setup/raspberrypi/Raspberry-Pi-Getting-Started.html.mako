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

