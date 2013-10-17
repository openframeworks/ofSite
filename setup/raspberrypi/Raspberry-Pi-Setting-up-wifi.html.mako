## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============


## Wireless Setup
* Wireless networks are easy to setup with `wicd` in X and `wicd-curses` on the command line.
* To install:
    * `sudo apt-get install wicd-curses`
    * Run:
        * `wicd-curses`
        * Use the up / down arrow keys to find your wireless network.
        * Once you find your wireless network, press the RIGHT arrow.
        * If your network uses encryption, use the arrow keys to navigate down.
        * Once you are on the encryption type, press enter.
        * Choose your encryption type.
        * Enter your details.
          * **Note**: *If your exact setup does not exist, you can create custom profiles to support any combination of settings supported by `wpa_supplicant`. More information [here](http://wicd.sourceforge.net/templates.php).*

'''}


