## -*- coding: utf-8 -*-
.. title: raspberry pi

Getting your Raspberry Pi ready for openFrameworks
============

## Install Raspberry Pi OS

Use [Raspberry Pi Imager](https://www.raspberrypi.com/software/) and write **Raspberry Pi OS (64-bit)**. Choose the Debian 13 (trixie) image for a new install. The download page is [Raspberry Pi OS](https://www.raspberrypi.com/software/operating-systems/).

| Board | OS | openFrameworks package |
| --- | --- | --- |
| Pi 3, Pi 4, Pi 5, Pi Zero 2 W | Raspberry Pi OS 64-bit (trixie) | `linuxaarch64` |
| Pi 1, Pi Zero, Pi Zero W | Raspberry Pi OS 32-bit | `linuxarmv6l` |
| Other 64-bit ARM boards (not a Pi) | Debian or Ubuntu arm64 | nightly `linux_arm64`, or 0.12.1 `linuxaarch64` |

Raspberry Pi OS Bookworm is under Legacy in the Imager. Prefer Trixie for a new card.

In the Imager, set the username, Wi-Fi, and SSH before you write the card. The username no longer has to be `pi`. The paths below use `$HOME`.

## Download openFrameworks

Stable release [0.12.1](https://github.com/openframeworks/openFrameworks/releases/tag/0.12.1):

- 64-bit: [of_v0.12.1_linuxaarch64_release.tar.gz](https://github.com/openframeworks/openFrameworks/releases/download/0.12.1/of_v0.12.1_linuxaarch64_release.tar.gz)
- 32-bit: [of_v0.12.1_linuxarmv6l_release.tar.gz](https://github.com/openframeworks/openFrameworks/releases/download/0.12.1/of_v0.12.1_linuxarmv6l_release.tar.gz)

Nightly builds are at [the nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly). The asset names include the date, for example `of_v20261102_linux_aarch64_rpi_gcc10_release.tar.gz` and `of_v20261102_linux_armv6l_rpi_gcc10_release.tar.gz`. There is also `linux_arm64` for arm64 boards that are not a Raspberry Pi, and `linux_armv7l_rpi` on nightly. 0.12.1 does not ship a separate armv7 package.

Unpack the archive in your home directory and rename the folder to `openFrameworks` if you want the paths below to match.

## Configure the Pi

Current Raspberry Pi OS uses the kernel KMS driver. You do not set a memory split, and you do not select the legacy GL driver. Those steps were for Wheezy, Jessie, and the early Bullseye images.

The desktop session is Wayland. openFrameworks opens its window through XWayland. If a built app cannot open a window, install the X11 server:

```sh
sudo apt-get install xorg
```

Update packages after the first boot:

```sh
sudo apt-get update
sudo apt-get full-upgrade
```

## Install packages and compile

Raspberry Pi OS uses the Debian script.

```sh
cd $HOME/openFrameworks/scripts/linux/debian
sudo ./install_dependencies.sh
```

Debian 13 and Raspberry Pi OS Trixie removed `libgconf-2-4`. The script in the 0.12.1 package asks apt for it, so the install stops ([#8480](https://github.com/openframeworks/openFrameworks/issues/8480)). Delete `libgconf-2-4` from the `apt-get install` line in that script and run it again. Current master has removed that dependency; the workaround is for older copies of the script. If your copy also names `xorgproto`, replace that entry with `x11proto-dev`.

Compile openFrameworks. On a Pi 4 or older, a high job count can run out of memory, so start with two jobs:

```sh
cd $HOME/openFrameworks/scripts/linux
./compileOF.sh -j2
```

## Compile an example

```sh
cd $HOME/openFrameworks/examples/graphics/polygonExample
make
make run
```

## Generate a project

The 0.12.1 Project Generator can create the makefiles and VS Code workspace for you. Build its command-line tool and accept the optional command install:

```sh
cd "$HOME/openFrameworks"
./scripts/linux/compilePG.sh
projectGenerator -o"$PWD" -plinuxaarch64 apps/myApps/myRpiApp
cd apps/myApps/myRpiApp
make
make run
```

Use `-plinuxarmv6l` on a Pi 1 or Pi Zero with the 32-bit package. `compilePG.sh` builds the command-line generator, not the Electron GUI. See [Create a new project](/learning/01_basics/create_a_new_project/) for updating projects and selecting addons.

[VS Code](../../vscode/) can open the `.code-workspace` file in that folder. The platform install is the same makefile flow as [Linux](../../linux-install/).

## Run without the desktop

A Pi 4 or 5 app can start an X server without the desktop session:

```sh
sudo apt-get install xorg
startx ./polygonExample -- -s off
```

For a headless GL run, use a virtual framebuffer:

```sh
sudo apt-get install xvfb
xvfb-run ./polygonExample
```

## Other boards

A 64-bit ARM board running Debian uses `scripts/linux/debian`. One running Ubuntu uses `scripts/linux/ubuntu`. Pick the arm64 package from the table above. The same `libgconf-2-4` note applies to Debian 13.
