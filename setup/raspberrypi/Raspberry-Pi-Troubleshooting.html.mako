## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Troubleshooting openFrameworks on the Raspberry Pi
============

#### Are you using the hard-float Raspbian "wheezy" distribution?
There is also a soft-float Debian "wheezy" that is not compatible with openFrameworks.  Arch Linux support is planned, but not currently supported.
 
#### Are you giving your Raspberry Pi enough power?  
Many otherwise inexplicable problems seem to be the result of inadequate power.  See [Power Supply Problems]( http://elinux.org/RPi_Hardware#Power_Supply_Problems) for more for information. 

#### Compiling openFrameworks hangs on ofColor?  
Make sure you have at least 128MB of RAM given to the CPU. Check the _**Configure the Raspberry Pi**_ section in [Getting Started](Raspberry-Pi-Getting-Started.html)

#### Debugging your app and/or openFrameworks

You can build openFrameworks and your app with debug symbols by using the command `make Debug` in any project. You can then use [gdb](http://www.cs.cmu.edu/~gilpin/tutorial/) in order to narrow down issues. 

#### Are you running into problems with a USB device?  
Reference the list of Verified Peripherals](http://elinux.org/RPi_VerifiedPeripherals). If your USB device isn't listed and is failing please follow these steps to gather useful log information from the Pi: 

* `rm /var/log/kern.log /var/log/kern.log.1 /var/log/kern.log.*.gz`
* `shutdown -r now`
* run your App
* `lsusb -v | grep -iP "Transfer Type.*(Interrupt|Isochronous)" | wc -l`
* `cat /var/log/kern.log | grep -iP "fail|warn|error" | perl -p -e 's/^[^]\n]*]//g;s/(warn_alloc_failed: )[0-9]+/$1/g' | sort -u;`
* `dmesg`
* copy and paste the output to a gist

For more information on debugging USB devices reference the [Raspberry Pi USB checklist](http://elinux.org/Rpi_USB_check-list)

'''}

