<%inherit file="/_templates/markdown.mako" />

android eclipse
===============

The Android distribution of openFrameworks is based on the Eclipse IDE. The current version of the Android plugin for Eclipse has several problems with projects that mix C++ and Java code, so the projects are currently using a custom toolchain based on makefiles + Ant tasks to compile and install applications. If you are used to Android development in Eclipse, things are a little different. Check the following instructions to know how to install the development environment and compile/install applications.

Right now this is only tested on Linux and OS X. To use it on Windows, check the instructions on this link: [http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/][8]

To use it you will need Eclipse, the Android SDK, the Android NDK, the Android Eclipse plugin and the openFrameworks for Android package.

If you have already installed openFrameworks for Android before, the instructions have changed quite a bit and it's recommended to start from scratch, even with a new install of Eclipse. You should use the latest version of the Android SDK (15). As of Feb 19, 2012 the latest Android NDK (r7b) doesn't work with openFrameworks, but version r6 should work fine.

Summary
-------
These instructions go into a lot of important detail, but the main steps are:

- Install Eclipse, Ant and the Android SDK and NDK.
- If you're using OS X, install the Developer Tools.
- Setup the Android Eclipse plugin.
- Download openFrameworks either from the download page, or clone from git. (If you're developing on OS X, you will need to clone from git.)
- Set path variables so openFrameworks knows where SDK and NDK are.
- Import the openFrameworks projects into Eclipse.
- Compile and install one of the Android openFrameworks examples to confirm that everything works.

Installation
------------

**a) Eclipse**: download the C/C++ edition for your platform from here:

