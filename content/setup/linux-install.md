## -*- coding: utf-8 -*-
.. title: linux install

Linux install
==========

Before you can use OF in Linux you'll need to run a couple of scripts to install some dependencies and compile both the OF library itself and the project generator.

First of all you'll need to execute the install_dependencies.sh script for your distribution which is located in `scripts/linux/distro_name/install_dependencies.sh`

For example if you are using Ubuntu, open a new console and enter:

```sh
cd OF/scripts/linux/ubuntu
sudo ./install_dependencies.sh
```

Next, if you want to use some formats like mp3, you'll need to run the install_codecs script: it's in the same folder and is run the same way as the install_dependencies one. We separate them because mp3 and some other formats installed by the script might be protected by patents in some countries and could be problematic to use in commercial work. Also, this might help those Linux users that don't want to use proprietary codecs.

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
make Run
```

Or use any of the officially supported IDEs: [qtcreator](../qtcreator/) or [eclipse](../eclipse/) both IDEs have plugins that allow to create new projects, import existing ones, add addons to them.

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

## Install on Thid-Party Linux Distribution

if your linux is thrid-party distribution, maybe you can see some error while install openFrameworks. this is because installing scripts are using information of kernel and version number that you can check with `lsb_release -a` command on your machine. in this situation, you can install openFrameworks by modifying this information temporarily.

for example, **Elementary OS 0.3 freya** is based on **Ubuntu 14.04 LTS**. you can check your linux distro information on official distro websites.

### 1. get your distribution information
for revert to back after install oF successfully, you need to copy or make a backup as a file (.bak) of this information.

```sh
$ cat /etc/lsb-release
DISTRIB_ID="elementary OS"
DISTRIB_RELEASE=0.3.2
DISTRIB_CODENAME=freya
DISTRIB_DESCRIPTION="elementar
```

### 2. get based disribution information
run this command on based ditribution machine.
this example is **Ubuntu 14.04 LTS**:

```sh
$ cat /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=14.04
DISTRIB_CODENAME=trusty
DISTRIB_DESCRIPTION="Ubuntu 14.04.3 LTS"
```

### 3. modifying kernel information on linux machine will install openFrameworks 
modifying `/etc/lsb-release` with information from *step 2*.

```sh
$ sudo vi /etc/lsb-release
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=14.04
DISTRIB_CODENAME=trusty
DISTRIB_DESCRIPTION="Ubuntu 14.04.3 LTS"
```

### 4. install openFrameworks.
install dependencies, codecs and compile openFrameworks and projectGenerator

```sh
$ ls {OF_DIRECTORY}/scripts/linux/ubuntu
$ sudo ./install_dependencies.sh
$ sudo ./install_codecs.sh
$ ls {OF_DIRECTORY}/scripts/linux
$ sudo ./compileOF.sh 
$ sudo ./compilePG.sh 
```
### 5. revert to original 
**don't forget this step!**

```sh
$ sudo cp /etc/lsb-release.bak /etc/lsb-release
```