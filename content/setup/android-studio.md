## -*- coding: utf-8 -*-
.. title: android studio

Android Studio
==============

Summary
-------

Setting up openFrameworks with Android Studio is fairly straightforward. The basic steps are:

- Install Android Studio and the Android SDK
- Install the Android NDK (actually tested version is r15c)
- Download openFrameworks from the download page or from git
- If you got openFrameworks from git: 
	- Run `scripts/android/download_libs.sh` to download libraries.
	- Use the Project Generator to generate Android Studio project files for android examples.
- In Android Studio, use **Open an existing Android Studio project** and select an openFrameworks example from the `examples/android` folder.
- It will ask you for NDK location, either put the path in `local.properties` or click *Project Structure* and select the NDK location.
- Let Android Studio download all other dependencies missing automatically.
- Build and run

Installation
------------

<h3>Install Android Studio and the SDK</h3>

Download and install Android Studio from [https://tools.android.com/download/studio/stable](https://tools.android.com/download/studio/stable) (you need Android Studio 1.0 or higher). It should come with (or automatically install) a recent SDK, though you can customize the SDK version later from within Android Studio using **Tools ➞ Android ➞ SDK Manager**.

In the event that Android Studio does not come with an SDK, you can install it from [https://developer.android.com/sdk/index.html](https://developer.android.com/sdk/index.html) (under "Get the SDK for an existing IDE").

<h3>Install the Android NDK</h3>

This is the C/C++ compiler, headers and libraries for Android. OF 0.10.0 has been tested with the NDK version r15c, newer versions might work but it's not guaranteed.

[https://developer.android.com/ndk/downloads/older_releases](https://developer.android.com/ndk/downloads/older_releases)

- OS X: [https://dl.google.com/android/repository/android-ndk-r15c-darwin-x86_64.zip](https://dl.google.com/android/repository/android-ndk-r15c-darwin-x86_64.zip)
- Linux 64: [https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip](https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip)
- Windows 32: [https://dl.google.com/android/repository/android-ndk-r15c-windows-x86.zip](https://dl.google.com/android/repository/android-ndk-r15c-windows-x86.zip)
- Windows 64: [https://dl.google.com/android/repository/android-ndk-r15c-windows-x86_64.zip](https://dl.google.com/android/repository/android-ndk-r15c-windows-x86_64.zip)


Once you downloaded the android ndk .zip, you'll have to install it in the "ndk" folder of android studio sdk. 
To know the path of the android studio sdk, open android studio. You should see the welcome screen. If you have an open project close it with "File" > "Close project".  Click on the button at the bottom right : "Configure" > "SDK manager". Can also be found in "File" > "Settings" > "File 
At the top you should have a path pointing to the SDK location, called "Android SDK location". 
On windows it is probably :
`C:\Users\%userprofile%\AppData\Local\Android\sdk\`

Now in the file explorer go to that location, and look for a "ndk" folder. If it doesn't exist create one, and paste the extracted `android-ndk-r15c` folder here...


<h3>Download openFrameworks</h3>

[Download](/download) it from the downloads page.
Once downloaded, extract it in the location of your choice.


<h3>Open the project</h3>

At the Android Studio welcome screen select **Open an Existing Android Studio Project**.

![](open-existing-project.png)

Then browse to any of the android examples in `examples/android`.

![Opening androidEmptyExample](androidEmptyExample.png)

Accept all the prompts and wait for Android Studio to set up the project.

You'll have to wait a bit: the first sync will automatically build openFrameworks. If it doesn't work (Gradle sync still fails), try looking at the Troubleshooting tips bellow.  In some cases, clicking on the error in the console window will take you to a solution, such as installing various versions of the Android SDK.  In some cases, you may have to do this several times to solve several missing dependencies.

<h3>Build and run</h3>

Press the Play button next to the `androidEmptyExample` shown in the toolbar. With any luck, it should build the app, and momentarily deploy it to your Android device (or prompt you to deploy it on a suitable emulator). If the app runs, congratulations! You have setup openFrameworks.

To deploy on your android device you may have to download the appropriate SDK (deppending on your android version). Your device have to be in "Develloper mode", with Usb debug activated.

Creating new projects
--------------------

To create new projects just use the project generator for your platform that you can find in the root folder. For linux you'll need to run

```sh
scripts/android/compileLinuxPG.sh
```

before being able to run the project generator

Troubleshooting
--------------

- If you have an error like this : `Caused by: org.gradle.api.GradleException: You havent set the path to the NDK library. Please set the property 'ndk.dir' in C:\Users\%userprofile%\%path_to_of%\examples\android\%example_name%\local.properties to the root of the NDK library, or go to Project Structure and select the folder.`
	- Click on the link provided by the error, it should open a file.
	- in that file there is probably something a line like `sdk.dir=C\:\\Users\\%username%\\AppData\\Local\\Android\\Sdk` (Windows) 
	- dupplicate this line and change "sdk.dir" in "ndk.dir", and add "\\ndk\\android-ndk-15" at the end. You should have something like that : 						`ndk.dir=C\:\\Users\\%username%\\AppData\\Local\\Android\\Sdk\\ndk\\android-ndk-r15c` 
	- Save the file, close the project and try to open the project again
	(You may have to do this for every example, but once you done it with the "empty android example" it should be fine)

- If the error is asking to, install `Android SDK build tools`. In android studio, no project opened, go to "Configure" > "SDK manager" > "SDK Tools". Check the `Show package details` at the bottom. Install version 25.0.3 of `Android SDK build tools`.

- You may need to adjust the following numbers to match your installed Android Studio and Android SDK. Android Studio should offer to fix these values for you when you open the appropriate build files.

    - The Gradle version specified in `/build.gradle`
    - The `compileSdkVersion`, `buildToolsVersion`, `minSdkVersion`, `targetSdkVersion` values
        in `/addons/ofxAndroid/ofAndroidLib/build.gradle` and `/apps/myApps/androidEmptyExample/build.gradle`

- If you get strange linker errors, check that you are using the 15c version of the NDK. Newer NDKs might work but usually there's some always some fixes that need to be done when moving to a new NDK version.

- If you get make errors on gradle sync without any details, run `chmod +x gradlew; ./gradlew` from within the project folder to build the project from command line, and get more detailed error messages.

- If, when syncronizing a project for the first time, clicking on the console messages does not solves the problem regarding a missing dependency of the android API (like for example Android API 25), open the sdk from the console, select the missing API and install it
