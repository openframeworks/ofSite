## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============

## distcc

_This guide is recommended for developers who are working on the openFrameworks core or projects that have lots of source files.  For some users, the speed of a native Raspberry Pi build (as outlined in our getting started guide), might be just fine.  For those who need speed, see below!_

`distcc` is a program that enables a single "master" computer (the Raspberry Pi in our case) to distribute its compiling load to other "helper" machines (a multi-core Ubuntu Linux machine) over the network.  In standard mode, source files are preprocessed on the Raspberry Pi, compressed and sent to the helper machine for compiling.  The helper machine, which in this case is running an arm-compatible cross-compiler, compiles the object files (.o files) and sends them back to the Raspberry Pi.  Once the Raspberry Pi has received all of the object files, it will then link them into a library or executable.  

It is also possible to distribute preprocessing using `distcc-pump`, but this feature is not explored below.

_Note: On OS X.  You can install a Ubuntu "helper" machine running inside Parallels 8.  Networking for the Ubuntu instance is set to _BRIDGED_ allowing it to be accessible to the Raspberry Pi on the same network. In Windows you can use a similar setup with any vm tool like vmware or virtualbox. In Linux you can just follow the next steps without installing a vm, the compiler will run on your machine directly_

### __On the Ubuntu Machine__   

* Install dependencies
    * `sudo apt-get install mercurial bison flex texinfo automake curl`
    * `sudo apt-get install build-essential libncurses-dev libtool gawk gperf`
    * if you are using a 64bit linux distribution you'll need to install also:
    * `sudo aptitude install ia32-libs`
    
* Download the Raspberry Pi compiler for linux
    * you can download it as a zip or clone the repo at from [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/)
    * rename the folder to something more identifiable like rpi-tools, we'll refer to this path as $RPI_TOOLS from now on
    
* Install and configure `distcc` on the Ubuntu Helper machine
    * `sudo apt-get install distcc`
    * Edit `/etc/default/distcc` (e.g. `sudo vi /etc/default/distcc`)
        * Change `STARTDISTCC="false"` to `STARTDISTCC="true"`
        * Change `ALLOWEDNETS="127.0.0.1"` to include the network IP addresses of your Raspberry Pis 
            * _Note: Addresses use CIDR notation.  To allow your `localhost` AND IP addresses in the range `192.168.1.0-192.168.1.255` use this `ALLOWEDNETS="127.0.0.1 192.168.1.0/24`._
            * _Note: If you want help with CIDR notation, you can use the calculator here http://www.subnet-calculator.com/cidr.php._
        * Change `ZEROCONF="false"` to `ZEROCONF="true"`
        * Change `LISTENER="127.0.0.1"` to `LISTENER=""` in order to listen for incoming connections all any network interface (not just the `localhost/127.0.0.1`).
    * Edit `/etc/init.d/distcc` (e.g. `sudo vi /etc/init.d/distcc`)
        * Change `PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin` to `PATH=$RPI_TOOLS/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin` 
            * _Note: $RPI_TOOLS should be the path were you installed the raspberry pi compiler before._
            
* Start `distcc` on your Ubuntu machine
    * `sudo service distcc start` (you may have to reboot if fails)
    * If it fails, you might also try:
    * `sudo service distcc restart`

### __On the Raspberry Pi__   

* Install `distcc`
    * `sudo apt-get install distcc`
    
* Configure the Raspberry Pi to use the Ubuntu helper you just configured
    * Make directory `mkdir $HOME/.distcc/`
    * Edit `$HOME/.distcc/hosts` (e.g. `vi $HOME/.distcc/hosts`) and add the ip(s) of the computers that have the rpi tools installed
    * To compile (finally!)
        * First, figure out how many processors you have available on the Ubuntu machine(s) using `nproc` on each.  Tally the total number of helper processors.  When we issue our make command we will use the `-j` flag to tell make how many jobs we want to be distribted over distcc.  According to the distcc documentation, you should run make with 2 x TOTAL_PROCESSORS in your cluster.  So, if you have one helper machine with 8 cores `8x2=16`, so you'll run `make -j 16`. If this is the same machine you are working from you probably want lower numbers so the computer is still usable while compiling
        * Next, we need our makefiles to know that we won't be using the normal RPI gcc, but rather the gcc (etc) located in `/usr/lib/distcc`.  The command itself looks like `/usr/lib/distcc/g++` or simply `distcc g++`, rather than the normal `g++`.  So the full make for the core openFrameworks lib OR projects will look something like this:
            * `make -j 6 CXX=/usr/lib/distcc/arm-linux-gnueabihf-g++ CC=/usr/lib/distcc/arm-linux-gnueabihf-gcc`
        * If you would like to simplify your command, you can set `MAKEFLAGS` using the following:
            * `export MAKEFLAGS="-s -j 6 CXX=/usr/lib/distcc/arm-linux-gnueabihf-g++ CC=/usr/lib/distcc/arm-linux-gnueabihf-gcc"`
            * `make`



'''}