[http://www.eclipse.org/downloads/][11]

![eclipse_cdt_download](eclipse_cdt_download.png)

These instructions currently use Eclipse 3.6, although 3.7 will probably work fine.

Ubuntu users: Don't use the version in the repositories because it is very outdated.

You will need Java to use Eclipse, you can download it from:

[http://java.com][1]

For Linux, it will probably be in the official repositories. For example, in Ubuntu:

    sudo apt-get install openjdk-6-jdk

or

    sudo apt-get install sun-java6-jdk (this doesn't exist as of Ubuntu 10.10 (Maverick Meerkat))

**b) Android SDK**: This is the software that allows you to write Android apps. openFrameworks apps are written in C/C++, but you will still need this to interact with the NDK. You can download it from:

[http://developer.android.com/sdk/index.html][2]

Uncompress it in any folder on your hard disk. Later you'll need to tell the openFrameworks makefiles where to find it.

**c) Android NDK**: This is the C/C++ compiler, headers and libraries for Android. Note that the latest version (r7b) doesn't work yet as of Feb 19, 2012, so you'll need to download an earlier version. Here are the links for r6:

- OS X: [http://dl.google.com/android/ndk/android-ndk-r6-darwin-x86.tar.bz2][12]
- Linux: [http://dl.google.com/android/ndk/android-ndk-r6-linux-x86.tar.bz2][13]
- Windows: [http://dl.google.com/android/ndk/android-ndk-r6-windows.zip][14]

Later versions are available at:  
[http://developer.android.com/sdk/ndk/index.html][3]

There's a bug in the official NDK that makes apps crash on Android 2.1 and lower versions of Android so by now openFrameworks for Android will only work on Android 2.2 and above.

Uncompress this also to any place in your hard disk. We'll tell openFrameworks where to find it later.

**d) openFrameworks for Android package**: Download it from the downloads page:

[http://openframeworks.cc/download][4]

You may also check out the openFrameworks source from GitHub (under master branch): [http://github.com/openframeworks/openFrameworks][9]. 

**Important:** if you're developing on OS X you must use the source in GitHub, since it contains a bug fix which isn't in the current download package (version 007).

**e) Install Ant:**

This build tool is used to build, install and run applications on the Android device from the command line:

- Linux:

    sudo apt-get install ant-1.8

or for newer distributions:

    sudo apt-get install ant

- OS X:

Download and uncompress Apache Ant 1.8 or greater from [http://ant.apache.org/bindownload.cgi][5]

**For OSX:**

Certain build tools like make might not be installed by default. To install these you can either:

- Download and install Xcode. It's provided in the Mac App store, among other places.
- Or, just download the build tools separately. They were repackaged and are hosted on GitHub: [https://github.com/kennethreitz/osx-gcc-installer][15]
    There are pkg files you can install for OS X 10.6 and 10.7. Note that this bundle doesn't include pkg-config, and errors may show up because it is missing, but you can ignore these.

**f) Set the paths for the SDK, NDK and Ant  
**

Edit this file:

    openFrameworks/libs/openFrameworksCompiled/project/android/paths.make

This will tell openFrameworks where to find the SDK, NDK and Ant.

- Set the values of SDK_ROOT and NDK_ROOT to their install paths

- Set ANT_HOME:
-- Linux: /usr  
-- OS X: Set it to the folder where you uncompressed Ant before.

**g) Start Eclipse**: You will see a pop up asking you what workspace to use. Just point it to:
openFrameworks/apps/androidExamples.

**h) Android Eclipse plugin**:

There's detailed instructions here: [http://developer.android.com/sdk/eclipse-adt.html][6]  

To install it, inside Eclipse go to
Help \> Install New Software...

![eclipse plugins](eclipse_android_plugin0-600x522.png)

Click 'Add...' and enter the following info:

Name: Android SDK  
Location: https://dl-ssl.google.com/android/eclipse/

![android eclipse plugin info](eclipse-plugin1.png)

Press 'OK' and select the new repository in the "Work with:" drop down box in case it's not already selected.

You will see the SDK plugin in the list called "Developer Tools":

![eclipse_android_plugin2](eclipse_android_plugin2-600x522.png)

Select it and press 'Next' until you get to the "Review Licenses" screen. Check the "I accept the terms of the license" checkbox and press 'Finish'. Eclipse will download and install the Android plugin. Once it finishes press 'Yes' in the popup to restart Eclipse.

**i) Set Eclipse Java compiler compliance to 1.5:**

*Note:* I didn't need to do this step for SDK version 15.

In the last version of Eclipse the Java compatibility is set to version 6 but Android needs version 5. You can change this in Window \> Preferences \> Java \> Compiler. (Preferences is in the Eclipse menu for OS X.) 

The compiler compliance settings should be set to 1.5\.

![](java_compiler_preferences-600x437.png)



**j) Configuring the Android plugin**: 

Once we have installed the Android plugin we need to tell it where to find the SDK. In Eclipse go to Window \> Preferences \> Android (or Eclipse \> Preferences for OS X) and set the SDK location by browsing to the folder where you uncompressed the SDK before.

![android_prefs](android_prefs-600x449.png)

  


Now Eclipse knows where the SDK is.

Next you'll need to install the API files and optionally create an emulator to be able to test programs without uploading to the phone. Press the Android button in the Eclipse toolbar, or go to Window \> Android SDK Manager:

![android_button](android_button.png)

First you need to install the API package. Just click on the "Available Packages" tab, and choose the SDK Platform version 2.2 + the SDK platform tools, it's important to use version 2.2 since the makefiles are configured for that version. It doesn't matter what version of the OS you want to develop for. You can optionally install other versions and change the makefile to use that instead.

Once that is done you can create a new virtual device (AVD). Just select a name, the target Android version and a size for the virtual SD card.

**k) Import openFrameworks into Eclipse:** 

Now that Eclipse has been completely configured to work with openFrameworks for Android, the last step is to import all the projects in the workspace. Go to
File \> Import and select General \> Existing projects in the workspace...

![import first screen](import0-600x508.png)

Import in this order:
 
- openFrameworks/libs  
- openFrameworks/libs/openFrameworks  
- openFrameworks/addons/ofxAndroid/ofAndroidLib  
- openFrameworks/apps/androidExamples

**l) Compile openFrameworks**:

In the "Project Explorer" on the left side of the window, select the openFrameworks project. Choose the Android target in Project \> Build Configurations \> Set Active, and then click Project \> Build Project. You can also do this from the toolbar by switching to the C/C++ perspective and clicking the toolbar button with a hammer.

![](android-compile-OF.png)

When compiling on OS X I was missing pkg-config. Currently this doesn't seem to affect the build, since these commands were only important in detecting Linux libraries.

**m) Enable development in your device:**
Enable USB debugging: Settings \> Applications \> Development \> USB Debug
(The device needs to be disconnected from the computer while you do this.)

