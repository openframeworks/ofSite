## -*- coding: utf-8 -*-
.. title: visual studio

Visual Studio setup
===================

Install [Visual Studio Community](https://visualstudio.microsoft.com/downloads/) with the **Desktop development with C++** workload. Use a package matching the Visual Studio version and target architecture.

## Downloads

The [download page](/download/#windows) groups Windows builds by Visual Studio 2026 (the default download choice), Visual Studio 2022, Visual Studio 2019 and MSYS2. Current builds are on the [nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly).

| Toolset | Current package variants | Targets |
| --- | --- | --- |
| Visual Studio 2026 | `vs_2026_64`, `vs_2026_64_arm64_arm64ec` | x64, or x64/ARM64/ARM64EC |
| Visual Studio 2022 | `vs_2022_64`, `vs_2022_64_arm64_arm64ec` | x64, or x64/ARM64/ARM64EC |
| Visual Studio 2019 | `vs_2019_64` | x64 only, v142 |

Stable [0.12.1](https://github.com/openframeworks/openFrameworks/releases/tag/0.12.1) uses `of_v0.12.1_vs_64_release.zip` with Visual Studio 2022. The older `vs` and `vs_64` packages contain x64 libraries; use a current combined package for Windows on Arm.

Unzip the package to a real folder before opening a project. Do not run an example from inside Explorer's ZIP preview.

## Project Generator

1. Open the generator supplied with the same openFrameworks package. Set **Settings → OF path** to the root containing `addons`, `apps`, `libs` and `scripts`.
2. Enter a project name and its parent folder, normally `apps/myApps`.
3. With current PG, enable **Advanced options**, select **Windows (Visual Studio)** and use **Visual Studio version** to choose **2026**, **2022** or **2019**. PG's default for a new VS project is 2022; select 2026 when using the default nightly download.
4. Choose installed addons and click **Generate**. Open the resulting `.sln` and press **F5**.

The current CLI equivalents are `-pvs -t2026`, `-pvs -t2022` and `-pvs -t2019`. With the 0.12.1 GUI, leave the template empty for the standard VS 2022 package. Older nightly generators used the `vs2026` template; use the generator matching your tree.

Use **import** or drag the project folder onto PG to update sources and addons. Existing projects retain their VS version unless you explicitly change it. See the [Project Generator guide](/learning/01_basics/create_a_new_project/).

## Architectures

Choose **x64**, **ARM64** or **ARM64EC** in Visual Studio's platform selector. ARM64 is native Windows-on-Arm code; ARM64EC supports interoperability with x64 modules. Install the corresponding compiler components and use matching libraries. VS 2019/v142 builds are x64-only.

## CMake (nightly / 0.12.2)

Choose PG's **cmake** template and configure the generated project:

```sh
cmake -S . -B build-vs2026 -G "Visual Studio 18 2026" -A x64
cmake --build build-vs2026 --config Release
```

VS 2026 needs CMake 4.2 or newer. For VS 2022 use `-G "Visual Studio 17 2022"` and a separate build directory. Use `-A ARM64` or `-A ARM64EC` with the combined package. See the [CMake guide](/setup/cmake/#windows-visual-studio).

## Video

Visual Studio builds use Windows Media Foundation. The older QuickTime and DirectShow codec-pack setup instructions do not apply to this path.
