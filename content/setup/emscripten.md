## -*- coding: utf-8 -*-
.. title: emscripten

Emscripten setup
===============

Use a current [nightly openFrameworks download](https://github.com/openframeworks/openFrameworks/releases/tag/nightly) or source checkout. There is no separate Emscripten application archive. Current source and prebuilt libraries use **Emscripten 7.0.0**; do not replace the pinned SDK with `latest` independently of the libraries.

## Install the SDK and libraries

From the openFrameworks root, use the source-install path to select the pinned SDK:

```sh
scripts/emscripten/install_emscripten.sh source
source emsdk/emsdk_env.sh
scripts/emscripten/download_libs.sh
```

If `EMSDK` already points to an SDK installation, activate its pinned version and source that installation's `emsdk_env.sh`. Running the installer without an argument uses a system package manager instead and does not guarantee the same SDK version.

## Project Generator

Use PG from the same openFrameworks tree, enable **Advanced options** and select **Emscripten**. For makefile builds, keep the normal platform template; for CMake choose **cmake**. The current GUI also exposes wasm32/wasm64 selection. A wasm64 project needs the corresponding libraries, downloaded with `BITS=64 scripts/emscripten/download_libs.sh`; changing library bitness replaces the installed Emscripten library set.

## Build with make

From an example or generated project:

```sh
emmake make Release
emrun bin/em/3DPrimitivesExample/
```

Replace `3DPrimitivesExample` with your app's name. Serve the output over HTTP rather than opening `index.html` directly.

WebGL 2 is the default. For WebGL 1 add `PROJECT_DEFINES += OF_WEBGL_VERSION=1` to `config.make`.

## Build with CMake

From a project generated with PG's **cmake** template:

```sh
emcmake cmake -S . -B build-web -G Ninja -DCMAKE_BUILD_TYPE=Release
cmake --build build-web --parallel
emrun bin/em/mySketch/
```

Use `-DOF_WEBGL_VERSION=1` for a WebGL 1 CMake build. See the [CMake guide](/setup/cmake/#emscripten).

## Updating an existing build

After changing SDK, libraries or WebAssembly bitness, remove the old project's build directory and compiled core artifacts for that target, then rebuild. Keep your source files and runtime data.
