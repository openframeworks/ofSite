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

        cd /home/ofuser/Desktop/of_preRelease_v0.06_linux_cb_FAT/scripts/linux/ubuntu

- once in this directory run the scripts with:

        sudo ./install_codeblocks.sh
        sudo ./install_dependencies.sh

- _problems with Ubuntu 9.10 (Karmic Koala):_ if you were having problems with installing codeblocks, that&#8217;s solved with the new install script, but if you already ran the previous one perhaps you need to clean your apt cache:

        sudo rm /var/cache/apt/archives/libwxbase*
        sudo rm /var/cache/apt/archives/libwxgtk*
        sudo apt-get remove libwxbase2.8-0 libwxgtk2.8-0
    
and execute again the install_codeblocks script. This will remove any program that you have installed that uses wx-widgets, but you can install them later without problem.

__Debian:__

- open a terminal from Applications &gt; Accessories &gt; Root Terminal

- in the terminal go to the directory where your openFrameworks package is.

- ie. if your user name is ofuser and you have uncompressed the openFrameworks package in the desktop it should be something like:

        cd /home/ofuser/Desktop/of_preRelease_v0.06_linux_cb_FAT/scripts/linux/debian

- once in this directory run the scripts:

        ./install_codeblocks.sh
        ./install_dependencies.sh

__Fedora:__

- open a terminal from Applications &gt; System Tools &gt; Terminal
    in Fedora first of all you need to become root, for that, type in the terminal:

        su -

    and enter the root password

- in the terminal go to the directory where your openFrameworks package is.

- ie. if your user name is ofuser and you have uncompressed the oF package in the desktop it should be something like:

        cd /home/ofuser/Desktop/of_preRelease_v0.06_linux_cb_FAT/scripts/linux/fedora

- once in this directory run the scripts with:

        ./install_codeblocks.sh
        ./install_dependencies.sh



makefiles
------------

From openFrameworks 0.06 there are makefiles for all the examples. There&#8217;s no special package, the makefiles are in the codeblocks distribution.

You only need to execute the install_dependencies script in case you don&#8217;t want to use codeblocks. Follow the instructions for your platform in the codeblocks install.

To use the makefiles just enter the example directory from a console and type make. It will compile everything and generate the executable and the clickToLaunch.sh script in the bin directory, the same as with codeblocks.

The make targets are:

- Debug: to generate the executable with debug symbols
- Release: to generate the executable with compiler optimizations
- clean: to clean the objects and executable
- CleanDebug: cleans only the debug build
- CleanRelease: cleans only the release build
- help: shows the help message on how to use the makefile

__0061 new makefile:__ The makefile has been updated in 0061, now it autodetects the project file name, source files, etc&#8230; so you can just make a copy of any example, rename the folder and it will work. The behaviour of the makefile can be tweaked editing just 4 variables at the beginning of the file. Everything else should work automatically.

You can also tell the makefile to include addons just by creating an addons.make file in the root of your project. Just put the names of the addons that you want to use in one line each and it will do the rest.

FAQ
---

**The examples aren't compiling! I'm getting errors like this one:**

    ../../../libs/glew/include/GL/glew.h:1172:20: fatal error: GL/glu.h: No such file or directory

- Did you run install_dependencies.sh first? It will install libraries which are needed to compile the examples.

**I got an example to compile, but it's not running correctly. There's a window but nothing is being displayed.**

- Are you using a 3D-accelerated layout manager? Later versions of Ubuntu use one by default. Sometimes this may interfere with the graphics in your openFrameworks program. Try turning it off temporarily.

    If you're using Gnome, type this command in your terminal:

        metacity --replace &

    Or for KDE:

        kwin --replace &

