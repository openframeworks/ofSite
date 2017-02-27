## -*- coding: utf-8 -*-
.. title: android studio

Android Studio
==============

The Android distribution of openFrameworks is setup to work with the Android Studio IDE. The project uses the Experimental Gradle build tools. 

Summary
-------

Setting up openFrameworks with Android Studio is fairly straightforward. The basic steps are:

- Install Android Studio and the Android SDK
- Install the Android NDK version r12b
- Download openFrameworks from the download page or from git
- In Android Studio, use **File ➞ Import Project** and select an openFrameworks example from the examples/android folder
- Build and run

Installation
------------

<h3>Install Android Studio and the SDK</h3>

Download and install Android Studio from http://tools.android.com/download/studio/stable (you need Android Studio 2.2.3 or higher). It should come with (or automatically install) a recent SDK, though you can customize the SDK version later from within Android Studio using **Tools ➞ Android ➞ SDK Manager**.

In the event that Android Studio does not come with an SDK, you can install it from http://developer.android.com/sdk/index.html (under "Get the SDK for an existing IDE").

You will need to download and install Android-Platform-18 and android build tools version 25.0.2.  

<h3>Install the Android NDK</h3>

This is the C/C++ compiler, headers and libraries for Android. OF 0.10.0 has been tested with the NDK version r12b.

https://developer.android.com/ndk/downloads/index.html

- OS X: https://dl.google.com/android/repository/android-ndk-r12b-darwin-x86_64.zip
- Linux 64: https://dl.google.com/android/repository/android-ndk-r12b-linux-x86_64.zip
- Windows 32: https://dl.google.com/android/repository/android-ndk-r12b-windows-x86.zip
- Windows 64: https://dl.google.com/android/repository/android-ndk-r12b-windows-x86_64.zip

<h3>Download openFrameworks</h3>

Download it from the downloads page:

[Download](/download)

You may also check out the openFrameworks source from GitHub (under master branch): http://github.com/openframeworks/openFrameworks

Or download the latest nightly:
[Download](/download) (bottom of the page)

<h3>Import the project</h3>

At the Android Studio welcome screen select **Open an Existing Android Studio Project**.

![](open-existing-project.png)

Then browse to any of the android examples in `examples/android`.

![Opening androidEmptyExample](androidEmptyExample.png)

Accept all the prompts and wait for Android Studio to set up the project.  Android studio will ask for you NDK location.

You'll have to wait a bit: the first sync will automatically build openFrameworks. If it doesn't work (Gradle sync still fails), try looking at the Troubleshooting tips.  In some cases, clicking on the error in the console window will take you to a solution, such as installing various versions of the Android SDK.  In some cases, you may have to do this several times to solve several missing dependencies.

<h3>Build and run</h3>

Press the Play button next to the `androidEmptyExample` shown in the toolbar. With any luck, it should build the app, and momentarily deploy it to your Android device (or prompt you to deploy it on a suitable emulator). If the app runs, congratulations! You have setup openFrameworks.

<h3>Edit the c++ source code inside Android Studio!</h3>
<h3>Including AUTO COMPLETE!</h3>

![Project view](projectview.png)
![Opening ofApp](ofApp.png)

Creating new projects
--------------------

1. Use the project generator to create a new Android Project
2. If the Android Studio dialog does not show up as an option when generating a project 
    a. select the Gear icon
    b. turn on Advanced Options


Troubleshooting
--------------

- You may need to adjust the following numbers to match your installed Android Studio and Android SDK. Android Studio should offer to fix these values for you when you open the appropriate build files.

    - The Gradle version specified in `/build.gradle`
    - The `compileSdkVersion`, `buildToolsVersion`, `minSdkVersion`, `targetSdkVersion` values
        in `/addons/ofxAndroid/ofAndroidLib/build.gradle` and `/apps/myApps/androidEmptyExample/build.gradle`

- If you get strange linker errors, check that you are using the 12b version of the NDK. Newer NDKs might work but usually there's some always some fixes that need to be done when moving to a new NDK version.

- If you get make errors on gradle sync without any details, run `chmod +x gradlew; ./gradlew` from within the project folder to build the project from command line, and get more detailed error messages.

- If your connected device is not recognized by Android Studio, restart adb
  with `adb kill-server && adb start-server`

- If, when syncronizing a project for the first time, clicking on the console
  messages does not solves the problem regarding a missing dependency of the
  android API (like for example Android API 22), open the sdk from the console,
   select the missing API and install it
