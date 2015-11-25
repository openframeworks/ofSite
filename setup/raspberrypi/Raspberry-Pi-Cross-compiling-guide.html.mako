## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Cross-compiling for the Raspberry Pi
============

## Introduction

Creating a cross-compiler is a fairly advanced process but can be useful for heavy use. This guide will give some details on how to create a cross-compiler for use with openFrameworks 0.9.0. For older releases (OF 0.8.4/Wheezy) see [Raspberry Pi Cross-compiling Guide for Wheezy](Raspberry-Pi-Cross-compiling-guide-Wheezy.html)

## Do you need it?
The RPI2/arm7 is much faster and can natively compile openFrameworks in about 15 minutes by utilizing all 4 cores (`make -j4`). Applications are typically much faster depending on complexity, use of ofxAddons, etc.

Compiling openFrameworks on the RPI1/arm6 is much slower and can take over an hour. Applications can be much faster however still slow. 

A typical cross-compiler on a modern Desktop PC will compile the OF core library in about 3 minutes.

## Cross-compiling process

To use a cross-compiler you will need to setup a few things:

<h3>Toolchain</h3>
This is basically a custom version of GCC that understands your target platform. In order to cross-compile openFrameworks the compiler must support GCC 4.9. Previous versions of GCC do not support the level of C++11 features that openFrameworks requires. Unfortunately that means the [previous cross-compiling tools](https://github.com/raspberrypi/tools) are out-of-date, requiring you to build GCC yourself.

<h3>Target Root File System</h3>
This is a copy of the RPI's file system that the compiler will use to build openFrameworks and applications. It is a copy because you will need to manipulate certain files that if changed directly would cause the RPI to stop working.

## Makefile variables
The openFrameworks Makefile system has some built-in variables that allow for easier cross-compiling.

<h3>TOOLCHAIN_ROOT</h3>
`TOOLCHAIN_ROOT` is a path to the directory that contains your Toolchain. If you don't pass this in OF will guess a default value of `/opt/cross/bin`

<h3>GCC_PREFIX</h3>
A toolchain is often set up with multiple architectures in order to cross-compile a project for multiple platforms. `GCC_PREFIX` is used to differentiate between these platforms.

For example, to compile for an RPI/Arch Linux target the prefix is often `armv6l-unknown-linux-gnueabihf`. For Raspbian it is commonly `arm-linux-gnueabihf`

If `GCC_PREFIX` is not passed in `arm-linux-gnueabihf` is assumed. The prefix is then added to `-g++`, `-gcc`, `-ar` and `-ld` to complete the paths to the compiler and linkers.


<h3>RPI_ROOT</h3>
`RPI_ROOT` is the Target Root File System previously described. This is required to be passed in and there is no default value.

These variables are either passed in with the make command:

`make TOOLCHAIN_ROOT=/path/to/toolchain GCC_PREFIX=arm-linux-gnueabihf RPI_ROOT=/path/to/local_copy_of_pi_filesystem`

or set via environmental variables

`export TOOLCHAIN_ROOT=/path/to/toolchain`

`export GCC_PREFIX=arm-linux-gnueabihf`

`export RPI_ROOT=/path/to/local_copy_of_pi_filesystem`


Using export allows you just use the shorter `make` command throughout a session. You can make these variables permanent by adding the export lines to the end of `~/.profile`.

## Cross compiling guides for 0.9.0
[Mac based, uses Debian VM](http://forum.openframeworks.cc/t/cross-compiler-for-of-0-9-0-jessie-arm6-rpi1)




'''}
