## -*- coding: utf-8 -*-
.. title: raspberry pi

Raspberry Pi
============

## What is the Raspberry Pi?

The [Raspberry Pi](http://www.raspberrypi.org/) is a small, inexpensive ARM-based computer that is often used with Linux. Compared to a modern Desktop computer the Raspberry Pi is limited in RAM and CPU power. However, its chipset supports modern technologies such as OpenGL ES2 and hardware accelerated audio/video processing. These capabilities make the Raspberry Pi an exceptional platform for multimedia applications.


## openFrameworks on the Raspberry Pi
Similar to the desktop-based platforms, openFrameworks provides a common interface to create applications that incorporate real-time graphics, shaders, audio/video processing and networking. openFrameworks addons (commonly referred to as ofxAddons) provide a common pathway to many popular technologies like OpenCv, OSC.

openFrameworks 0.12.1 supports the current Raspberry Pi OS, which is Debian 13 (trixie). Use the 64-bit image and the `linuxaarch64` package on Pi 3, Pi 4, Pi 5, and Pi Zero 2 W. Use the 32-bit image and the `linuxarmv6l` package on Pi 1 and Pi Zero. The [getting started guide](raspberry-pi-getting-started/) has the release links. Wheezy and Jessie stay on the [older guide](raspberry-pi-wheezy-index/).

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

## Nightly / 0.12.2 downloads

The [Linux Raspberry Pi section](/download/#raspberry-pi) groups the three Raspberry Pi OS packages:

| Raspberry Pi OS | Package | Typical hardware |
| --- | --- | --- |
| 64-bit | `linux_aarch64_rpi_gcc10` | Pi 3, 4, 5 and Zero 2 W with a 64-bit OS |
| 32-bit ARMv7 | `linux_armv7l_rpi_gcc10` | Pi 2 and later with a compatible 32-bit OS |
| 32-bit ARMv6 | `linux_armv6l_rpi_gcc10` | Pi 1 and original Pi Zero |

Choose by the installed OS and compiler target, not just the processor's capabilities. The generic `linux_arm64_gcc10` package is a separate desktop ARM64 build.

Current Raspberry Pi OS uses Wayland by default; the older Bullseye `raspi-config` GL-driver instructions do not apply to current images. For current source, run the distribution dependency script and `scripts/linux/download_libs.sh` for the matching libraries.

## Project Generator and CMake

On 64-bit Pi systems, the current ARM64 Project Generator GUI includes a native CLI. For 32-bit targets without a GUI package, build the CLI with `scripts/linux/compilePG.sh`.

Generate a project with the matching Linux platform and **cmake** template, then build natively on the Pi:

```sh
cmake -S . -B build-cmake -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake --parallel 2
```

Install CMake, Ninja and the Pi's system dependencies first. See the [CMake guide](/setup/cmake/#linux-and-raspberry-pi) for native architecture detection and cross-compilation requirements.
