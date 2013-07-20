<%inherit file="/_templates/markdown.mako" />

Raspberry Pi
============

## distcc

_This guide is recommended for developers who are working on the openFrameworks core or projects that have lots of source files.  For some users, the speed of a native Raspberry Pi build (as outlined in our getting started guide), might be just fine.  For those who need speed, see below!_

`distcc` is a program that enables a single "master" computer (the Raspberry Pi in our case) to distribute its compiling load to other "helper" machines (a multi-core Ubuntu Linux machine) over the network.  In standard mode, source files are preprocessed on the Raspberry Pi, compressed and sent to the helper machine for compiling.  The helper machine, which in this case is running an arm-compatible cross-compiler, compiles the object files (.o files) and sends them back to the Raspberry Pi.  Once the Raspberry Pi has received all of the object files, it will then link them into a library or executable.  

It is also possible to distribute preprocessing using `distcc-pump`, but this feature is not explored below.

_Note: The guide below was developed on OS X running 10.8.2.  The Ubuntu "helper" machine is Ubuntu 12.04 64-bit running inside Parallels 8.  Networking for the Ubuntu instance is set to _BRIDGED_ allowing it to be accessible to the Raspberry Pi on the same network._

### __On the Ubuntu "helper" Machine__   

* Install dependencies
    * `sudo apt-get install mercurial bison flex texinfo automake curl`
    * `sudo apt-get install build-essential libncurses-dev libtool gawk gperf`
* Install `crosstool-ng`
    * `mkdir -p $HOME/x-tools/src`
        * _Note: You can put it elsewhere, but this guide will use this location._
    * `cd $HOME/x-tools/src`
    * `curl http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.17.0.tar.bz2 | tar xvj`
        * _Note: We are using a recent stable build, rather than the bleeding edge git version._
    * `mkdir $HOME/x-tools/crosstool-ng`
    * `cd $HOME/x-tools/src/crosstool-ng-1.17.0/`
    * `./bootstrap`
    * `./configure --prefix=$HOME/x-tools/crosstool-ng`
    * `make`
    * `make install`
    * (optional) `sudo cp ct-ng.comp /etc/bash_completion.d/`
    * Add the following to your `$HOME/.profile` file
    	* `export PATH=$HOME/x-tools/crosstool-ng/bin:$PATH`
	* Load the new paths
    	* `source $HOME/.profile`
* Create a cross-compiler toolchain for the Raspberry Pi
    * `mkdir $HOME/cross-rasp`
    * `cd $HOME/cross-rasp`
    * You can configure your cross-compiler by hand, or you can use this existing configuration:
        * `curl -s http://pastebin.com/raw.php?i=Rh6tvh32 | tr -d '\r' > .config`
            * _Note: For some reason, both curl and wget were adding `\r` line endings.  `tr -d '\r'` strips those._
    * `ct-ng build`
        * _Wait for a few minutes while everything downloads and builds ..._
* Now create a distcc "masquerade directory" so that `distcc` will present our `arm` gcc, etc as the default gcc.
    * `cd $HOME/x-tools/arm-unknown-linux-gnueabi/bin`
    * `curl -s http://pastebin.com/raw.php?i=NR7qiJA4 | tr -d '\r' > link`
    * `chmod +x link`
    * `./link`
* Install and configure `distcc` on the Ubuntu Helper machine
    * `sudo apt-get install distcc`
    * Edit `/etc/default/distcc` (e.g. `sudo vi /etc/default/distcc`)
        * Change `STARTDISTCC="false"` to `STARTDISTCC="true"`
        * Change `ALLOWEDNETS="127.0.0.1"` to include the network IP addresses of your Raspberry Pis 
            * _Note: Addresses use CIDR notation.  To allow your `localhost` AND IP addresses in the range `192.168.0.0-192.168.1.255` use this `ALLOWEDNETS="127.0.0.1 192.168.0.0/23`._
            * _Note: If you want help with CIDR notation, you can use the calculator here http://www.subnet-calculator.com/cidr.php._
        * Change `ZEROCONF="false"` to `ZEROCONF="true"`
        * Change `LISTENER="127.0.0.1"` to `LISTENER=""` in order to listen for incoming connections all any network interface (not just the `localhost/127.0.0.1`).
    * Edit `/etc/init.d/distcc` (e.g. `sudo vi /etc/init.d/distcc`)
        * Change `PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin` to `PATH=/home/YOUR_USER_NAME_HERE/x-tools/arm-unknown-linux-gnueabi/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin` 
            * _Note: By following the "masquerade step" above, and placing the cross-compiler path BEFORE the standard search path, `distcc` will default to out `arm` gcc, as opposed to the normal `x86/64` gcc._ 
            * _Note: YOUR_USER_NAME_HERE should be your username._
