## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi Transition Notes
============

## Jessie Requirements

openFrameworks 0.9.0 uses C++11 features that require GCC 4.9 in order to compile. Raspbian Wheezy only supports GCC 4.8.

## Arm7 now default variant
openFrameworks uses a variant system that allows developers to more easily port to new platforms. The Raspberry Pi 1 uses an armv6 architecture and the RPI2 uses armv7. Since the RPI2 is very popular, openFrameworks assumes that if you are on an arm7 architecture you are using an RPI2. 

## Cross-compiling
With Wheezy and openFrameworks 0.84 you were able to use the cross-compiling tools provided by the [RPI Foundation](https://github.com/raspberrypi/tools). However these tools currently use GCC 4.8 which is not compatible with C++11. 


'''}
