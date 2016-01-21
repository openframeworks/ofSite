## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============


## Welcome to openFrameworks and the RaspberryPi
You are now entering the world of embedded linux development.  You'll be using mostly bash scripts, gcc, and your preferred commandline Text Editor.  It this world `screen` is your friend, from bash type [`man screen`](http://www.rackaid.com/resources/linux-screen-tutorial-and-how-to/) to learn more.  If you are completely new to the idea of doing linux development from a command line and have no idea what a commandline Text Editor is, you're in luck we'll show you how to get started and point you in the right direction to learn more. _Note: If you are a seasoned vet and use vim+regX to refactor your code move along to our [getting started guide](Raspberry-Pi-Getting-Started)_

## The Bash Shell
[Bash](http://en.wikipedia.org/wiki/Bash_\(Unix_shell\)) is a command-line interpreter or shell that provides a traditional text based user interface to linux or *nix OS. If you use a Mac as your daily computer you have a bash terminal built right in, simply open Applications> Utilities >Terminal.  Bash lets you run command-line applications and utilities such as `mk-dir foo` which makes a new directory named `foo`.  Or you can use the copy command `cp` or move command `mv` to copy or move files or directories from one place to another _Note: for copying directories you will need to use `cp -R` for recursive copying._  You can also find out the IP address of your machine by running `ifconfig` from bash.   This will most likely spit out something like:

    pi@raspberrypi ~ $ ifconfig
    eth0      Link encap:Ethernet  HWaddr b8:27:eb:ca:c2:da 
              inet addr:192.168.2.7  Bcast:192.168.2.255  Mask:255.255.255.0
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
              RX packets:151 errors:0 dropped:0 overruns:0 frame:0
              TX packets:84 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:1000 
              RX bytes:19899 (19.4 KiB)  TX bytes:10646 (10.3 KiB)

     lo       Link encap:Local Loopback 
              inet addr:127.0.0.1  Mask:255.0.0.0
              UP LOOPBACK RUNNING  MTU:16436  Metric:1
              RX packets:8 errors:0 dropped:0 overruns:0 frame:0
              TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:0 
              RX bytes:1104 (1.0 KiB)  TX bytes:1104 (1.0 KiB)

For compiling the openFrameworks Core and an oF App we use `gcc` and GNU `make`.  GCC or the GNU Compiler Collection was originally written by [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman) the founder of the Free Software Foundation, GNU, Emacs, and a few other things.  GCC was around before Linux because you can't build the [Linux Kernel](http://en.wikipedia.org/wiki/Linux_kernel) without GCC and GNU make.  For more information on make please read the GNU make [manual](http://www.gnu.org/software/make/manual/make.html) or this [fine tutorial](http://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html). 

For more information on bash and [bash scripting](http://linuxconfig.org/Bash_scripting_Tutorial) please read this [bash tutorial](http://tldp.org/LDP/abs/html/) and [this wonderful pdf bash cheat sheet](http://dl.dropbox.com/u/397277/bash_shell_cheat_sheetV2.pdf) make a great reference. 

## Picking a Text Editor 
While some hardcore nerds and hackers like to [pick fights](http://en.wikipedia.org/wiki/Editor_war) over text editors, there is no right answer as to which one is the best. You have many to choose from but here are 3 that work very well.  [`nano`](http://en.wikipedia.org/wiki/GNU_nano) is a very simple text editor.  All of your commands are base of a [`control+Key`](http://mintaka.sdsu.edu/reu/nano.html) style, so if `control` is the [right place](http://emacswiki.org/emacs/MovingTheCtrlKey) it is very easy to use.  If you are first starting out I would suggest using `nano`.  [`emacs`](http://www.gnu.org/software/emacs/) is a very powerful text editor that [verges on being a complete IDE or OS](http://en.wikipedia.org/wiki/Emacs#Features).  We could spend weeks talking about Emacs but here is a [nice tutorial](http://www2.lib.uchicago.edu/keith/tcl-course/emacs-tutorial.html) to get started.   You might need to run `sudo apt-get install emacs` if your linux image doesn't include it by default.  Lastly, [`vim`](http://www.vim.org/) is the go to text editor for hardcore linux users.  But you can be hardcore too if you want to learn this [complicated beast](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html) via this [interactive tutorial](http://www.openvim.com/tutorial.html) or this [fun game](http://vim-adventures.com/). You will need to run `sudo apt-get install vim` to install it and `vi testpApp.cpp` to for example edit the ofApp.cpp file of a project.


## What is a RaspberryPi

The Raspberry Pi is a cheap (~$35) multimedia computer that is capable of running Linux (and other operating systems).

The primary development platform used for development is the Raspbian Wheezy Linux distro. It is currently optimized to use the hardware floating point processor and is significantly faster (from an openFrameworks perspective) than the Soft Float debian Wheezy image.

The Raspbian image provides `apt-get` style package management which is familar to Ubuntu and Debian users, and useful for developing with openFrameworks.

Initial ArchLinux support is in progress.  It will closely mirror the existing desktop ArchLinux support.

Currently building apps with the `develop-raspberrypi` branch of this fork is very similar to the normal Linux build strategy for openFrameworks.

The main differences include:
- An new makefile system.  This allows us to more easily configure the oF build environment to reflect the idiosyncrasies of the RPI hardware AND it allows us to quicky and easily exclude certain core oF features, files, headers, etc that won't work (without significant modifications) on the RPI.  The makefiles are heavily commented.
- A custom EGL-specific windowing and event handling system (via the `ofAppEGLWindow`).  Options for both Native and X11 windowing and input event management are available.

'''}

