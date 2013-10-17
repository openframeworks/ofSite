## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

#Linux for ARMv7 generic install

There's several boards that come with ARMv7 processors, like Pandaboard, BeagleBoard, BeagleBone (Black), Cubieboard and many others. All of them should be compatible with openFrameworks, the only things you need to check:

- use an armhf (hard float) distribution, OF is compiled with hard float flags and it won't work on OS's compiled with soft float
- you'll need to find and install drivers for your graphics card, this is usually hard since it's the only piece in these boards that it's usually not open sourced. If you can't find drivers you can always work with headless (no graphics output) applications. See below for an explanation on how to setup a headless app.
- OF has installation scripts for ubuntu, debian, fedora and arch linux which should mostly work for arm. So look for those distributions better or anything that is a debian or ubuntu derivative. If you can't find them the install_dependencies script has all which needs to be installed so looking through it you can find out how to install everything needed for your distribution.
- if you manage to run OF on any other board than the ones we have guides for, please tell us how you did it! you can contribute a guide like this through our [site github repo](https://github.com/openframeworks/ofSite)

-------------------------------

## Installing OF

Once you have a linux distribution up and running in your board, download the armv7 version of openFrameworks. Uncompress it in some folder in your sdcard and follow the next steps:

        cd OF_ROOT/scripts/linux/ubuntu
        sudo ./install_dependencies.sh
        sudo ./install_codecs.sh
        
Replace ubuntu with the distribution you are using. If you get errors in any of this steps please report them in the issues section in our [code github repo](http://github.com/openframeworks/openFrameworks/issues)

Now you can compile applications:

        cd OF_ROOT/examples/graphics/polygonExample
        make
        make run

-------------------------------

## Headless applications

If you can't find drivers for your graphics card or don't have video output at all (for example in a beaglebone without the dvi cape) or just don't need graphics output, you can use the class ofAppNoWindow to create an application that doesn't start an openGL context.

To use it in your main.cpp do:

~~~~{.cpp}
    #include "ofMain.h"
    #include "ofApp.h"
    #include "ofAppNoWindow.h"

    //========================================================================
    int main( ){
        ofAppNoWindow w;
	    ofSetupOpenGL(&w,1024,768, OF_WINDOW);
	    ofRunApp( new ofApp());

    }
~~~~

Yes, even if you are not creating an openGL context you need to call ofSetupOpenGL which actually tells OF which window to use.


'''}
