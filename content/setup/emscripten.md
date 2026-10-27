## -*- coding: utf-8 -*-
.. title: emscripten

emscripten setup
===========

**NOTE: We recommend using the [nightly builds](https://openframeworks.cc/download/) of OF ( bottom of download page ) for emscripten.**

Have you ever made a project in openFrameworks and been like "This is awesome! I want to put it on my online portfolio!". You could always make a video or take photos, but what about the UI aspect of your project? How can people see the awesome mouse effects you made? Enter Emscripten. Emscripten translates your C++ code into Javascript code in a matter of minutes! So you can put your awesome OF project "on the line" in your portfolio.

These instruction will show you how to compile one example project in the openFrameworks distribution, and can be reused whenever you want to translate an openFrameworks sketch to a web page. Assuming that you have downloaded openFrameworks you only have to install emscripten and compile a project with it. Here the instruction steb by step.

Install Emscripten
------------------

The recommended way to install Emscripten is to install directly from the Emscripten repo with git. 
openFrameworks is tested with a specific Emscripten version (currently **6.0.11**), so install that one rather than `latest`, which may be newer than openFrameworks supports.
Open a terminal at the location where you want the emsdk to be installed and run the followings commands:

```bash
git clone https://github.com/emscripten-core/emsdk
cd emsdk
./emsdk install 6.0.11
./emsdk activate 6.0.11
source ./emsdk_env.sh
```

From git, `scripts/emscripten/install_emscripten.sh` in openFrameworks installs and activates the tested version for you.

The installation will take a while. When it is finished, type `source ./emsdk_env.sh` to set the system path to the active version of Emscripten. You can copy the output of this command and add it to your `.profile` file, in order to save this variables also for the next sessions.

_Note: If you have a previous install of emscripten you will want to delete the compiled code in your OF_FOLDER. Delete any files or `obj` folders inside of `OF_FOLDER/libs/openFrameworksCompiled/lib/emscripten/` and any `obj/` folders in your project folders before trying to compile._

Compile an openFrameworks project using emscripten
--------------------------------------

Open the terminal in in one project in the examples folder, like `examples/3d/3DPrimitivesExample`, and compile the project using this command

```bash
emmake make
```

Once the compilation is finished, there will be a new file in `examples/3d/3DPrimitivesExample/bin/3DPrimitivesExample/`, the `index.html` file. Open this file with the command:

```bash
emrun bin/3DPrimitivesExample/
```

Apps use WebGL 2 by default. For a WebGL 1 only build, add `PROJECT_DEFINES += OF_WEBGL_VERSION=1` to the project's `config.make`.

If it does not work, it might need a different browser like Firefox.

```bash
emrun --browser firefox bin/3DPrimitivesExample/
```
If everything works, you should see this image

![](3dprimitives.png)

This Tutorial is taken from this [blog post](http://www.reginafloresmir.com/blog/2015/5/14/openframeworks-on-the-line) by Regine Flores Mir.

