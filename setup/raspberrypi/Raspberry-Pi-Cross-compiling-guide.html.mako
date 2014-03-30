## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============

## Cross compiling

_This guide guide you thorugh installing a cross compiler in a linux machine so you can compile armv6 binaries from your computer. It makes the compiling process faster and also allows to use IDEs instead of having to use plain text editors_

_Note: On OS X.  You can install a Ubuntu "helper" machine running inside Parallels 8.  Networking for the Ubuntu instance is set to _BRIDGED_ allowing it to be accessible to the Raspberry Pi on the same network. In Windows you can use a similar setup with any vm tool like vmware or virtualbox. In Linux you can just follow the next steps without installing a vm, the compiler will run on your machine directly_

### __On the Linux Machine__   

* Install dependencies
    * Download the linux distribution of OF for linux or linux 64 and run the install_dependencies.sh script
    * if you are using a 64bit linux distribution you'll need to install also:
    * `sudo aptitude install ia32-libs`
    
* Download the Raspberry Pi compiler for linux
    * you can download it as a zip or clone the repo at from [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/)
    * rename the folder to something more identifiable like rpi-tools, we'll refer to this path as `$RPI_TOOLS` from now on
    
* With this you are already able to compile armv6 binaries for the PI but we'll also need the libaries. 
    * run the install_dependencies.sh script in the PI
    * copy the whole /usr folder from the PI's sdcard into a directory on your Linux host called `rpi-root`. We'll call this folder `$RPI_ROOT` from now on. `usr` should be a _subdirectory_ of `rpi-root`.   

* Uncompress OF for armv6 somewhere in your computer

* Open a terminal and move to one of the examples folders, you can build binaries for the PI using:
    * `make -j6 RPI_TOOLS=$RPI_TOOLS RPI_ROOT=$RPI_ROOT GST_VERSION=1.0 PLATFORM_OS=Linux PLATFORM_ARCH=armv6l`
    * _Note_: remember that `$RPI_TOOLS` and `$RPI_ROOT` are the folders where you have the raspberry pi's toolchain and the usr folder from the sdcard respectively
    * You may prefer to add the following to your `config.make`:
      ```
      export RPI_TOOLS = <path to RPI_TOOLS>
      export RPI_ROOT = <path to RPI_ROOT>
      export GST_VERSION = 1.0
      export PLATFORM_OS = Linux
      export PLATFORM_ARCH = armv6l
      ```

* If you get PKG_CONFIG errors, you should `export PKG_CONFIG_PATH=$RPI_ROOT/usr/lib/arm-linux-gnueabihf/pkgconfig:$RPI_ROOT/usr/share/pkgconfig:$RPI_ROOT/usr/lib/pkgconfig`

* You may get errors related to libdl when linking (depending on how you're accessing `$RPI_ROOT`). There are some absolute symlinks in your `$RPI_ROOT` that are broken. Fix them with [this script](https://gitorious.org/cross-compile-tools/cross-compile-tools/source/98c51c5939d91884b096dd2fbee859803fd34fef:fixQualifiedLibraryPaths). Change the first line to #!/bin/bash. Then `sudo ./fixQualifiedLibraryPaths $RPI_ROOT $RPI_TOOLS/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-g++`

* Now you can setup your favourite IDE to use makefiles and compile for the PI from your computer, once you compile an application copy the executable in your_app/bin to the PI and run it

* A further optimization of this process is to install NFS shares on both the PI and the computer.
    * from the PI share the root folder of the sdcard to the computer, this way you don't need to copy the whole /usr forlder to your computer's HD and if some library gets updated you don't need to refresh that copy. 
    * from the computer share the OF folder to the PI, that way you don't need to copy executables from the computer to the PI everytime you want to test something

'''}

