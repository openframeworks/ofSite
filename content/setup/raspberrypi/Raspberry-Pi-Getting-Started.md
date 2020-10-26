## -*- coding: utf-8 -*-
.. title: raspberry pi

Getting your Raspberry Pi ready for openFrameworks
============


## Install Raspbian "Buster"
0. Install the latest _**Raspbian** (Debian Buster)_ image from the [Raspberry Pi downloads page](http://www.raspberrypi.org/downloads)
1. Follow the instructions at [Raspberry Pi Preparing Your SD Card](http://elinux.org/RPi_Easy_SD_Card_Setup) to get Raspbian installed onto your SD Card


## Configure the Raspberry Pi
This guide assumes you are starting from a fresh Raspbian install and that you are able to connect to the Raspberry Pi and send it commands.

If you're installing Raspbian via NOOBS, SSH access is disabled by default since the 2016-11-25 release, which makes setup in headless mode difficult. If you don't have access to a keyboard and monitor and plan to set up from scratch in the headless mode, make sure you follow [this guide and add the ssh file onto the boot partition](https://www.raspberrypi.org/documentation/remote-access/ssh/).

You can enter commands on the Pi by:

0. SSH into the Pi from a different computer
0. Attach a keyboard and monitor to the Pi.
	* With Stretch the Raspberry Pi now boots the X11 window system by default, open up LXTerminal from the shortcut on the Raspberry Pi Desktop
	* Type in the command `sudo raspi-config`

_We need to make sure the CPU has 192MB of RAM in order to compile openFrameworks. Once you have compiled openFrameworks you may want to repeat this step with 128_

0.  Select `1 Expand Filesystem` and hit Enter
0.  Select `7 Advanced Options` and hit Enter
	* Select `A3 Memory Split` and hit Enter
	* Type `64` and Hit `<ok>`

openFrameworks does not use the X11 Desktop for running OF applications. You can save GPU memory by disabling it. This is optional but suggested.

0. Select `3 Boot Options`
0. Select `B1 Console` or `B2 Console Autologin`

For openFrameworks 0.11.0 and onwards OF needs to use the new experimental GL driver instead of the legacy driver.

0. Select `7 Advanced Options` and hit Enter
	* Select either `GL Driver Fake KMS` or `GL Driver Full KMS` or from the options and hit Enter

For older OF releases with Wheezy or Jessie select the legacy driver instead.

Unlike Wheezy, Debian Jessie onwards does not display the IP address on boot. You may wish to get the current IP by typing `ifconfig`. The IP address is under the eth0 entry for wired ethernet. This can possibly change on reboot.

0. Reboot when prompted or type `sudo reboot`
0. Assuming you have internet access run these commands to update the software to the latest packages.

```sh
sudo apt-get clean
sudo apt-get update
sudo apt-get upgrade
```
_Note: The above steps may take a little while._

## Download openFrameworks
You now can download openFrameworks and uncompress it into a folder. Using a Shell, The following commands will download openFrameworks and uncompress it into the folder `/home/pi/openFrameworks`

### For the Raspberry Pi using OF for arm6

```sh
cd
wget https://openframeworks.cc/versions/v0.11.0/of_v0.11.0_linuxarmv6l_release.tar.gz
mkdir openFrameworks
tar vxfz of_v0.11.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1
```


## Install packages and compile openFrameworks:
 Make sure you didn't skip the Memory Split step in the above section _**Configure the Raspberry Pi**_ or it will eventually fail.

The time for these steps will depend on whether you are on a RPI1, RPI2 or RPI3 and the speed of the Raspbian mirrors to download the packages.

Assuming openFrameworks is located at `/home/pi/openFrameworks` run the following commands to install the necessary packages and compile openFrameworks.

```sh
cd /home/pi/openFrameworks/scripts/linux/debian
sudo ./install_dependencies.sh
```

You are now ready to compile openFrameworks!
```sh
make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project
```

## Use EGL instead of GLFW 
As of 0.11.0 the default window is ofAppGLFWWindow. If you want to use the older ofAppEGLWindow approach, comment out `USE_GLFW_WINDOW = 1` in `libs/openFrameworksCompiled/project/linuxarmv6l/config.linuxarmv6l.default.mk` 

## Speeding up compiling
Compiling natively on the Raspberry Pi takes a long time. openFrameworks applications typically take much less time than the core library. Taking the time to set up a cross-compiling solution will save you enormous amounts of time.

[Raspberry Pi Cross Compiling Guide](../raspberry-pi-cross-compiling-guide/)

## Compile your first app
openFrameworks ships with a bunch of examples located in the `openFrameworks/examples` folder. Inside examples the projects are sorted by the categories:

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

```sh
cd /home/pi/openFrameworks/examples/graphics/polygonExample
make
make run
```

Unlike other platforms, OF Raspberry Pi projects do not make use of the projectGenerator. To create your own project from scratch, copy `examples/empty/emptyExample` into `apps/myApps/yourProjectName` folder and start from there

For example:

```sh
cp -R /home/pi/openFrameworks/examples/empty/emptyExample /home/pi/openFrameworks/apps/myApps/myRpiApp
cd /home/pi/openFrameworks/apps/myApps/myRpiApp
make
make run
```

It is critical to keep your application directory 3 levels below the openFrameworks directory.

## Tips for 0.11.0 / Raspberry Pi 4 
- Currently the 0.11.0 release has 4x Anti Aliasing as default for the GLFW window. This can cause quite a big hit to framerate. 0.11.1 Patch release [will fix this](https://github.com/openframeworks/openFrameworks/pull/6503/files), but you can also set the window settings manually in main.cpp to set numSamples to 0.
- If you don't want to run PI apps from the X desktop enviornment but want to use the GLFW window system ( or have a Raspberry Pi 4 which requires X ) you can run an OF app without the desktop. First make sure you have X installed with: ```sudo apt-get install xorg``` then launch your app with: ```startx ./polygonExample -- -s off```. Your app will run with an X window but without the overhead of the desktop enivornment.    
- If you want to run an app headless you can use XVFB ( X Virtual Framebuffer ). First install XVFB with: ```sudo apt-get install xvfb``` Then run your app with: ```xvfb-run ./polygonExample &```. You won't see a window, but GL operations will be executed. 
- Finally for users who are looking for the old EGL style window support but with Raspberry Pi 4. This [work in progress addon](https://forum.openframeworks.cc/t/new-ofxaddon-ofxrpi4window/34388) is very close to providing similar functionality. 

Have fun! :)
