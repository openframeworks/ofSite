## -*- coding: utf-8 -*-
.. title: emscripten

emscripten setup
===========

Have you ever made a project in openFrameworks and been like "This is awesome! I want to put it on my online portfolio!". You could always make a video or take photos, but what about the UI aspect of your project? How can people see the awesome mouse effects you made? Enter Emscripten. Emscripten translates your C++ code into Javascript code in a matter of minutes! So you can put your awesome OF project "on the line" in your portfolio.

These instruction will show you how to compile one example project in the openFrameworks distribution, and can be reused whenever you want to translate an openFrameworks sketch to a web page. Assuming that you have downloaded openFrameworks 0.9 (it works only with OF versions >= 0.9) you only have to install emscripten and compile a project with it. Here the instruction steb by step.

Install Emscripten
------------------

The recommended way to install Emscripten is to install directly from the Emscripten repo with git. 
Open a terminal at the location where you want the emsdk to be installed and run the followings commands:

For 64bit installs: 
```bash

git clone https://github.com/emscripten-core/emsdk
cd emsdk
./emsdk install sdk-incoming-64bit binaryen-master-64bit
./emsdk activate sdk-incoming-64bit binaryen-master-64bit
source ./emsdk_env.sh
```

For 32bit installs: 
```bash

git clone https://github.com/emscripten-core/emsdk
cd emsdk
./emsdk install sdk-incoming-32bit binaryen-master-32bit
./emsdk activate sdk-incoming-32bit binaryen-master-32bit
source ./emsdk_env.sh
```

_Note: Because the current `emsdk` script uses Python2, you may get errors if the default `python` command on your machine is aliased to Python3. In this case, try explicitly running the above commands with Python2. For example: `python2 ./emsdk update`._

The installation will take a while. When it is finished, type `source ./emsdk_env.sh` to set the system path to the active version of Emscripten. You can copy the output of this command and add it to your `.profile` file, in order to save this variables also for the next sessions.

_Note: If you have a previous install of emscripten you will want to delete the compiled code in your OF_FOLDER. Delete any files or `obj` folders inside of `OF_FOLDER/libs/openFrameworksCompiled/lib/emscripten/` and any `obj/` folders in your project folders before trying to compile._

Compile an openFrameworks project using emscripten
--------------------------------------

Open the terminal in in one project in the examples folder, like `examples/3d/3DPrimitivesExample`, and compile the project using this command

```bash
emmake make
```

Once the compilation is finished, there will be a new file in `examples/3d/3DPrimitivesExample/bin`, the `3DPrimitivesExample.html` file. Open this file with the command:

```bash
emrun bin/3DPrimitivesExample.html
```

If it does not work, it is probably because you are opening with safari, and safari does not support WebGL. Let's open it with another browser, like chrome

```bash
emrun --browser chrome bin/3DPrimitivesExample.html
```
If everything works, you should see this image

![](3dprimitives.png)

This Tutorial is taken from this [blog post](http://www.reginafloresmir.com/blog/2015/5/14/openframeworks-on-the-line) by Regine Flores Mir.

