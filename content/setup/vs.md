## -*- coding: utf-8 -*-
.. title: visual studio

visual studio setup guide
=========================
Here are the setup instructions for working with openFrameworks in Visual Studio on Windows. openFrameworks supports **Visual Studio 2022** and **Visual Studio 2026**; the free Community edition is all you need.

Download
--------
> [Download Visual Studio Community][0]

Install
-------
Run the installer and select the **Desktop development with C++** workload.

For Windows on ARM (ARM64 / ARM64EC) builds, also select the **MSVC ARM64/ARM64EC build tools** in the installer's Individual components tab.

Which openFrameworks download
-----------------------------
Each Visual Studio download is made for one Visual Studio version, with either x64 libraries only or x64, ARM64 and ARM64EC libraries:

| Download | Visual Studio | Libraries |
|---|---|---|
| `vs_2022_64` | 2022 | x64 |
| `vs_2022_64_arm64_arm64ec` | 2022 | x64, ARM64 and ARM64EC |
| `vs_2026_64` | 2026 | x64 |
| `vs_2026_64_arm64_arm64ec` | 2026 | x64, ARM64 and ARM64EC |

The x64 downloads are smaller; take the ARM64 / ARM64EC ones if you build for Windows on ARM.

_openFrameworks 0.12.1 and earlier came as `vs_64` (x64)._

If you use openFrameworks from git, download the libraries with `scripts/vs/download_libs.sh` (from Git Bash). On an x64 computer it downloads the x64 libraries; on Windows on ARM it downloads x64, ARM64 and ARM64EC. `-a all` downloads every architecture, and `--vs2026` the Visual Studio 2026 libraries.

Architectures
-------------
- **x64**: the default, for Intel and AMD processors.
- **ARM64**: native code for ARM processors (Snapdragon and other Windows on ARM devices).
- **ARM64EC**: ARM64 code that can be mixed with x64 code in one app (Windows 11), for apps that use x64-only libraries on ARM devices.

Choose the architecture in the platform dropdown at the top of Visual Studio.

Creating a project
------------------
Use the **Project Generator** in the openFrameworks folder:

1. Enter a project name and choose where to put it.
2. Under Platforms, select **Windows (Visual Studio)**.
3. Under Template, leave it empty for Visual Studio 2022, or select **vs2026** for Visual Studio 2026.
4. Click **Generate**, then **Open in IDE**, or double-click the project's `.sln` file.

Press **F5** to build and run. Use **Debug** while developing and **Release** for a smaller, faster app.

Video Codecs
-------
The video player uses Windows Media Foundation, which plays MP4 (H.264) and most common formats out of the box. For other formats you can install a codec pack such as the [K-Lite Codec Pack][1].

Disable Automatic Precompiled Header
-------
Visual Studio creates a hidden `.vs` folder for each project which, for IntelliSense (code completion), can grow to a few hundred megabytes. To keep it small, at the cost of slower IntelliSense, go to Tools > Options > Text Editor > C/C++ > Advanced and set **Disable Automatic Precompiled Header** to True.

[0]: https://visualstudio.microsoft.com/downloads/
[1]: https://ninite.com/klitecodecs/