**n) Connect the device now:**

If you attempt to run your project and you don't have a device attached, Eclipse will start the Android emulator for you.

**Linux users**: adb needs permissions to access the USB device, follow the instructions here to fix your device permissions:

[http://developer.android.com/guide/developing/device.html][7]

**o) Create an External Tools Configuration and use it to install and run projects on the device or emulator**
Run \> External Tools \> External Tools Configuration
![](android-external-tools1.png)

Select 'Program' and press New. Name the new configuration: Android Install Main:

<%text filter="h">
    Location: /usr/bin/make 
    
    Working Directory: ${project_loc} 
    
    Arguments: AndroidInstall PROJECT_PATH=${project_loc}
    
    Refresh:
    Mark Refresh resources upon completion  
    Select The selected resource
    
    Build:
    Mark Build before launch  
    Select The project containing the selected resource  
    Mark Include referenced projects
</%text>


Press Apply and Close.

![](Screenshot-External-Tools-Configurations--600x561.png)

**p) Now install and run an example project on the device:**

- Connect the device.
- Check that it is being detected and restart adb server if necessary.
- Select the AndroidRelease target. You can pick a target at Project \> Build Configurations \> Set Active. 

![](android-compile-example.png)

- Press the play button in the toolbar or Run \> External Tools \> Android Install.

![](toolbox-button.png)

**Note:** If you get an error about an obsolete build.xml, you can safely delete the build.xml file and recreate it using 'android update project'. (The 'android' tool is at SDK_DIR/tools/android.) You may also need to do this for openFrameworks/addons/ofxAndroid/ofAndroidLib.

If everything went OK, the example should start on the device.

Notes
-----

- Data files should go in bin/data. During the build process everything in bin/data will get compressed to a resource in res/raw and then uncompressed and automatically copied to:  
sdcard/cc.openframeworks.appname 
before running the app.

    If you have resources that change like XML config files, it's better to generate them from the code since uploading them to the phone will overwrite the configuration

- If there's no SD card in the device, examples that have resources won't work right now.

- Naming of resources is really restrictive in Android, for example you cannot have several resources with the same name even if they have different extensions.

- The AndroidDebug target does a different compilation process of the native code that allows it to detect linker errors that won't be detected when compiling in AndroidRelease mode. It is recomended to compile your application in AndroidDebug mode at least once or if your application crashes before starting. When installing applications on the device or emulator it is recommended to use the AndroidRelease mode since it's faster and the applications will be much smaller. There's also no support for debugging NDK applications in Eclipse, but you could theoretically use the NDK tools to debug an application compiled with AndroidDebug.

- Test your application very often. Even if the last NDK allows for debugging, there's no support for native debugging in Eclipse and setting it up manually with the NDK is pretty hard. When an application crashes the debugger dies too, so it's hard to debug bad memory accesses and similar bugs.

- Use the LogCat view in Eclipse. When programming for Android you cannot see the output of cout or printf, but if you use [ofLog][10] you can see its output in the LogCat. To open the view, go to
Window \> Show View \> Others \> Android \> LogCat

![showviewlogcat](showviewlogcat.png)

You can see the output of the compiler in the Console tab and the output of your app in the LogCat one. Everything that is output by openFrameworks through ofLog will have an openFrameworks tag so you can use filters to see only your application's output.

There's a bug in the Android plugin that makes Eclipse to build every C/C++ project in your workspace before running any app, so try to keep your workspaces small. You can have as many workspaces as you want:

- Create a folder inside openFrameworks/apps.

- Open Eclipse and tell it to use this new folder as a workspace. Do the import steps again for the new folder, including openFrameworks, libs, addons but instead of importing all the examples, import only androidEmptyExample to have a template for your new projects.

