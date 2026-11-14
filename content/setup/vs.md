## -*- coding: utf-8 -*-
.. title: visual studio

visual studio setup guide
=========================

Use Visual Studio 2022 for the [0.12.1](https://github.com/openframeworks/openFrameworks/releases/tag/0.12.1) Windows package. Nightly builds also publish Visual Studio 2026 packages. The free Community edition is enough.

Download
--------

- [Visual Studio Community](https://visualstudio.microsoft.com/downloads/)
- openFrameworks 0.12.1, 64-bit: [of_v0.12.1_vs_64_release.zip](https://github.com/openframeworks/openFrameworks/releases/download/0.12.1/of_v0.12.1_vs_64_release.zip)
- All current packages, including nightly Visual Studio 2022 and 2026 builds: [releases](https://github.com/openframeworks/openFrameworks/releases)

Nightly asset names look like `of_v20261102_vs_2022_64_release.zip` and `of_v20261102_vs_2026_64_release.zip`. ARM64 and ARM64EC variants are named `vs_2022_64_arm64_arm64ec` and `vs_2026_64_arm64_arm64ec` on the nightly release.

Install Visual Studio
-------

Run the installer and select the **Desktop development with C++** workload.

Unzip openFrameworks to a real folder. Opening the zip itself in Explorer and running an example from there leaves project paths pointed at the archive, and Visual Studio then reports that projects failed to load.

Video
-------

0.12 does not need the K-Lite codec pack for ordinary video playback. The older DirectShow and QuickTime notes do not apply to this release.

Create a project
-------

The Visual Studio extension that used to live in the marketplace is not part of the current setup. Use the Project Generator that ships in the openFrameworks folder.

1. Open the Project Generator from the `projectGenerator` folder in your download. In **Settings**, set **OF path** to the openFrameworks root containing `addons`, `apps`, `libs`, and `scripts`.
2. Set **Project name** and **Project path**. The path is the parent folder; `apps/myApps` and `mySketch` create `apps/myApps/mySketch`.
3. Choose Windows (Visual Studio).
4. For the 0.12.1 Visual Studio 2022 package, leave **Template** empty. Use a matching nightly generator and package when selecting a newer template such as `vs2026`.
5. Choose any installed **Addons**, then click **Generate**.

Open the `.sln` under `apps/<folder>/<project>/`. If Visual Studio asks to retarget the solution, retarget it to the toolset you installed. After the Project Generator updates a project, retarget again from the solution if the prompt does not appear: right-click the solution and choose Retarget.

To add source files or addons later, use **import** or drag the project folder onto the generator, then click **Update**. The [Project Generator guide](/learning/01_basics/create_a_new_project/) covers the full workflow.

Press F5 to build and run Debug. The configuration dropdown switches Debug and Release.

Architectures
-------

The default 0.12.1 package is x64. Nightly packages add native ARM64 and ARM64EC for Windows on Arm.
