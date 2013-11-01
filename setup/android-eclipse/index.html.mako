## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

android ADT
===============

**Note**: see the [FAQ](#faq) at the bottom of this page if you're having trouble.

Right now this is only tested on Linux and OS X. To use it on Windows, check the instructions on this link: [http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/][8]

To use it you will need the Android ADT (android's version of eclipse + the android SDK), the Android NDK and the openFrameworks for Android package.

Because of the custom build system openFrameworks uses for Android, you may need to use the exact version of the NDK specified here. For 0.8.0 you can use NDK r8d or r9b if you are using latest for master or follow the instructions in section b about how to setup the android NDK. Later versions will probably work but it's not guaranteed.

Summary
-------
These instructions go into a lot of important detail, but the main steps are:

- Install ADT and NDK.
- If you're using OS X, install the Developer Tools.
- Download openFrameworks either from the download page, or clone from git.
- Set path variables so openFrameworks knows where SDK and NDK are.
- Import the openFrameworks projects into ADT.
- Compile and install one of the Android openFrameworks examples to confirm that everything works.

Installation
------------

**a) ADT**: download ADT for your platform from here:

[http://developer.android.com/sdk/index.html](http://developer.android.com/sdk/index.html)

You will need Java to use ADT, you can download it from:

[http://java.com][1]

For Linux, it will probably be in the official repositories. For example, in Ubuntu:

    sudo apt-get install openjdk-6-jdk

or

    sudo apt-get install oracle-java6-installer


**b) Android NDK**: This is the C/C++ compiler, headers and libraries for Android. 

- OS X: [http://dl.google.com/android/ndk/android-ndk-r8d-darwin-x86.tar.bz2][12]
- Linux: [http://dl.google.com/android/ndk/android-ndk-r8d-linux-x86.tar.bz2][13]
- Windows: [http://dl.google.com/android/ndk/android-ndk-r8d-windows.zip][14]


0.8.0 has been tested and works with ndk r9b but you'll need to modify libs/openFrameworksCompiled/project/android/config.android.default.mk and change line 22 to:

GCC_VERSION = 4.8

NDK r9b can be downloaded from:

- OS X: [http://dl.google.com/android/ndk/android-ndk-r9b-darwin-x86_64.tar.bz2](http://dl.google.com/android/ndk/android-ndk-r9b-darwin-x86_64.tar.bz2)
- Linux 32bit: [http://dl.google.com/android/ndk/android-ndk-r9b-linux-x86.tar.bz2](http://dl.google.com/android/ndk/android-ndk-r9b-linux-x86.tar.bz2)
- Linux 64bit: [http://dl.google.com/android/ndk/android-ndk-r9b-linux-x86_64.tar.bz2](http://dl.google.com/android/ndk/android-ndk-r9b-linux-x86_64.tar.bz2)
- Windows 32bit: [http://dl.google.com/android/ndk/android-ndk-r9b-windows-x86.zip](http://dl.google.com/android/ndk/android-ndk-r9b-windows-x86.zip)
- Windows 64bit: [http://dl.google.com/android/ndk/android-ndk-r9b-windows-x86_64.zip](http://dl.google.com/android/ndk/android-ndk-r9b-windows-x86_64.zip)

Later versions might be available here, but we recommend using r9b for now: 
[http://developer.android.com/sdk/ndk/index.html][3]

Uncompress this also to any place in your hard disk. We'll tell openFrameworks where to find it later.

**c) openFrameworks for Android package**: Download it from the downloads page:

[http://openframeworks.cc/download][4]


** d) Install developer tools - (OS X only):

Certain build tools like make might not be installed by default. To install these you can either:

- Download and install Xcode. It's provided in the Mac App store, among other places.
- Or, just download the build tools separately. They were repackaged and are hosted on GitHub: [https://github.com/kennethreitz/osx-gcc-installer][15]
    There are pkg files you can install for OS X 10.6 and 10.7. Note that this bundle doesn't include pkg-config, and errors may show up because it is missing, but you can ignore these.

**f) Set the paths for the SDK, NDK:**

Edit this file:

    openFrameworks/libs/openFrameworksCompiled/project/android/paths.make

This will tell openFrameworks where to find the SDK and NDK.
If you don't have this file yet, create it from the paths.make.default template in the same directory.

- Set the values of SDK_ROOT and NDK_ROOT to their install paths, the android SDK is located inside the folder where you uncompressed the ADT

- You can ignore the ANT path it was necesary in previous versions but it's not needed anymore

**g) Start ADT**: You will see a pop up asking you what workspace to use. Just point it to:
openFrameworks/examples/android.


**h) Set ADT Java compiler compliance to 1.6:**

Depending on the version of Java that you have installed this setting can be wrong. You can check this in Window \> Preferences \> Java \> Compiler. (Preferences is in the ADT menu for OS X.) 

The compiler compliance settings should be set to 1.6\.

![](java_compiler_preferences_1_6.png)


**i) Import openFrameworks into ADT:** 

Now that ADT has been completely configured to work with openFrameworks for Android, the last step is to import all the projects in the workspace. Go to
File \> Import and select General \> Existing projects in the workspace...

![import first screen](import0-600x508.png)


Import in this order:

Please note you should not mark "Copy projects into workshpace" on the import screen as this will cause problems building a project.

- openFrameworks/libs  
- openFrameworks/libs/openFrameworks  
- openFrameworks/addons/ofxAndroid/ofAndroidLib  
- openFrameworks/examples/android

If you get a red exclamation mark on the examples and ofAndroidLib, it's usually because the version of the sdk you are using is newer than the one OF was created with, just open the properties of each project by doing right click on it in the project explorer, go to the android section and mark the android version that your adt comes with. After doing this change the exclamation mark should disappear, if after some seconds it doesn't go in the problems view in the bottom part of the ADT window, select all the problems and remove them.

**j) Compile openFrameworks**:

In the "Project Explorer" on the left side of the window, select the openFrameworks project. Choose the Android target in Project \> Build Configurations \> Set Active, and then click Project \> Build Project. You can also do this from the toolbar by switching to the C/C++ perspective and clicking the toolbar button with a hammer.

![](android-compile-OF.png)

In OS X if you see pkg-config related errors you can ignore them safely.

**k) Enable development in your device:**
Enable USB debugging: Settings \> Applications \> Development \> USB Debug (On Ice Cream Sandwich, this is in Settings \> Developer options \> USB Debugging). The device needs to be disconnected from the computer while you do this.

**l) Connect the device now:**

If you attempt to run your project and you don't have a device attached, Eclipse will start the Android emulator for you.

**Linux users**: adb needs permissions to access the USB device, follow the instructions here to fix your device permissions:

[http://developer.android.com/guide/developing/device.html][7]

**m) Now install and run an example project on the device:**

- Connect the device.
- Check that it is being detected and restart adb server if necessary.
- Select the AndroidRelease target. You can pick a target at Project \> Build Configurations \> Set Active. 

![](android-compile-example.png)

- Make sure you have your project selected and press the play button in the toolbar or Run \> Run As \> Android Application.

![](run-button.png)

**Note:** If you get an error about an obsolete build.xml (or connected with that file), you can safely delete the build.xml file and recreate it using 'android update project -p <path-to-project\>'. (The 'android' tool is at SDK_DIR/tools/android.) You may also need to do this for openFrameworks/addons/ofxAndroid/ofAndroidLib.

If everything went OK, the example should start on the device.

Notes
-----

- Data files should go in bin/data. During the build process everything in bin/data will get compressed to a resource in res/raw and then uncompressed and automatically copied to:  
sdcard/cc.openframeworks.appname when the app runs for the first time or is updated.

    If you have resources that change like XML config files, it's better to generate them from the code since uploading them to the phone will overwrite the configuration

- If there's no SD card in the device, examples that have resources won't work right now.

- Test your application very often. Even if the last NDK allows for debugging, the support for native debugging in ADT is buggy.

- Use the LogCat view in ADT. When programming for Android you cannot see the output of cout or printf, but if you use [ofLog][10] you can see its output in the LogCat. To open the view, go to
Window \> Show View \> Others \> Android \> LogCat

![showviewlogcat](showviewlogcat.png)

You can see the output of the compiler in the Console tab and the output of your app in the LogCat one. Everything that is output by openFrameworks through ofLog will have an openFrameworks tag so you can use filters to see only your application's output.

There's a bug in the Android plugin that makes ADT build every C/C++ project in your workspace before running any app. You can avoid this by closing projects that you're not currently working on (right-click > Close Project).

Alternatively, you can create a separate workspace for your apps:

- Create a folder inside openFrameworks/apps.

- Open ADT and tell it to use this new folder as a workspace. Do the import steps again for the new folder, including openFrameworks, libs, addons but instead of importing all the examples, import only androidEmptyExample to have a template for your new projects.

Creating new applications
-------------------------

You can copy any of the examples and start a new application from there. It's currently far more difficult to create a project from scratch, since the makefiles and project settings contain a lot of details you would need to duplicate.

In ADT this is easily done by right-clicking on an existing project, selecting Copy, then right-clicking on the workspace and selecting Paste. A small Copy Project window will pop up for you to pick a new project name and location. For now, project name and directory must have the same name. Let's say your application is called "myNewAndroidApp", this must also be the name of your folder.

After you're done copying the project, you'll need to change the name of the application in different places:

- In res/values/strings.xml change app_name value to the name of your application (myNewAndroidApp, for example).
- In AndroidManifest.xml change the name of the package from cc.openframeworks.exampleName to cc.openframeworks.myNewAndroidApp  
- In srcJava, select the package cc.openframeworks.exampleName, press F2 to rename it and call it cc.openframeworks.myNewAndroidApp
- You might also have to open OFActivity.java inside srcJava/cc/openframeworks/myNewAndroidApp and change cc.openframeworks.exampleName to cc.openframeworks.myNewAndroidApp in the first line. Sometimes ADT does this automatically, sometimes it doesn't...

It's important to keep the package prefix as cc.openframeworks or some things can stop working. This will be fixed in future versions.

<a id="faq"></a>FAQ
---

**If the build fails:**

- If it tells you that you're using an obsolete build.xml, delete it and regenerate it using 'android update project -p <path-to-project\>'. The build.xml files in the examples directory should not contain anything especially unique.
- If ADT complains about missing gen/ directories on a project, switch to the Java perspective (Window \> Open Perspective \> Other... \> Java), select the project and clean it (Project \> Clean...). It should re-build itself automatically and generate a gen/ directory (make sure Project \> Build Automatically is enabled).
- Are you including addons? They need to be specified in addons.make, and the case of the letters must match exactly (ie, ofxOpenCv works but ofxOpenCV won't work). This error will probably show up as missing header files or symbols.
- If you're getting a bunch of undeclared reference errors, check which version of the NDK you're using. For this version you should be using NDK r8d.
- If you get 'com.android.sdklib.build.ApkCreationException: Debug Certificate expired on <date>', you have to 'rm ~/.android/debug.keystore'. A new certificate will be generated automatically.



**If the build succeeds but the Android Install command doesn't work:**

- Make sure you have your project selected in the Project Explorer before you tell it to run as an Android Application.
- If you get a message saying "Activity class ... does not exist.", make sure that its namespace is called cc.openframeworks.your_folder_name_here.OFActivity. This is what the Makefile currently expects. If it does not work even with a correct entry, and you are using an emulator, try using a real device instead.
- If the name of the class is correct, go to the problems view at the bottom of the ADT window, select all the errors and delete them, then try to run the application again.
- If the OFActivity not fount error appears in the logcat view when trying to run the application, try restarting ADT. This errors happen sometimes when the application is run for the first time but shouldn't happen afterwards.

**If you can't debug**

- If you get a message saying something like "List of devices attached ???????????? no permissions" when you try to debug, you may need to manually restart the adb server:

$ sudo ./adb kill-server
$ sudo ./adb start-server


**If the build succeeds but your app crashes:**

- Check the libs folder. It should be populated with a library during the build. On Linux it is a file that ends with .so. If there is no library, the C++ build process is probably failing somewhere, or it is not being triggered at all. You can test the C++ build process separately using 'make AndroidDebug'. You may also see something like this in your LogCat:


        E/AndroidRuntime(20743): Caused by: java.lang.UnsatisfiedLinkError: Couldn't load OFAndroidApp: findLibrary returned null
        E/AndroidRuntime(20743):     at java.lang.Runtime.loadLibrary(Runtime.java:425)
        E/AndroidRuntime(20743): 	at java.lang.System.loadLibrary(System.java:554)
        E/AndroidRuntime(20743): 	at cc.openframeworks.OFAndroid.<clinit>(OFAndroid.java:535)
        E/AndroidRuntime(20743): 	... 14 more


- The device must have an SD card if you use resources in your openFrameworks app. Note that some devices have an internal SD card, like the Galaxy Tab 10.1.
- Make sure you've declared the appropriate permissions in AndroidManifest.xml (for instance, android.permission.CAMERA for cameras and android.permission.WRITE_EXTERNAL to interact with the SD card, which is necessary if you have resources.)
- Was bin/data accidentally erased by something or other? Does res/raw/your_project_name_resources.zip exist, and does it contain your resources?


[1]: http://java.com
[2]: http://developer.android.com/sdk/index.html
[3]: http://developer.android.com/sdk/ndk/index.html
[4]: http://openframeworks.cc/download
[5]: http://ant.apache.org/bin/download.cgi
[6]: http://developer.android.com/sdk/eclipse-adt.html
[7]: http://developer.android.com/guide/developing/device.html
[8]: http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/
[9]: http://github.com/openframeworks/openFrameworks
[10]: http://www.undef.ch/uploads/ofDoc/html/classof_log.html
[11]: http://www.eclipse.org/downloads/packages/eclipse-ide-cc-developers/junosr1
[12]: http://dl.google.com/android/ndk/android-ndk-r8d-darwin-x86.tar.bz2
[13]: http://dl.google.com/android/ndk/android-ndk-r8d-linux-x86.tar.bz2
[14]: http://dl.google.com/android/ndk/android-ndk-r8d-windows.zip
[15]: https://github.com/kennethreitz/osx-gcc-installer
