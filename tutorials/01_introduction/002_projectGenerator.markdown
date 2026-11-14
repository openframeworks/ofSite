---
date: 2012/10/20 17:00:00
title: Create a new project with the projectGenerator
summary: Create and update projects with the generator supplied with openFrameworks 0.12.1
author: Jesus Gollonet
author_site: http://jesusgollonet.com
---

## What is the Project Generator?

The Project Generator creates the IDE project files and makefiles used to build an openFrameworks app. It can also update an existing project after you change its source files, addons, location, or openFrameworks installation.

The packaged GUI is an Electron application that calls a C++ command-line generator. Generating a project does not compile or run it; that happens in your IDE or with `make`.

This guide covers **openFrameworks 0.12.1**. For the full workflow, platform choices, and command-line examples, see [Create a new project](/learning/01_basics/create_a_new_project/).

## Create a project

1. Open the application in the `projectGenerator` folder of your openFrameworks download. Linux users can build the command-line generator with `scripts/linux/compilePG.sh`.
2. In **Settings**, set **OF path** to the openFrameworks root containing `addons`, `apps`, `libs`, and `scripts`.
3. Enter a **Project name**, such as `mySketch`.
4. Set **Project path** to its parent folder, normally `apps/myApps`. The result will be `apps/myApps/mySketch`.
5. Select the installed **Addons** and the **Platforms** matching your package. Leave **Template** empty for a standard project.
6. Click **Generate** and open the resulting project in your IDE, or build it with `make`.

Keeping projects inside `apps` makes it easier to move them together with their openFrameworks installation. The generator calculates relative paths, so a project does not have to live at one fixed folder depth.

## Update a project

Use **import**, or drag the project folder onto the generator. Check its addons and platforms, then click **Update**. Import the folder containing `src` and `addons.make`, rather than an individual source or IDE file.

Addons must be installed in the selected openFrameworks tree before they can be selected. See [How to add an addon to a project](/learning/01_basics/how_to_add_addon_to_project/) for details.

Use the generator that accompanies your openFrameworks release. New nightly templates, such as CMake, require the corresponding nightly source tree; they are not part of 0.12.1.

For help, use the [openFrameworks forum](https://forum.openframeworks.cc/). The generator's source and current developer documentation are in the [Project Generator repository](https://github.com/openframeworks/projectGenerator).
