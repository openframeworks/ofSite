---
title: Create a new project
type: howto
---

The Project Generator creates and updates the files used by your IDE or makefiles. You then build and run the project with Xcode, Visual Studio, or `make`.

These instructions cover **openFrameworks 0.12.1**. Use the generator supplied with your openFrameworks download. Newer nightly generators and templates can have different options.

## Open the Project Generator

On macOS and Windows, open the application in the `projectGenerator` folder at the root of your openFrameworks download. On macOS it is `projectGenerator.app`. On Linux, see the [command-line instructions](#command-line) below and the [Linux setup guide](/setup/linux-install/).

The GUI is an Electron application that calls the openFrameworks command-line generator. You do not need to install Node.js to use a packaged GUI.

![Project Generator create/update screen](newGui.png)

The screenshot shows an earlier version of the GUI; the fields below also apply to 0.12.1.

## Set the openFrameworks path

Open **Settings** using the gear icon. Set **OF path** to your openFrameworks root: the folder containing `addons`, `apps`, `libs`, and `scripts`. Do not select the `projectGenerator` folder itself.

![Project Generator settings](newGuiSettings.png)

When you switch to another openFrameworks installation, change this setting before generating or updating projects.

## Create a project

1. In **create / update**, enter a **Project name**, for example `mySketch`.
2. Set **Project path** to the folder that will contain the project. With `apps/myApps` selected, the result is `apps/myApps/mySketch`.
3. Select any installed **Addons** you need. You can add them later.
4. Choose the **Platforms** that match your openFrameworks package and build tools.
5. Leave **Template** empty for a normal project. Choose an extra template only when you need its settings.
6. Click **Generate**, then open the generated project in your IDE.

| Build tools | Platform in the 0.12.1 GUI | File to open or command to run |
| --- | --- | --- |
| Xcode on macOS | OS X (Xcode) | `mySketch.xcodeproj` |
| Visual Studio on Windows | Windows (Visual Studio) | `mySketch.sln` |
| MSYS2 | Windows (msys2/mingw) | `.code-workspace` in VS Code, or `make` in the matching MSYS2 shell |
| Linux x86_64 | Linux 64 (VS Code/Make) | `.code-workspace` in VS Code, or `make` |
| Linux ARM64 | Arm 64 (VS Code/Make) | `.code-workspace` in VS Code, or `make` |
| Linux ARMv6 | Arm 32 (VS Code/Make) | `.code-workspace` in VS Code, or `make` |
| iOS | iOS (Xcode) | `mySketch.xcodeproj` |

The available choices come from `scripts/templates` in the selected openFrameworks installation. Selecting a platform does not install its compiler or libraries. Follow the relevant [setup guide](/download/) first.

## Where to keep projects

`apps/myApps/mySketch` is a convenient default. You can create other groups inside `apps`, such as `apps/installations/mySketch`.

Projects do not have to be exactly three directories below the openFrameworks root. The generator calculates paths for the chosen location. Keep the project with the openFrameworks installation it uses, and update it with the generator if either folder moves.

A generated project normally contains:

| Path | Purpose |
| --- | --- |
| `src/` | Your C++ source and headers |
| `bin/data/` | Images, fonts, sounds, and other runtime assets |
| `addons.make` | The project's addon list, one addon per line |
| `config.make` | Settings for makefile builds, including `OF_ROOT` |
| IDE project files / makefiles | Files used to build the selected platforms |

## Update an existing project

Click **import**, or drag the project folder onto the GUI. Select the folder containing `src` and `addons.make`, rather than an individual `.cpp`, `.sln`, or `.xcodeproj` file.

Check the project path, addons, and platforms, then click **Update**. Use this when you add source files or addons, move a project, or switch it to another openFrameworks installation. Keep your project in version control so you can review changes to generated build files.

For addon installation and the `addons.make` format, see [How to add an addon to a project](/learning/01_basics/how_to_add_addon_to_project/).

## Command line {#command-line}

On Linux, `scripts/linux/compilePG.sh` builds the 0.12.1 command-line generator and offers to install it as `projectGenerator`. It does not build the Electron GUI. After installing that command, run these from your openFrameworks root:

```sh
projectGenerator --help
projectGenerator -o"$PWD" -plinux64 apps/myApps/mySketch
```

Use `-plinuxaarch64` for the 0.12.1 ARM64 package, or `-plinuxarmv6l` for ARMv6. The same command updates an existing project at that path. Options go before the project path.

You can set the addon list when generating a project:

```sh
projectGenerator -o"$PWD" -plinux64 -a"ofxGui,ofxOsc" apps/myApps/mySketch
```

When updating without `-a`, the generator reads the project's `addons.make`. Supplying `-a` replaces the selected addon list, so include every addon you want to keep.

Some newer packages name the command-line executable `projectGeneratorCmd`; use the executable supplied with that package. The packaged GUI is a separate application.

## Nightly features

Recent nightly builds add templates and targets that are not in 0.12.1, including the **CMake** template and newer Visual Studio templates. Use them with a matching nightly openFrameworks tree and its generator. The [Project Generator repository](https://github.com/openframeworks/projectGenerator) documents those versions; the [nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly) contains the corresponding openFrameworks packages.
