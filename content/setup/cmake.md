## -*- coding: utf-8 -*-
.. title: CMake

CMake setup
===========

Use a current [nightly openFrameworks package](https://github.com/openframeworks/openFrameworks/releases/tag/nightly) or a source checkout containing `libs/openFrameworksCompiled/project/CMake` and `scripts/templates/cmake`. These instructions cover the CMake support being prepared for 0.12.2; the 0.12.1 stable packages use their existing IDE projects and makefiles.

## Requirements

Install the compiler, system dependencies and openFrameworks libraries described in your platform's setup guide before configuring CMake. CMake generates build files; it does not install these dependencies.

- CMake 3.22 or newer for desktop and Emscripten builds.
- CMake 3.28 or newer for iOS and tvOS, to link xcframeworks directly.
- CMake 4.2 or newer for the [Visual Studio 18 2026 generator](https://cmake.org/cmake/help/v4.2/generator/Visual%20Studio%2018%202026.html).
- Ninja, Make, Xcode or Visual Studio, depending on the selected generator.

## Generate a CMake project

In the current Project Generator, enable **Advanced options**, select the platform matching your libraries, and choose the **cmake** template. Generate or update the project. CMake is a template added to the selected platform, not a separate platform.

For example, from the openFrameworks root with the command-line generator on your PATH:

```sh
projectGenerator -o"$PWD" -plinux64 -tcmake apps/myApps/mySketch
```

Replace `-plinux64` with `-posx`, `-pvs`, `-pmsys2`, `-pemscripten`, `-pios` or `-ptvos` as appropriate. Use the generator supplied with the same openFrameworks tree. See the [Project Generator guide](/learning/01_basics/create_a_new_project/#cmake-projects).

For a project that already has `src/`, you can instead copy `scripts/templates/cmake/CMakeLists.txt` into the project folder. The template assumes `apps/myApps/<project>`; pass `-DOF_ROOT=/absolute/path/to/openFrameworks` when configuring a project elsewhere.

The CMake template reads sources from `src/` and addons from `addons.make`. It preserves an existing `CMakeLists.txt` when PG updates a project. Review custom CMake files when changing openFrameworks versions.

## Build a project

From the folder containing your project's `CMakeLists.txt`:

```sh
cmake -S . -B build-cmake -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake --parallel
```

The app is placed in the project's `bin/` folder. CMake reuses a matching compiled core when available and builds it otherwise. Add `-DOF_BUILD_CORE=ON` when you need to rebuild the core after changing its sources.

Use a separate build directory when changing platform, generator, architecture or toolchain. Ninja and Make use `CMAKE_BUILD_TYPE`; Xcode and Visual Studio use `--config Release` or `--config Debug` on the build command instead.

## macOS

```sh
cmake -S . -B build-xcode -G Xcode
cmake --build build-xcode --config Release
```

Open the generated `.xcodeproj` in `build-xcode`, or run the app from `bin/`. Ninja also works with `-G Ninja -DCMAKE_BUILD_TYPE=Release`. See [Xcode setup](/setup/xcode/).

## Linux and Raspberry Pi

```sh
cmake -S . -B build-cmake -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake --parallel 2
```

On a native build, CMake detects x86_64, aarch64, armv7l or armv6l from the compiler/toolchain. The libraries must match that target. Selecting a platform alone does not make a cross-compiler; cross-builds also need a toolchain and target system dependencies. See [Linux](/setup/linux-install/) and [Raspberry Pi](/setup/raspberrypi/).

## Windows: Visual Studio

From a terminal with the matching Visual Studio C++ tools installed:

```sh
cmake -S . -B build-vs2026 -G "Visual Studio 18 2026" -A x64
cmake --build build-vs2026 --config Release
```

For Visual Studio 2022 use `-G "Visual Studio 17 2022"` and a new build directory. Use `-A ARM64` or `-A ARM64EC` with the combined x64/ARM64/ARM64EC library package. The VS 2019 package is x64-only; follow the [Visual Studio guide](/setup/vs/) for its native projects.

## Windows: MSYS2

Open the UCRT64, CLANG64 or CLANGARM64 shell matching your openFrameworks download, then install its CMake and Ninja packages:

```sh
pacman -S --needed "${MINGW_PACKAGE_PREFIX}-cmake" "${MINGW_PACKAGE_PREFIX}-ninja"
cmake -S . -B build-cmake -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-cmake --parallel
```

Keep the compiler, libraries and runtime DLLs in the same MSYS2 environment. See [MSYS2 setup](/setup/msys2/).

## Emscripten

Activate the SDK and download the matching libraries first. Current openFrameworks source pins Emscripten **7.0.0**.

```sh
emcmake cmake -S . -B build-web -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-web --parallel
emrun bin/em/mySketch/
```

Replace `mySketch` with your project name. WebGL 2 is the default; configure with `-DOF_WEBGL_VERSION=1` for WebGL 1. See [Emscripten setup](/setup/emscripten/).

## Apple mobile platforms {#apple-mobile-platforms}

On macOS, with Xcode and CMake 3.28 or newer, configure an iOS simulator build:

```sh
cmake -S . -B build-ios-sim -G Xcode -DCMAKE_SYSTEM_NAME=iOS -DCMAKE_OSX_SYSROOT=iphonesimulator
cmake --build build-ios-sim --config Release
```

For tvOS use a separate directory, `-DCMAKE_SYSTEM_NAME=tvOS` and `-DCMAKE_OSX_SYSROOT=appletvsimulator`. For a physical device use `iphoneos` or `appletvos` and add `-DOF_APPLE_DEVELOPMENT_TEAM=YOUR_TEAM_ID`. The minimum targets are iOS 15 and tvOS 18. See [iOS / tvOS setup](/setup/iphone/).

Mac Catalyst (also called catOS in library-build scripts) is not a standalone platform in this generic CMake entry point. Do not configure it with an invented `OF_PLATFORM=catos`; use the appropriate Apple source project and toolchain.

## Android

Android uses its own Gradle/CMake integration under `libs/openFrameworksCompiled/project/android`, rather than the generic desktop `cmake` template. Generate an **Android** project and build it with Android Studio or its Gradle wrapper. See [Android Studio and CMake](/setup/android-studio/#cmake-and-gradle).

## Further reference

The [CMake README in openFrameworks](https://github.com/openframeworks/openFrameworks/blob/master/libs/openFrameworksCompiled/project/CMake/README.md) lists core-only builds, addons, tests, examples and build options.
