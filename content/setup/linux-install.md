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
| Ubuntu 22.04 and 24.04, and Ubuntu derivatives the script recognizes (Linux Mint, elementary OS) | `scripts/linux/ubuntu` | Use the Ubuntu script for these distributions. |
| Debian 12 (bookworm) | `scripts/linux/debian` | |
| Debian 13 (trixie) and Raspberry Pi OS Trixie | `scripts/linux/debian` | See the package note below. |
| Arch Linux | `scripts/linux/archlinux` | Uses `pacman`. |
| Fedora | `scripts/linux/fedora` | Uses `dnf`. |

Ubuntu 22.04 can stop on a held `libunwind` package when `libunwind-14` is already installed. Remove that package, then run the script again: `sudo apt-get remove libunwind-14`. This shows up on some CI images ([#8543](https://github.com/openframeworks/openFrameworks/issues/8543)). A normal desktop install usually does not have that package.

Debian 13 removed `libgconf-2-4`. The script in the 0.12.1 package still lists it, so apt stops ([#8480](https://github.com/openframeworks/openFrameworks/issues/8480)). Delete `libgconf-2-4` from the `apt-get install` line in `scripts/linux/debian/install_dependencies.sh` and run the script again. Current master has removed that dependency; on 0.12.1, remove the entry locally. Some older nightly scripts also ask for `xorgproto`, which is the source package name. Replace it with the installable package `x11proto-dev` ([#8630](https://github.com/openframeworks/openFrameworks/pull/8630)).

Do not rewrite `/etc/lsb-release` to look like an older Ubuntu. The Ubuntu script reads `/etc/os-release`. If it does not recognize a derivative, run the Debian or Ubuntu script that matches the base system.

## Dependencies and codecs

From the openFrameworks directory, for Ubuntu:

```sh
cd /path/to/openFrameworks/scripts/linux/ubuntu
sudo ./install_dependencies.sh
```

Swap `ubuntu` for `debian`, `archlinux`, or `fedora` on those systems.

Optional patent-encumbered codecs, including mp3, are a separate script in the same directory:

```sh
sudo ./install_codecs.sh
```

## Compile openFrameworks

```sh
cd /path/to/openFrameworks
./scripts/linux/compileOF.sh -j3
```

`-j3` is the number of compile jobs. Use the number of cores, or fewer.

## Project Generator

From the openFrameworks root, build the 0.12.1 command-line generator:

```sh
./scripts/linux/compilePG.sh
```

This builds `apps/projectGenerator/commandLine/bin/projectGenerator` and offers to install it as `projectGenerator` in `/usr/local/bin`. It does not build the Electron GUI. You can decline the install and run the binary from its build folder instead.

After installing the command, create a project from the openFrameworks root:

```sh
projectGenerator --help
projectGenerator -o"$PWD" -plinux64 apps/myApps/mySketch
```

The same command updates an existing project at that path. Use `-plinuxaarch64` for the 0.12.1 ARM64 package. See [Create a new project](/learning/01_basics/create_a_new_project/) for addons, other platforms, and the GUI workflow.

## Run an example

```sh
cd examples/graphics/polygonExample
make
make run
```

## Editor

[VS Code](../vscode/) is the makefile editor for Linux. Open the `.code-workspace` file in an example. [Qt Creator](../qtcreator/) is no longer a maintained setup path.

## Nightly / 0.12.2 downloads

For the current development version, use the [nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly). Desktop packages are named `linux_64_gcc10` (Intel/AMD x64) and `linux_arm64_gcc10` (desktop ARM64). Raspberry Pi OS uses the separate [Raspberry Pi packages](/setup/raspberrypi/).

From a source checkout, `scripts/linux/download_libs.sh` downloads libraries for the detected target. Current source has removed the obsolete GConf dependency described above for 0.12.1.

Current packages provide a Project Generator GUI as well as its bundled CLI. If you need to install or refresh it, run `./scripts/linux/download_projectGenerator.sh` from the openFrameworks root. On x64, Ubuntu 22.04/Jammy derivatives use the Ubuntu 22 GUI build; ARM64 uses the native ARM64 package. The standalone CLI is `projectGenerator/projectGeneratorCmd`. `compilePG.sh` remains the source-build option for the CLI, including 32-bit Raspberry Pi targets without a prebuilt GUI.

## CMake (nightly / 0.12.2)

Generate a project using PG's **cmake** template, then from that project folder run:

```sh
cmake -S . -B build-cmake -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake --parallel
```

Install Ninja and the distribution dependencies first. See the [CMake guide](/setup/cmake/#linux-and-raspberry-pi) for project setup, addon handling and platform selection.

## Linking non-PIC addon libraries

If linking an addon fails with `relocation ... can not be used when making a PIE object; recompile with -fPIE`, rebuild its static libraries with `-fPIC` (CMake: `-DCMAKE_POSITION_INDEPENDENT_CODE=ON`). A temporary workaround is `PROJECT_LDFLAGS = -no-pie` in `config.make`. See the [Linux library notes](https://github.com/openframeworks/openFrameworks/blob/master/docs/linux.md).
