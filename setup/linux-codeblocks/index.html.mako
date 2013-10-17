## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

linux codeblocks &#038; makefiles
================================



codeblocks
----------

Codeblocks is a fairly nice IDE for writing code on Linux, and we are happy to support it. Here are some setup instructions for Ubuntu, Debian and Fedora. If you use other distributions please let us know if there are additional steps:

- in the scripts/linux folder inside the openFrameworks package you will find a directory with the name of your distribution. There are 2 scripts, install_codeblocks.sh and install_dependencies.sh. Don&#8217;t execute them from the desktop, as they need root privileges to run, you will need to run them from a terminal. The order of execution doesn&#8217;t matter and you can execute them more than once without problem if something goes wrong. If you update your openFrameworks version or are having problems with codeblocks, execute both scripts. Once you finish these steps, you will find codeblocks under Applications &gt; Development and will be able to open the openFrameworks examples in the apps folder just by double clicking on the .cbp file

__Ubuntu:__ 

- open a terminal from Applications &gt; Accessories &gt; Terminal

- in the terminal go to the directory where your openFrameworks package is.

- ie. if your user name is ofuser and you have uncompressed the oF package in the desktop it should be something like:

        cd /home/ofuser/Desktop/of_preRelease_v0.8.0_linux_cb_FAT/scripts/linux/ubuntu

- once in this directory run the scripts with:

        sudo ./install_codeblocks.sh
        sudo ./install_dependencies.sh

- you probably want to install also the codecs to be able to use formats like h264, mp3s and other formats that are usually not installed by default because they can have licensing issues in some countries:

        sudo ./install_codecs.sh
        
__Debian:__

- open a terminal from Applications &gt; Accessories &gt; Root Terminal

- in the terminal go to the directory where your openFrameworks package is.

- ie. if your user name is ofuser and you have uncompressed the openFrameworks package in the desktop it should be something like:

        cd /home/ofuser/Desktop/of_preRelease_v0.8.0_linux_cb_FAT/scripts/linux/debian

- once in this directory run the scripts:

        ./install_codeblocks.sh
        ./install_dependencies.sh
        
- you probably want to install also the codecs to be able to use formats like h264, mp3s and other formats that are usually not installed by default because they can have licensing issues in some countries:

        ./install_codecs.sh

__Fedora:__

- open a terminal from Applications &gt; System Tools &gt; Terminal
    in Fedora first of all you need to become root, for that, type in the terminal:

        su -

    and enter the root password

- in the terminal go to the directory where your openFrameworks package is.

- ie. if your user name is ofuser and you have uncompressed the oF package in the desktop it should be something like:

        cd /home/ofuser/Desktop/of_preRelease_v0.8.0_linux_cb_FAT/scripts/linux/fedora

- once in this directory run the scripts with:

        ./install_codeblocks.sh
        ./install_dependencies.sh
        
- you probably want to install also the codecs to be able to use formats like h264, mp3s and other formats that are usually not installed by default because they can have licensing issues in some countries:

        ./install_codecs.sh


compiling OF
------------

The source of openFrameworks comes uncompiled, by default it'll compile automatically the first time you compile an example but it's recomended to compile it alone in case you get any error:

In the terminal you have opened, if you were in fedora or debian exit from su with:

        exit
        
now go to scripts/linux

        cd /home/ofuser/Desktop/of_preRelease_v0.8.0_linux_cb_FAT/scripts/linux/
        
And use the following script to compile it:

        ./compileOF.sh
        
If you get any error please report it in the linux section in the [forum](http://forum.openframeworks.cc)


project generator
-----------------

The project generator is a tool to make it easier to create new projects, to compile it from the same terminal you have been using and in the same directory you compiled OF from just do:

        ./compilePG.sh
        
Now in the root folder of openFrameworks you have a directory called projectGenerator where you can find the executable to create new projects


codeblocks
----------

Since 007 codeblocks uses makefiles instead of it's own configuration so if you want to add include search paths, libraries or addons to your projects check the folder config_files in the codeblocks project or in the root of your folder.

There you'll find 2 files:

    - *config.make* where you can add include search paths, libraries, change the optimization flags and some other configuration settings
    - *addons.make* where you can add addons to your project. If you are using codeblocks adding a line with the name of the addon you want to use will add the necesary config to be able to use those addons but the files won't appear in codeblocks. You can go to Project > Add files recursively and add the folder of the addons you just added in addons.make
    
Again, don't try to configure things in codeblocks through its project settings windows or add files to a project in order to compile them. Anything in your src folder will compile by default


makefiles
------------

Since openFrameworks 0.06 there are makefiles for all the examples. There&#8217;s no special package, the makefiles are in the codeblocks distribution.

You only need to execute the install_dependencies script in case you don&#8217;t want to use codeblocks. Follow the instructions for your platform in the codeblocks install.

To use the makefiles just enter the example directory from a console and type make. It will compile everything and generate the executable and the clickToLaunch.sh script in the bin directory, the same as with codeblocks.

The make targets are:

- Debug: to generate the executable with debug symbols
- Release: to generate the executable with compiler optimizations
- clean: to clean the objects and executable
- CleanDebug: cleans only the debug build
- CleanRelease: cleans only the release build
- help: shows the help message on how to use the makefile

You can also tell the makefile to include addons just by creating an addons.make file in the root of your project. Just put the names of the addons that you want to use in one line each and it will do the rest.

FAQ
---

**The examples aren't compiling! I'm getting errors like this one:**

    ../../../libs/glew/include/GL/glew.h:1172:20: fatal error: GL/glu.h: No such file or directory

- Did you run install_dependencies.sh first? It will install libraries which are needed to compile the examples.

**I got an example to compile, but it's not running correctly. There's a window but nothing is being displayed.**

- Do you have the graphics card drivers installed? Some openGL functions don't exist in the default software drivers and even if they do you application will be really slow

- If you get tearing in your applications even with vertical sync enabled and you are in ubuntu try installing gnome shell and using the non-accelerated version of it. both unity and sometimes the accelerated version of gnome shell have problems with vertical refresh

