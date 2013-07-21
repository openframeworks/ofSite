<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============


If you run into something that might help others, add it here!

* Are you using the `Raspbian` Raspberry Pi image?  The soft-floating-point wheezy is not compatible with openFrameworks.  ArchLinux support is planned, but not currently supported.
* Are you giving your RPI enough power?  Many otherwise inexplicable RPI problems seem to be the result of inadequate power.  See here for more for information on [Power Supply Problems]( http://elinux.org/RPi_Hardware#Power_Supply_Problems)
* Are you running into problems with a USB device?  Please reference the list of [Verified Peripherals](http://elinux.org/RPi_VerifiedPeripherals).  
* If your USB device isn't listed and is failing please follow these steps to gather useful log information from the pi: 

0. `rm /var/log/kern.log /var/log/kern.log.1 /var/log/kern.log.*.gz`
0. `shutdown -r now`
0. run your oF App
0. `lsusb -v | grep -iP "Transfer Type.*(Interrupt|Isochronous)" | wc -l`
0. `cat /var/log/kern.log | grep -iP "fail|warn|error" | perl -p -e 's/^[^]\n]*]//g;s/(warn_alloc_failed: )[0-9]+/$1/g' | sort -u;`
0. `dmesg`
0. copy and paste the output to a gist

* For more information on debugging USB devices please reference the [Rpi USB check-list](http://elinux.org/Rpi_USB_check-list)
<br><br>
* Building oF core hangs on ofColor on RPI 256mb?  

1.  Edit /boot/config.txt and add or set option "gpu_mem=64". This resets the memory split to 192mb for cpu_mem, reboot after saving file (to edit: $sudo nano /boot/config.txt) ($sudo reboot). 
1.  Compile the oF core and app using "$make Debug" instead of a release build with "$make".
1.  More info see: https://github.com/openFrameworks-RaspberryPi/openFrameworks/issues/118

'''}

