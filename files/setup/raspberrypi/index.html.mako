## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi
============

## What is the Raspberry Pi?

The [Raspberry Pi](http://www.raspberrypi.org/) is a small, inexpensive ARM-based computer that is often used with Linux. Compared to a modern Desktop computer the Raspberry Pi is limited in RAM and CPU power. However, its chipset supports modern technologies such as OpenGL ES2 and hardware accelerated audio/video processing. These capabilities make the Raspberry Pi an exceptional platform for multimedia applications.


## openFrameworks on the Raspberry Pi
Similiar to the desktop-based platforms, openFrameworks provides a common interface to create applications that incorporate real-time graphics, shaders, audio/video processing and networking. openFrameworks addons (commonly referred to as ofxAddons) provide a common pathway to many popular technologies like OpenCv, OSC.

openFrameworks 0.9.0 supports the Raspberry Pi via the recommended Linux distribution Raspbian "Jessie" (hard float). Wheezy can be used with older versions of openFrameworks (0.84 recommended). [See here for the older versions of this guide that talk about Wheezy](Raspberry-Pi-Wheezy-index.html)

On the Raspberry 2 although it's architecture is arm7 raspbian only supports arm6 by now so be sure to download that version as is explained in the [getting started guide](Raspberry-Pi-Getting-Started.html). If you want to use arm7 binaries with the raspberry PI 2 you can try other distributions like archlinux or ubuntu core and the arm7 download of OF but this is still not very well tested so some changes might be required to the original install scripts.

If you are an existing openFrameworks/RPi user you may wish to read [what's different in 0.9.0](Raspberry-Pi-8-9-Transition-Notes.html) 

## Getting Started

* [Raspberry Pi Workflow Overview](Raspberry-Pi-Workflow-Overview.html)
* [Raspberry Pi Getting Started](Raspberry-Pi-Getting-Started.html)
* [Raspberry Pi Troubleshooting](Raspberry-Pi-Troubleshooting.html)

## Advanced

* [Raspberry Pi Cross-compiling Guide](Raspberry-Pi-Cross-compiling-guide.html)

## Community
* [openFrameworks arm forum](http://forum.openframeworks.cc/c/arm)


### openFrameworks + Raspberry Pi = <3

'''}
