## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

${'''

Raspberry Pi
============


## Debugging
If your app is crashing (segmentation fault, etc) you can get better error messages/stack traces by using gdb

example (raspberrypi_helloWorldApp is your compiled app):

* `make Debug`
* `cd bin`
* `gdb raspberrypi_helloWorldApp`
* `(type "r" to run)`

http://davis.lbl.gov/Manuals/GDB/gdb_3.html

## Resources and Examples
There are A LOT of core useful demos in the `/opt/vc/src/hello_pi` of the RPI.  If you haven't updated your firmare in a while, I recommend seeing what new demos are available in their github repo here: https://github.com/raspberrypi/firmware/tree/master/opt/vc/src/hello_pi

Second, there are A LOT of core useful (and visually inspiring) demos and techniques here:
https://github.com/chriscamacho/gles2framework/.  Be aware that this `gles2framework` has the capability of running in both X11 and NoX11 modes.  If you use any code from that repo, make sure you understand the difference. This is usually not an issue, but keep your eyes open.

## Developing on the RPI
A popular way of developing is to log on to the RPI via ssh to execute binaries.  At the same time, you can live edit files in your favorite text editor using an SFTP client such as CyberDuck.  With CyberDuck and others, each time you save the file on your local working machine (a laptop for instance), the edited source will be automatically uploaded the RPI via sftp where you can compile it from your active SSH terminal.

An alternative is to mount the RPI as a network volume using AFP or SAMBA. AFP mounts (via netatalk) have proven flakey.  Network mounts via samba (+ http://www.zeroonetwenty.com/blueharvest4/ to keep things pretty) Seem to be more stable.  Installation notes here: http://piratepad.net/TyJYAizBH3.

We are also currently exploring an openFrameworks-flavored Cloud9 editor configuration much like Adafruit currently offers (for use with Python).

Other options include:
* cross compilers toolchains (e.g. https://github.com/raspberrypi/tools)
* `qemu` based cross compiler (e.g. http://superpiadventures.com/2012/07/development-environment/ )
* `distcc` based cross compiler http://pastebin.com/raw.php?i=YrtntGtU

## Developing On the Go

### Bonjour
Much  of this development on the train between home and work and my setup is essentially a network cable between my RPI and my MacbookPro.  I installed "bonjour" (sudo apt-get install avahi-daemon) on my RPI which means that it is easy to find it via Bonjour Browser or other programs.  Then I just log in using "ssh pi@rpi.local".  If needed, I hook up a small wireless keyboard (http://www.amazon.com/dp/B003UE52ME) and a DFG1394 to the composite video output so that I can see the RPI's video output on my laptop (without the need for a large monitor on the train).  I haven't tried it, but an even better option might be one of these (http://liliputing.com/2012/06/turn-a-raspberry-pi-into-laptop-with-a-70-motorola-lapdock.html).  A student of mine just picked on up on ebay for $30.

### VNC: RPi internet sharing and VNC desktop control through your laptop
To connect your RPi directly to your laptop using an ethernet cable, with internet sharing and VNC desktop control, see this great tutorial:
* http://interlockroc.org/2012/12/06/raspberry-pi-macgyver/

which is supplemented with:
* http://4dc5.com/2012/06/12/setting-up-vnc-on-raspberry-pi-for-mac-access/

Though for the moment you will run into this warning when trying to run an OF app:

_[ofAppEGLWindow:warning] I'm sorry, i Know you wanted X11, but it's not available on RPI yet. Using a native window instead._

### via TTY debugger.
I took the RCA->Firewire setup one step further and use one of these USB->TTY cables (http://www.adafruit.com/products/954) to log into the RPi. It even provides power for the RPi to run. This means I don't need an internet connection or DHCP server. As long as my laptop battery doesn't run out, I can dev on a desert island (http://www.treehugger.com/solar-technology/5-best-portable-solar-laptop-chargers.html).

'''}

