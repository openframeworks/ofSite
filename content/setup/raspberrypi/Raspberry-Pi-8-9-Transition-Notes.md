## -*- coding: utf-8 -*-
.. title: raspberry pi

Raspberry Pi Transition Notes
============

## Jessie Requirements

openFrameworks 0.9.0 uses C++11 features that require GCC 4.9 in order to compile. Raspbian Wheezy only supports GCC 4.8.

## Arm7 now default variant
openFrameworks uses a variant system that allows developers to more easily port to new platforms. The Raspberry Pi 1 uses an armv6 architecture and although the RPI2 uses armv7 unless you are using archlinux or another distribution that is compiled for arm7 support we recommend to use the armv6 version of openFrameworks with raspbian since it's compiled for that architecture and mixing binaries for different architectures has shown some problems in the past.

## Cross-compiling
With Wheezy and openFrameworks 0.84 you were able to use the cross-compiling tools provided by the [RPI Foundation](https://github.com/raspberrypi/tools). However these tools currently use GCC 4.8 which is not compatible with C++11. 


'''}