Creating new applications
-------------------------

You can copy any of the examples and start a new application from there. It's currently far more difficult to create a project from scratch, since the makefiles and project settings contain a lot of details you would need to duplicate.

You'll need to change the name of the application in different places:

- When you copy the application from an example set the name you want to use. Let's say your application is called myApp. This must also be the name of your folder.
- In res/values/strings.xml change app_name value to the name of your application.
- In AndroidManifest.xml change the name of the package from cc.openframeworks.exampleName to cc.openframeworks.myApp  
- in srcJava, select the package cc.openframeworks.exampleName, press F2 to rename it and call it cc.openframeworks.myApp

It's important to keep the package prefix as cc.openframeworks or some things can stop working. This will be fixed in future versions when Eclipse support for native code is better.

FAQ
---

**If the build fails:**

- If it tells you that you're using an obsolete build.xml, delete it and regenerate it using 'android update project'. The build.xml files in the examples directory should not contain anything especially unique.
- Are you including addons? They need to be specified in addons.make, and the case of the letters must match exactly (ie, ofxOpenCv works but ofxOpenCV won't work). This error will probably show up as missing header files or symbols.
- If you're getting a bunch of undeclared reference errors, check which version of the NDK you're using. As of Feb 19, 2012 version r7 does not work yet. You'll need to use an earlier version, like version r6 or r5b. The error messages should look similar to this:


        ../../../openFrameworks/gl/ofFbo.cpp:503: error: 'glFramebufferTexture2DOES' was not declared in this scope
        ../../../openFrameworks/gl/ofFbo.cpp: In member function 'void ofFbo::bind()':
        ../../../openFrameworks/gl/ofFbo.cpp:543: error: 'glBindFramebufferOES' was not declared in this scope
        ../../../openFrameworks/gl/ofFbo.cpp: In member function 'void ofFbo::unbind()':
        ../../../openFrameworks/gl/ofFbo.cpp:551: error: 'glBindFramebufferOES' was not declared in this scope
        ../../../openFrameworks/gl/ofFbo.cpp: In member function 'bool ofFbo::checkStatus()':
        ../../../openFrameworks/gl/ofFbo.cpp:690: error: 'glCheckFramebufferStatusOES' was not declared in this scope


**If the build succeeds but the Android Install command doesn't work:**

- If you get a popup saying "Variable references empty selection: $\{project_loc\}", it means you need to select a project in Project Explorer first, before you run the Android Install command.
- If you get a message saying "Activity class ... does not exist.", make sure that its namespace is called cc.openframeworks.your_folder_name_here.OFActivity. This is what the Makefile currently expects.

**If the build succeeds but your app crashes:**

- Check the libs folder. It should be populated with a library during the build. On Linux it is a file that ends with .so. If there is no library, the C++ build process is probably failing somewhere, or it is not being triggered at all. You can test the C++ build process separately using 'make AndroidDebug'. You may also see something like this in your LogCat:


        E/AndroidRuntime(20743): Caused by: java.lang.UnsatisfiedLinkError: Couldn't load OFAndroidApp: findLibrary returned null
        E/AndroidRuntime(20743): 	at java.lang.Runtime.loadLibrary(Runtime.java:425)
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
[5]: http://ant.apache.org/bindownload.cgi
[6]: http://developer.android.com/sdk/eclipse-adt.html
[7]: http://developer.android.com/guide/developing/device.html
[8]: http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/
[9]: http://github.com/openframeworks/openFrameworks
[10]: http://www.undef.ch/uploads/ofDoc/html/classof_log.html
[11]: http://www.eclipse.org/downloads/
[12]: http://dl.google.com/android/ndk/android-ndk-r6-darwin-x86.tar.bz2
[13]: http://dl.google.com/android/ndk/android-ndk-r6-linux-x86.tar.bz2
[14]: http://dl.google.com/android/ndk/android-ndk-r6-windows.zip
[15]: https://github.com/kennethreitz/osx-gcc-installer
