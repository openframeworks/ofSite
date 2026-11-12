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

1. Open the Project Generator.
2. Set the project name and path.
3. Choose Windows (Visual Studio).
4. For Visual Studio 2022, leave the template empty. Nightly builds can target Visual Studio 2026 by choosing the `vs2026` template when that release zip is the one you downloaded.
5. Generate.

Open the `.sln` under `apps/<folder>/<project>/`. If Visual Studio asks to retarget the solution, retarget it to the toolset you installed. After the Project Generator updates a project, retarget again from the solution if the prompt does not appear: right-click the solution and choose Retarget.

Press F5 to build and run Debug. The configuration dropdown switches Debug and Release.

Architectures
-------

The default 0.12.1 package is x64. Nightly packages add native ARM64 and ARM64EC for Windows on Arm.
