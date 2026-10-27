## -*- coding: utf-8 -*-
.. title: linux install

Linux install
==========

Before you can use OF in Linux you'll need to run a couple of scripts to install some dependencies and compile both the OF library itself and the project generator.

Which download
--------------

| Download | For |
|---|---|
| `linux_64_gcc10` | 64-bit Intel / AMD computers |
| `linux_arm64_gcc10` | 64-bit ARM computers and servers running a desktop distribution (Ubuntu, Debian, Fedora...) |

For a Raspberry Pi, use the Raspberry Pi downloads instead, see the [Raspberry Pi guide](../raspberrypi/).

_openFrameworks 0.12.1 and earlier came as `linux64_gcc6` (64-bit Intel / AMD only)._

If you use openFrameworks from git, run `scripts/linux/download_libs.sh`: it detects your computer's architecture (x86_64, ARM64 or Raspberry Pi) and downloads the matching libraries into `libs/*/lib/linux/<arch>`.

Install the dependencies
------------------------

Execute the `install_dependencies.sh` script for your distribution, located in `scripts/linux/distro_name/install_dependencies.sh`. There are scripts for Ubuntu (and derivatives), Debian, Fedora and Arch Linux.

For example if you are using Ubuntu, open a new console and enter:

```sh
cd OF/scripts/linux/ubuntu
sudo ./install_dependencies.sh
```

Next, if you want to use some formats like mp3, you'll need to run the install_codecs script: it's in the same folder and is run the same way as the install_dependencies one. We separate them because mp3 and some other formats installed by the script might be protected by patents in some countries and could be problematic to use in commercial work. Also, this might help those Linux users that don't want to use proprietary codecs.

Compile openFrameworks
----------------------

The OF source code comes uncompiled so the first time you compile an example it would need to compile it to, if you go and compile any example it would compile OF as a dependency but to make that easier and catch any potential problems let's do that as a separate step:

```sh
cd OF/scripts/linux
./compileOF.sh -j3
```

`-j3` tells the script to use 3 CPUs to compile. You can specify as many as you want but it's recommended to use the number of cores in your computer or less.

With this you can already go into any of the examples folders and compile the examples using make:

```sh
cd OF/examples/graphics/polygonExample
make
make run
```

Apps run in both X11 and Wayland desktop sessions.

You can also use [vs code](../vscode/) or [qtcreator](../qtcreator/). Eclipse is no longer officially supported.

The project generator
---------------------

If you want to install the project generator, a tool that allows to create and update an OF project, you'll need to run one last script:

```sh
cd OF/scripts/linux
./compilePG.sh
```

This will compile the GUI version of the project generator which will be placed in the root of the OF folder. When it's done compiling it will ask you if you also want to install the optional command line version of the tool which allows you to create projects from anywhere on your system.
If you installed the command line tool and want to change the OF path it uses, you can change the value of PG_OF_PATH in ~/.profile.

Run the commandline project generator without any arguments to see how to use it:
```sh
projectGenerator
```

---

## Ubuntu derivatives

The Ubuntu script reads the Ubuntu version from `/etc/os-release` (`lsb_release` isn't needed). It recognises **elementary OS** and **Linux Mint** and uses the Ubuntu version they are based on. Derivatives whose `VERSION_ID` is the Ubuntu version they are based on, like **Pop!_OS**, work as well.

For another derivative, if the script says it couldn't detect the Ubuntu version or picks the wrong packages, check which Ubuntu version your distribution is based on (on its website, or `UBUNTU_CODENAME` in `/etc/os-release`) and please [open an issue](https://github.com/openframeworks/openFrameworks/issues) so it can be added.

---

## Linking prebuilt libraries: "recompile with -fPIE"

Current distributions (Ubuntu, Debian, Fedora, Raspberry Pi OS...) build executables as PIE (position independent executables) by default. A static library (`.a`) that wasn't compiled as position independent code can't be linked into one, and the link fails with an error like this:

```
/usr/bin/ld: libfoo.a(foo.o): relocation R_X86_64_32S against symbol `bar' can not be used when making a PIE object; recompile with -fPIE
/usr/bin/ld: failed to set dynamic section sizes: bad value
collect2: error: ld returned 1 exit status
```

This usually comes from a precompiled library in an addon, built before PIE was the default. **The fix is to rebuild the library with `-fPIC`** (with CMake: `-DCMAKE_POSITION_INDEPENDENT_CODE=ON`), and to report it to the addon so the fixed library helps everyone. If you can't rebuild it, you can link your app without PIE by adding `PROJECT_LDFLAGS = -no-pie` to your project's `config.make`.

See [docs/linux.md](https://github.com/openframeworks/openFrameworks/blob/master/docs/linux.md) for how to check a library and more details.
