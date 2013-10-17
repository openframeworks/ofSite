## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''


Raspberry Pi
============


# Using WiringPi with OpenFrameworks for Raspberry Pi to access the GPIO-pins


Important: The GPIO pins on the Raspberry Pi is 3.3V, even though there is also a 5V supply. Be sure not to connect a higher voltage than 3.3V to the GPIO pins or you could severely damage your Pi.

WiringPi is a C-library by Drogon making it easy to read and write to the GPIO pins in an Arduino style. See https://projects.drogon.net/raspberry-pi/wiringpi/ for details.

To get and install the library do the following (from projects.drogon.net):

To obtain WiringPi using GIT:
`git clone git://git.drogon.net/wiringPi`

If you have already used the clone operation for the first time, then
    cd wiringPi
    git pull origin

Will fetch an updated version then you can re-run the build script below.
To build/install there is a new simplified script:

    cd wiringPi
    ./build

The new build script will compile and install it all for you - it does use the sudo command at one point, so you may wish to inspect the script before running it.

Then in your projects config.make-file include the following line (in bold) in the PROJECT LINKER FLAGS-section:

    ################################################################################
    # PROJECT LINKER FLAGS
    #	These flags will be sent to the linker when compiling the executable.
    #
    #   Note: Leave a leading space when adding list items with the += operator
    ################################################################################
    
    # Currently, shared libraries that are needed are copied to the 
    # $(PROJECT_ROOT)/bin/libs directory.  The following LDFLAGS tell the linker to
    # add a runtime path to search for those shared libraries, since they aren't 
    # incorporated directly into the final executable application binary.
    # TODO: should this be a default setting?
    PROJECT_LDFLAGS=-Wl,-rpath=./libs
    PROJECT_LDFLAGS += -lwiringPi
    

Then in your ofApp.h include the library by placing the following line near the top:

    #include "wiringPi.h"

and while you're in there let's prepare the example:

    bool sensor0;
    bool sensor3;
    bool sensor7;

Now in your ofApp.cpp an example of the use could be the following.
In the setup-function put:

    if(wiringPiSetup() == -1){
    	printf("Error on wiringPi setup\n");
    	}
    
    	pinMode(0,INPUT);
    	pinMode(3,INPUT);
    	pinMode(7,INPUT);

This will make it possible to read the pins 0, 3 and 7 (see connections for the GPIO pins on  https://projects.drogon.net/raspberry-pi/wiringpi/pins/ ). Also put:

    bool sensor0 = false;
    bool sensor3 = false;
    bool sensor7 = false;


Now in the update-function:

    if(digitalRead(0)!=0){
    	sensor0 = true;
    } else {
    	sensor0 = false;
    }
    
    if(digitalRead(3)!=0){
    	sensor3 = true;
    } else {
    	sensor3 = false;
    }
    
    if(digitalRead(7)!=0){
    	sensor7 = true;
    } else {
    	sensor7 = false;
    }


And in the draw function:

    ofBackground(ofColor(0,0,0));
    
    ofSetColor(190);
        if (sensor0 == true){
        	ofDrawBitmapString("Sensor at pin 0 activated", 50, 50);
        }
        if (sensor3 == true){
    	ofDrawBitmapString("Sensor at pin 3 activated", 50, 70);
        }
        if (sensor7 == true){
    	ofDrawBitmapString("Sensor at pin 7 activated", 50, 90);
        }


That's it. Note that some of the pins should be treated different than others e.g. pin 8 and 9 have pull-up resistors. In general you should read https://projects.drogon.net/raspberry-pi/wiringpi/special-pin-functions/ to be sure you understand how you are using the pins.

'''}

