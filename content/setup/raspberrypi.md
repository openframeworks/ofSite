## -*- coding: utf-8 -*-
.. title: raspberry pi

Raspberry Pi
============

## What is the Raspberry Pi?

The [Raspberry Pi](http://www.raspberrypi.org/) is a small, inexpensive ARM-based computer that is often used with Linux. Compared to a modern Desktop computer the Raspberry Pi is limited in RAM and CPU power. However, its chipset supports modern technologies such as OpenGL ES2 and hardware accelerated audio/video processing. These capabilities make the Raspberry Pi an exceptional platform for multimedia applications.


## openFrameworks on the Raspberry Pi
Similar to the desktop-based platforms, openFrameworks provides a common interface to create applications that incorporate real-time graphics, shaders, audio/video processing and networking. openFrameworks addons (commonly referred to as ofxAddons) provide a common pathway to many popular technologies like OpenCv, OSC.

openFrameworks 0.10.0 supports the Raspberry Pi via the recommended Linux distribution Raspbian "Stretch". Wheezy and Jessie can be used with older versions of openFrameworks (0.8.4 recommended, 0.9.8 also works but may have a version mismatch with the Poco library). [See here for the older versions of this guide that talk about Wheezy](raspberry-pi-wheezy-index/)

On the Raspberry 2 & 3 although it's architecture is arm7 (and arm8 for the 3B+) Raspbian only supports arm6 by now so be sure to download that version as is explained in the [getting started guide](raspberry-pi-getting-started/). If you want to use arm7 binaries with the Raspberry Pi 2 or 3 you can try other distributions like archlinux or ubuntu core and the arm7 download of OF but this is still not very well tested so some changes might be required to the original install scripts.

## Getting Started

* [Raspberry Pi Workflow Overview](raspberry-pi-workflow-overview/)
* [Raspberry Pi Getting Started](raspberry-pi-getting-started/)
* [Raspberry Pi 2 B Getting Started with ArchLinux](raspberry-pi-getting-started-archlinux/)
* [Raspberry Pi Troubleshooting](raspberry-pi-troubleshooting/)

## Advanced

* [Raspberry Pi Cross-compiling Guide](raspberry-pi-cross-compiling-guide/)

## Community
* [openFrameworks arm forum](http://forum.openframeworks.cc/c/arm)


### openFrameworks + Raspberry Pi = <3
