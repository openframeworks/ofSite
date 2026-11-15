## -*- coding: utf-8 -*-
.. title: android studio

Android Studio
==============

Install the [latest stable Android Studio](https://developer.android.com/studio) and its Android SDK tools. Use the Project Generator and templates from the same openFrameworks installation. Current development packages are listed on the [nightly release](https://github.com/openframeworks/openFrameworks/releases/tag/nightly); the Android Windows package is listed on the [download page](/download/#android).

## Android NDK 29

Install **NDK r29**, revision **29.0.14206865**, through **Tools → SDK Manager → SDK Tools → Show Package Details → NDK (Side by side)**. See the [official r29 release](https://github.com/android/ndk/releases/tag/r29).

From the SDK's command-line tools, the equivalent is:

```sh
sdkmanager "ndk;29.0.14206865" "cmake;3.22.1"
```

Install the Android platform SDK and Build Tools requested by your project's Gradle files as well. Current source declares compile/target SDK 34, minimum API 25 and Build Tools 37.0.0. Use the supplied Gradle wrapper and Android Studio's compatible JDK.

The current master templates pin **NDK 30**. To use NDK 29 with that tree, explicitly set `ndkVersion '29.0.14206865'` in both the generated app's `ofApp/build.gradle` and `libs/openFrameworksCompiled/project/android/openframeworksAndroid/build.gradle`. Use third-party libraries built for the same NDK and rebuild the native core; do not mix stale output from another NDK. For a core build through the helper script, pass the matching revision:

```sh
NDK=29.0.14206865 libs/openFrameworksCompiled/project/android/cmake.sh
```

The helper also needs the SDK location (`ANDROID_HOME` on Linux/macOS) and the SDK's CMake/Ninja installation. These NDK 29 override steps do not change the source tree's upstream default.

## Create or update a project

1. Open the Project Generator supplied with the selected openFrameworks tree.
2. In **Settings**, set **OF path** to the root containing `addons`, `apps`, `libs` and `scripts`.
3. Enable **Advanced options** and choose **Android (Android Studio)**. Set the project name and parent directory, choose addons, then generate.
4. Open the generated project directory in Android Studio and let Gradle synchronize. Install any SDK components requested by the project.
5. Choose an emulator or connected device, enable USB debugging when using a device, then click **Run**.

From a source checkout, download Android libraries with `scripts/android/download_libs.sh` first. Linux users can build the command-line generator with `scripts/linux/compilePG.sh`. See the [Project Generator guide](/learning/01_basics/create_a_new_project/).

## CMake and Gradle {#cmake-and-gradle}

Android uses its dedicated CMake integration through Gradle, not the generic desktop **cmake** template. The generated app's native `CMakeLists.txt` is under `ofApp/src/`; the core's CMake project is under `libs/openFrameworksCompiled/project/android/openframeworksAndroid`.

Build the generated project with Android Studio, or from its root:

```sh
./gradlew assembleDebug
```

On Windows use `gradlew.bat assembleDebug`. Follow Gradle's generated module/flavor tasks to install or run the app. See the [CMake guide's Android section](/setup/cmake/#android).

## Troubleshooting

Check that `sdk.dir` in the project's `local.properties` points to the installed SDK. Prefer side-by-side `ndkVersion` selection over old `ndk.dir` instructions. If synchronization fails, read the Gradle error for the exact missing SDK, Build Tools, NDK or CMake version; use the versions declared by that project rather than upgrading them independently.

The current generator/template combination can fail creating a new Android project with template-copy errors involving `bin`, `srcJava` or `ofApp/src/res`. Until that is resolved, start from an already-generated Android example in the matching published package. This is a project-generation issue, separate from NDK selection; changing back to the old r15c instructions will not fix it.