* Start `distcc` on your Ubuntu machine
    * `sudo service distcc start` (you may have to reboot if fails)
    * If it fails, you might also try:
    * `sudo service distcc restart`

### __On the Raspberry Pi__   

* Install Avahi (Bonjour/Zeroconf)
    * `sudo apt-get install avahi-daemon avahi-utils libavahi-compat-libdnssd-dev`
* Install `distcc`
    * `sudo apt-get install distcc`
* Configure the Raspberry Pi to use the Ubuntu helper you just configured
    * Make directory `mkdir $HOME/.distcc/`
    * Edit `$HOME/.distcc/hosts` (e.g. `vi $HOME/.distcc/hosts`)
        * _Note: Despite all of my best efforts, I cannot get RPI to recognize any distcc instances advertised over zeroconf, even when `avahi-browse -a` can see them.  So, for the moment, helper distcc instances must be addressed via ip._
    * Alternatively the following script will scrape the local distcc helper IPs with the Avahi Browser and write them in the correct format to $HOME/.distcc/hosts
``` bash
#!/bin/bash

avahi-browse _distcc._tcp -r -t -p -l | grep -Eo '([0-9]{1,3}\.){3}[0-9]{1,3}' | tr '\n' ' ' > $HOME/.distcc/hosts

```

    * To compile (finally!)
        * First, figure out how many processors you have available on the Ubuntu Helper machine(s) using `nproc` on each.  Tally the total number of helper processors.  When we issue our make command we will use the `-j` flag to tell make how many jobs we want to be distribted over distcc.  According to the distcc documentation, you should run make with 2 x TOTAL_PROCESSORS in your cluster.  So, if you have one helper machine with 8 cores `8x2=16`, so you'll run `make -j 16`.
        * Next, we need our makefiles to know that we won't be using the normal RPI gcc, but rather the gcc (etc) located in `/usr/lib/distcc`.  The command itself looks like `/usr/lib/distcc/g++` or simply `distcc g++`, rather than the normal `g++`.  So the full make for the core openFrameworks lib OR projects will look something like this:
            * `make -j 16 CXX=/usr/lib/distcc/g++`
            * _Note: If you are also compiling c-files, you'll need `CC=/usr/lib/distcc/gcc` as well._
        * If you would like to simplify your command, you can set `MAKEFLAGS` using the following:
            * `export MAKEFLAGS="-s -j 16 CXX=/usr/lib/distcc/g++ CC=/usr/lib/distcc/gcc"`
            * `make`


---

### On OSX (via brew) *NOT WORKING*
Note: This is particularly frustrating and does not work so far.  Ideally one can follow the above steps with several additions / replacements.

* Install requirements
    * `brew install gnu-sed gnu-awk coreutils binutils libtool intltool gettext`
    * _Note: the `gettext` is keg only and requires LDFLAGS and CFLAGS
* Once the dependencies are installed, the above instructions should be ammended at the point of configuration to this:
    * `./configure --with-install=/usr/local/bin/ginstall --with-sed=/usr/local/bin/gsed --with-objcopy=/usr/local/bin/gobjcopy --with-objdump=/usr/local/bin/gobjdump --with-readelf=/usr/local/bin/greadelf --with-awk=/usr/local/bin/gawk --with-libtool=/usr/local/bin/glibtool --with-libtoolize=/usr/local/bin/glibtoolize LDFLAGS=-L/usr/local/opt/gettext/lib CPPFLAGS=-I/usr/local/opt/gettext/include CC=/usr/bin/gcc --prefix=$HOME/x-tools/crosstool-ng`
    * _Note: This fails with errors._

## qemu
* Nothing yet ...
