## -*- coding: utf-8 -*-
.. title: raspberry pi

Raspberry Pi
============

## What is the Raspberry Pi?

The [Raspberry Pi](http://www.raspberrypi.org/) is a small, inexpensive ARM-based computer that is often used with Linux. Compared to a modern Desktop computer the Raspberry Pi is limited in RAM and CPU power. However, its chipset supports modern technologies such as OpenGL ES2 and hardware accelerated audio/video processing. These capabilities make the Raspberry Pi an exceptional platform for multimedia applications.


## openFrameworks on the Raspberry Pi
Similar to the desktop-based platforms, openFrameworks provides a common interface to create applications that incorporate real-time graphics, shaders, audio/video processing and networking. openFrameworks addons (commonly referred to as ofxAddons) provide a common pathway to many popular technologies like OpenCv, OSC.

openFrameworks supports the Raspberry Pi on Raspberry Pi OS, 64-bit or 32-bit. From 0.12.2 there are three Raspberry Pi downloads, all built with GCC 10:

* `linux_aarch64_rpi_gcc10`: 64-bit Raspberry Pi OS (Pi 3, 4, 5 and Zero 2)
* `linux_armv7l_rpi_gcc10`: 32-bit Raspberry Pi OS on Pi 2 and newer
* `linux_armv6l_rpi_gcc10`: 32-bit Raspberry Pi OS on Pi 1 and Zero

Apps open windows on both the Wayland desktop (the default since Raspberry Pi OS Bookworm) and X11. See the [getting started guide](raspberry-pi-getting-started/) for which download to use.

Older releases: openFrameworks 0.11.0 supported Raspbian "Buster" and "Stretch" with the armv6 download; Wheezy and Jessie can be used with older versions of openFrameworks (0.8.4 recommended, 0.9.8 also works but may have a version mismatch with the Poco library). [See here for the older versions of this guide that talk about Wheezy](raspberry-pi-wheezy-index/)

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
