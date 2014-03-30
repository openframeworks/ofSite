## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============

## Cross compiling

_This guide guide you thorugh installing a cross compiler in a linux machine so you can compile armv6 binaries from your computer. It makes the compiling process faster and also allows to use IDEs instead of having to use plain text editors_

_Note: On OS X.  You can install a Ubuntu "helper" machine running inside Parallels 8.  Networking for the Ubuntu instance is set to _BRIDGED_ allowing it to be accessible to the Raspberry Pi on the same network. In Windows you can use a similar setup with any vm tool like vmware or virtualbox. In Linux you can just follow the next steps without installing a vm, the compiler will run on your machine directly_

### __Preparing your Raspberry Pi for Cross-Compilation__

* Download OF 
    * Follow the instructions in the [Raspberry Pi Getting Started](Raspberry-Pi-Getting-Started.html) guide.  If you will only be cross-compiling, it isn't important to fully compile OF on the pi, but it is critical to run the `install_dependencies.sh` script.  You *should* compile OF on the pi so you can compile on it, though.  It takes about an hour, though, so be warned.
* Fix absolute symlinks
    * Many of the symlinks on your Raspberry Pi refer to absolute locations on the Pi.  Once you copy the needed files to your host machine, those symlinks will not work and your compilation will fail.  In order to fix this, run the following commands to convert the absolute symlinks to relative symlinks:
        * sudo apt-get install symlinks
        * cd /
        * sudo symlinks -c -r /usr/ /lib/ /opt/
 
### __On the Linux Machine__   

* Install dependencies
    * Download the linux distribution of OF for linux or linux 64 and run the install_dependencies.sh script
    * if you are using a 64bit linux distribution you'll need to install also:
        * `sudo aptitude install ia32-libs`
    
* Download the Raspberry Pi compiler for linux
    * you can download it as a zip or clone the repo at from [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/)
    * For the rest of this document, we will assume you put the tools into the `${HOME}/src/raspberrypi/tools` directory (`$RPI_TOOLS`).
    * Please read over the [excellent instructions for setting up Raspberry Pi Cross-compilation at Stack Overflow](http://stackoverflow.com/questions/19162072/installing-raspberry-pi-cross-compiler) to verify your installation before continuing with this guide.
    
* Copy the required files from your Pi to your host computer 
    * This must be done *after* you have run install_dependencies.sh on your Pi. 
    * Create a folder to hold the files from your Raspberry Pi.
    * For the rest of this document, we will assume you created the `${HOME}/src/raspberrypi/rootfs` directory (`$RPI_ROOT`).
    * Copy the entire contents of the /lib, /usr and /vc folders from the Pi's sdcard to `$RPI_ROOT`.
    * This handy rsync command will copy all of thata data for you:
        * `rsync -alrRvz --progress --delete-after pi@PI_HOSTNAME_OR_IP:/{lib,usr,opt} ${RPI_ROOT}`
    * The rsync command should take ~20-30 minutes to complete depending on the speed of your network.

* Uncompress OF for armv6 somewhere in your computer and extract it.
    * To work around an issue with the latest Raspberry Pi distro, you will need to change one of the source files in the of distribution.  The Getting Started guide talks about doing this on your Pi, but don't forget to do it on your host machine as well.
    * In a terminal, change to the OF for armv6 directory that you just extracted and run:
        * `sed -i 's/VC_IMAGE_TRANSFORM_T/DISPMANX_TRANSFORM_T/g' libs/openFrameworks/app/ofAppEGLWindow.cpp`

* Set up your shell for cross-compiling.
    * Add the following lines to your .bashrc (or the equivalent for your shell):
        * `export RPI_ROOT=${HOME}/src/raspberrypi/rootfs`
        * `export RPI_TOOLS=${HOME}/src/raspberrypi/tools`
        * `export PATH=$PATH:${HOME}/bin:$RPI_TOOLS/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin `
    * create a new bash file called rpi-make with the contents below, put it somewhere in your `$PATH` and make it executable with `chmod +x`
~~~~
#!/bin/bash

export PKG_CONFIG_PATH=$RPI_ROOT/usr/lib/arm-linux-gnueabihf/pkgconfig:$RPI_ROOT/usr/share/pkgconfig:$RPI_ROOT/usr/lib/pkgconfig

make -j6 RPI_TOOLS=$RPI_TOOLS RPI_ROOT=$RPI_ROOT GST_VERSION=1.0 PLATFORM_OS=Linux PLATFORM_ARCH=armv6l $@
~~~~
    * use rpi-make in place of the make command when compiling your OF projects and any example projects.  Any arguments you pass to rpi-make will be passed onto the make command it invokes.

* Cross-compile your first OF app!
    * In your terminal, change to the `examples/empty/emptyExample` folder (or a more exciting example of your choice) and run `rpi-make`.
    * If all goes well, you will see a succesful compilation message!
    * Copy the newly built file to your Raspberry Pi and run the application there.
        * `scp ./bin/emptyExample pi@PI_HOSTNAME_OR_IP:.` 
    * On the Pi, run `./emptyExample` and you should see it start up and run.
    * This should now be successful for any of the example applications or your own new applications!

* Now you can setup your favourite IDE to use makefiles and compile for the Pi from your computer, once you compile an application copy the executable in your_app/bin to the Pi and run it

* A further optimization of this process is to install NFS shares on both the Pi and the computer.
    * from the Pi share the root folder of the sdcard to the computer, this way you don't need to copy the whole /usr folder to your computer's HD and if some library gets updated you don't need to refresh that copy.  Note that the absolute symlinks on the Pi would still cause you compilation trouble with this setup. 
    * from the computer share the OF folder to the Pi, that way you don't need to copy executables from the computer to the Pi everytime you want to test something

'''}

