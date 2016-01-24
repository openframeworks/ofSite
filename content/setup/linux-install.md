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
