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

0. Then clone this repo:
    * `git clone https://github.com/openFrameworks-RaspberryPi/openFrameworks/`
    * _Note: If you want to contribute code to the this project, create your own branch and submit a pull request to the `develop-raspberrypi` branch of this repo._
    * _Note: For purposes of discussion below, $(OF_ROOT) is will be the location of the openFrameworks root folder you created during this cloning process._ (suggested root dir ~/src/openFrameworks)

0. Then move into your newly created directory ...
    * `cd openFrameworks`

0.  ... and checkout the `develop-raspberrypi` branch:
    * `git checkout develop-raspberrypi` 
    * _Note: The `master-raspberrypi` is now gone!  Use the `develop-raspberrypi` branch._

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
0. If you have the need for speed and have an Ubuntu desktop machine to spare (or VM!), see the [Raspberry Pi Cross Compiling Guide](Raspberry-Pi-Cross-compiling-guide).

_Note:This will use the new makefile system to automatically detect your system and will load the platform specific configurations found in the `linuxarmv6l` subfolder. This platform specific makefile is used for compiling BOTH core libraries AND compiling specific oF projects.  If you are experimenting with missing features, you may need to modify that file at some point. It is very well documented (in fact all of the new makefile system is heavily commented, so feel free to look around and make suggestions!)._



###Compiling Your First App
We do not support running openFrameworks apps in a X11 window with the Raspberry Pi.  You will not able to use VNC+X11 to view the output of your applications from your host machine.  We currently only support output via the HDMI out or RCA Video out ports.  _Note:We would like to support this in the future and if you would like to contribute please read the guide on [contributing to the project](Raspberry-Pi-Contributing-Code)_

Currently the base Makefile are located in `$(OF_ROOT)/scripts/linux/template/linuxarmv6l` but now we are going to copy the following files to your home directory for easy access.  
* `cd $(OF_ROOT)/scripts/linux/template/linuxarmv6l`
* `cp Makefile ~/`

Now we are going to navigate to `$(OF_ROOT)/apps/devApps` folder and try out a few simple RPI apps.  You'll find the following apps: 
* `cd $(OF_ROOT)/apps/devApps`
* raspberrypi_hello_world
* raspberrypi_hello_world_gles2 

If the Makefiles are not present in these projets lets copy our Makefiles from our home directory into these projects and compile the projects:

_Note: you should do this for any RPI apps you want to build._ 
* `cp ~/Makefile ./PROJECT_DIRECTORY`
* type make and follow the instructions on the screen after the successful builds. 

_Note: if you find any errors at this step compiling or running either `raspberrypi_hello_world_gles2` or `raspberrypi_hello_world` please file them on github. Also note that gles2 might work better using `develop-raspberrypi`_ 

After you have built your first app, play around with the examples in `$(OF_ROOT)/examples` some great ones are below: 

* windowExample in `$(OF_ROOT)/examples/utils` on `develop-raspberrypi` 
* openCVExample in `$(OF_ROOT)/examples/addons/` 
* soundPlayerExample in `$(OF_ROOT)/examples/sound/`
* soundPlayerFFTExample in `$(OF_ROOT)/examples/sound/`

_Note: Most of the above apps will require a USB Keyboard and/or USB mouse as it uses our experimental code which currently requires `develop-raspberrypi`.  The experimental code allows for input devices and windowing outside of X11 on the Raspberry Pi so if you find any errors with the above apps please file them on github._
   
To run other examples or try out your own program, for the moment we recommend copying the `raspberrypi_hello_world` example.  In the future, a command line or GUI `projectGenerator` will make this easier.
_Note: If you are a developer, please take a look at the `config.make` file and the `addons.make` files in `$(OF_ROOT)/scripts/linux/template/linuxarmv6l`._
##Notes:
For doing development on your pi from OS X via SSH you should perform the following steps:

* On your Raspberry Pi enable sshd to start at boot 
* On your Mac from Finder select Apple>System Preferences>Sharing>Internet Sharing
* Check Internet with 'Share Your Connection from: WiFi' and 'To Computers Using: Ethernet'
* Plug an ethernet cable from your Raspberry Pi into your Mac
* Restart your Raspberry Pi

OSX uses the range `192.168.2.2-254` as its DHCP range for devices connected via the ethernet jack your pi will probably be `192.168.2.2` but it could be `192.168.2.7`You might have to run [nmap](http://nmap.org/) to find the IP of your pi if you do not have a USB keyboard handy `nmap  -v -sP 192.168.2.2-254` should do the trick.  Alternatively, you can directly query the current dhcp leases to find your connected ip address with:
`grep ip_address /private/var/db/dhcpd_leases | cut -d= -f2 | nmap -iL - -sn`

If you have enabled mDNS (see above) or are using an earlier version of Raspbian with mDNS pre-enabled, the board will be reachable at `raspberrypi.local.` (or `raspberry.local.`) and you can SSH with the username pi: `ssh pi@raspberrypi.local.`  If you have changed the name, or can't find it, a program like [Bonjour Browser](http://www.tildesoft.com/files/BonjourBrowser.dmg).

If you haven't enabled mDNS open terminal and run the SSH command `ssh pi@the.ip.address.of.your.pi` if everything went well you should be presented with a password prompt.

'''}

