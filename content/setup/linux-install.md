## -*- coding: utf-8 -*-
.. title: linux install

Linux install
==========

The current stable release is [0.12.1](https://github.com/openframeworks/openFrameworks/releases/tag/0.12.1). Nightly packages, whose filenames change with the build date, are on the [nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly).

Download the 64-bit package:

[of_v0.12.1_linux64_gcc6_release.tar.gz](https://github.com/openframeworks/openFrameworks/releases/download/0.12.1/of_v0.12.1_linux64_gcc6_release.tar.gz)

The `gcc6` in that filename is historical. The package is the x86_64 build. Raspberry Pi and other ARM boards use the packages on the [Raspberry Pi guide](../raspberrypi/raspberry-pi-getting-started/).

## Distributions

Run the install script that matches the distribution. Each script lives in `scripts/linux/<name>/install_dependencies.sh`.

| Distribution | Script directory | Notes |
| --- | --- | --- |
| Ubuntu 22.04 and 24.04, and Ubuntu derivatives the script recognizes (Linux Mint, elementary OS) | `scripts/linux/ubuntu` | Tested in CI on Ubuntu 24.04. |
| Debian 12 (bookworm) | `scripts/linux/debian` | |
| Debian 13 (trixie) and Raspberry Pi OS Trixie | `scripts/linux/debian` | See the package note below. |
| Arch Linux | `scripts/linux/archlinux` | Uses `pacman`. |
| Fedora | `scripts/linux/fedora` | Uses `dnf`. |

Ubuntu 22.04 can stop on a held `libunwind` package when `libunwind-14` is already installed. Remove that package, then run the script again: `sudo apt-get remove libunwind-14`. This shows up on some CI images ([#8543](https://github.com/openframeworks/openFrameworks/issues/8543)). A normal desktop install usually does not have that package.

Debian 13 removed `libgconf-2-4`. The install script still lists it, so apt stops ([#8480](https://github.com/openframeworks/openFrameworks/issues/8480)). Delete `libgconf-2-4` from the `apt-get install` line in `scripts/linux/debian/install_dependencies.sh` and run the script again. Current openFrameworks does not need that library. On a checkout from before 30 October 2026, the same script may also ask for `xorgproto`. That package name is the source package. The installable name is `x11proto-dev` ([#8630](https://github.com/openframeworks/openFrameworks/pull/8630)).

Do not rewrite `/etc/lsb-release` to look like an older Ubuntu. The Ubuntu script reads `/etc/os-release`. If it does not recognize a derivative, run the Debian or Ubuntu script that matches the base system.

## Dependencies and codecs

From the openFrameworks directory, for Ubuntu:

```sh
cd scripts/linux/ubuntu
sudo ./install_dependencies.sh
```

Swap `ubuntu` for `debian`, `archlinux`, or `fedora` on those systems.

Optional patent-encumbered codecs, including mp3, are a separate script in the same directory:

```sh
sudo ./install_codecs.sh
```

## Compile openFrameworks

```sh
cd scripts/linux
./compileOF.sh -j3
```

`-j3` is the number of compile jobs. Use the number of cores, or fewer.

The project generator:

```sh
./compilePG.sh
```

That builds the GUI in the openFrameworks directory and can install the `projectGenerator` command. Run `projectGenerator` with no arguments to see its options.

## Run an example

```sh
cd examples/graphics/polygonExample
make
make run
```

## Editor

[VS Code](../vscode/) is the makefile editor for Linux. Open the `.code-workspace` file in an example. [Qt Creator](../qtcreator/) is no longer a maintained setup path.
