## -*- coding: utf-8 -*-
.. title: Qt creator

Qt Creator
==========

OpenFrameworks 0.10.0 has been tested with Qt Creator 4.6.0 and 4.6.1, we recomend to use 4.6.1 later versions might have different steps to follow or not work as expected.

You can find all versions of Qt Creator here:
[http://download.qt.io/official_releases/qtcreator/](http://download.qt.io/official_releases/qtcreator/)


Linux
-----

Before using OF in linux you need to run some install scripts, follow the instructions [here](../linux-install/) if you haven't done so yet.

In linux even if Qt Creator is available in the official repositories for your distributions, it's recommended to install qtcreator from their webpage instead. The one that comes with the distribution (at least in ubuntu) might be outdated and installing the one from the webpage you'll get support for the clang plugin which analizes the code while you type marking any errors more accurately than the default qtcreator static analizer.

Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, you can run the `install_template.sh` script in `scripts/qtcreator` and it'll install everything for you.

Windows
----

First of all you'll need to install msys2. Follow the instructions in the [setup guide for msys2](../msys2)

After doing so it's recommended to restart the computer before trying to use Qt Creator

Some parts of the build system rely on msys2 being installed in the default folder: c:\msys64 and installing it somewhere else might need modifications to the project files.

To use QtCreator with msys2 go to Tools > Options > Build and Run > Compilers and check that you have a MinGW compiler pointing to your msys2 install. If it's not there it's usually a sign that the environment variable for the PATH hasn't been set correctly by the install_dependencies script. Go back to the msys2 install guide and follow the steps to fix that. If that looks correct you can add a compiler that points to c:\msys64\mingw32\bin.

Now go to Tools > Options > Build and Run and in the Kits tab configure the Desktop Kit to use the c and c++ compilers and the debugger to the mingw tools in your msys2 installation.

Once the Kit has been properly configured you can install the Qt Creator plugin for openFrameworks that comes with the OF download. There' to ways to do it:

- From an msys2 console go to scripts/qtcreator in your openframeworks download and run ./install_templates.sh

or

- Copy the templates in scripts/qtcreator/templates to c:\Qt\qtcreator-4.6.1\share\qtcreator\templates.

Macos
----

After installing QtCreator go to Qt Creator > Preferences > Build and Run and configure the Desktop Kit to use clang instead of gcc. If you can't change it from there, press manage or go to the Compilers tab and check that clang is available. You might need to add a custom config to be able to enable clang instead of GCC.

Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, by running the install_template.sh script in scripts/qtcreator from a terminal.

All platforms
-------------

Optionally you can enabled the Clang static analizer which is more accurate finding errors in the code while you type but it's also sometimes slower. To enable it, from qt's page:

Configuring Clang Code Model Plugin

  - Select Help > About Plugins > C++ > ClangCodeModel to enable the plugin.
  - Restart Qt Creator to be able to use the plugin.

The openFrameworks plugin allows to create new projects and add official addons through a wizard, once the project is created you can edit the .qbs project file to easily add any new addons just by adding their name in the of.addons array.

There's a second project type in the wizard that allows to create a project from existing code.

A project created in any platform will work right away in any of the other supported platforms as long as any addons used are compatible and you don't use custom c++ flags or are careful to add them so they work for all the platforms where you want to run your project.

<iframe src="https://player.vimeo.com/video/142272907" width="1000" height="563" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
