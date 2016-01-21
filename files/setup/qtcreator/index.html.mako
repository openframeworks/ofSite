## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

Qt Creator
==========

Since version 0.9.0 we have support for Qt Creator in Linux, Windows and OSX. This guide is based on Qt Creator 3.5.1 and a different version might have different steps to follow or not work as expected.

You can download Qt Creator from: [http://www.qt.io/download-open-source/#section-6](http://www.qt.io/download-open-source/#section-6)


Linux
-----

Before using OF in linux you need to run some install scripts, follow the instructions [here](../linux-install/) if you haven't done so yet.

In linux even if Qt Creator is available in the official repositories for your distributions, it's recommended to install qtcreator from their webpage instead. The one that comes with the distribution (at least in ubuntu) might be outdated and installing the one from the webpage you'll get support for the clang plugin which analizes the code while you type marking any errors more accurately than the default qtcreator static analizer. 

Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, you can run the install_template.sh script in scripts/qtcreator and it'll install everything for you.

Windows
----

First of all you'll need to install msys2. Follow the instructions in the [setup guide for msys2](../msys2)

Some parts of the build system rely on msys2 being installed in the default folder: c:\msys64 and installing it somewhere else might need modifications to the project files.

To use QtCreator with msys2 go to Qt Creator > Preferences > Build and Run > Compilers and if it's not there add a compiler that points to c:\msys64\mingw32\bin then in the Kits tab configure the Desktop Kit to use gcc from msys2.

Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download by copying the templates in scripts/qtcreator/templates to c:\Qt\qtcreator-3.5.1\share\qtcreator\templates.

OSX
----

After installing QtCreator go to Qt Creator > Preferences > Build and Run and configure the Desktop Kit to use clang instead of gcc. If you can't change it from there, press manage or go to the Compilers tab and check that clang is available. You might need to add a custom config to be able to enable clang instead of GCC.

Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, you can run the install_template.sh script in scripts/qtcreator and it'll install everything for you.

All platforms
-------------

Optionally you can enabled the Clang static analizer which is more accurate finding errors in the code while you type but it's also sometimes slower. To enable it, from qt's page:

Configuring Clang Code Model Plugin

  - Select Help > About Plugins > C++ > ClangCodeModel to enable the plugin.
  - Restart Qt Creator to be able to use the plugin.
  - Select Tools > Options > C++ > Code Model, and select the parser to use for files of each type. (Set everything to Clang)

The openFrameworks plugin allows to create new projects and add official addons through a wizard, once the project is created you can edit the .qbs project file to easily add any new addons just by adding their name in the of.addons array.

There's a second project type in the wizard that allows to create a project from existing code.

A project created in any platform will work right away in any of the other supported platforms

<iframe src="https://player.vimeo.com/video/142272907" width="1000" height="563" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
