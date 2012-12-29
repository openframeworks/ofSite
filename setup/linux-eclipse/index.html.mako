<%inherit file="/_templates/markdown.mako" />

linux eclipse
=============

**Note**: see the [FAQ](#faq) at the bottom of this page if you're having trouble.

This guide describes how to get started with openframeworks using Eclipse as IDE. This guide was tested on Ubuntu 12.10 64bit installation with Eclipse Juno and git master branch of openframeworks. Eclipse specific steps may apply to other platforms. 

To use it you will need Eclipse for C++ and openframeworks.

Summary
-------
The main steps are:

- Install Eclipse.
- Download openFrameworks either from the download page, or clone from git.
- Create a new project using the projectGenerator tool.
- Import the openFrameworks projects into Eclipse.
- Import the new project into Eclipse.
- Set the new project properties to find referenced source.
- Set the new project build targets to allow debugging.
- Add some code to the new project to check that code complete works.
- Debug the new project to check that debug build works.


Installation
------------

**a) Eclipse**: download the C/C++ edition for your platform from here:

[http://www.eclipse.org/downloads/][11]

![eclipse_cdt_download](eclipse_cdt_download.png)

These instructions currently use Eclipse Juno.

Ubuntu users: If downloading from the repositories, double check that the version of Eclipse is 3.6 or higher.

You will need Java to use Eclipse, you can download it from:

[http://java.com][1]

For Linux, it will probably be in the official repositories. For example, in Ubuntu:

    sudo apt-get install openjdk-6-jdk

or

    sudo apt-get install sun-java6-jdk (this doesn't exist as of Ubuntu 10.10 (Maverick Meerkat))



**b) openFrameworks for linux package**: Download it from the downloads page:

[http://openframeworks.cc/download][4]

You may also check out the openFrameworks source from GitHub (under master branch): [http://github.com/openframeworks/openFrameworks][9]. 

**c) Start Eclipse**: You will see a pop up asking you what workspace to use. Just point it to the default, the openframeworks projects will not end up in this workspace.


**d) Import openFrameworks into Eclipse:** 

Now that Eclipse has been completely configured to work with openFrameworks for Android, the last step is to import all the projects in the workspace. Go to
File \> Import and select General \> Existing projects in the workspace...

![import first screen](import0-600x508.png)

Import in this order:
 
- openFrameworks/libs  
- openFrameworks/libs/openFrameworks  
- openFrameworks/addons/ofxAndroid/ofAndroidLib  
- openFrameworks/examples/android

**e) Compile openFrameworks**:

In the "Project Explorer" on the left side of the window, select the openFrameworks project. Choose the Android target in Project \> Build Configurations \> Set Active, and then click Project \> Build Project. You can also do this from the toolbar by switching to the C/C++ perspective and clicking the toolbar button with a hammer.

![](android-compile-OF.png)

When compiling on OS X I was missing pkg-config. Currently this doesn't seem to affect the build, since these commands were only important in detecting Linux libraries.


**f) Create an External Tools Configuration and use it to install and run projects on the device or emulator**
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


Notes
-----

- Data files should go in bin/data. During the build process everything in bin/data will get compressed to a resource in res/raw and then uncompressed and automatically copied to:  
sdcard/cc.openframeworks.appname 
before running the app.

    If you have resources that change like XML config files, it's better to generate them from the code since uploading them to the phone will overwrite the configuration

- If there's no SD card in the device, examples that have resources won't work right now.

- Naming of resources is really restrictive in Android, for example you cannot have several resources with the same name even if they have different extensions.

- The AndroidDebug target does a different compilation process of the native code that allows it to detect linker errors that won't be detected when compiling in AndroidRelease mode. It is recommended to compile your application in AndroidDebug mode at least once or if your application crashes before starting. When installing applications on the device or emulator it is recommended to use the AndroidRelease mode since it's faster and the applications will be much smaller. There's also no support for debugging NDK applications in Eclipse, but you could theoretically use the NDK tools to debug an application compiled with AndroidDebug.

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

<a id="faq"></a>FAQ
---

**If the build fails:**

- If it tells you that you're using an obsolete build.xml, delete it and regenerate it using 'android update project -p <path-to-project\>'. The build.xml files in the examples directory should not contain anything especially unique.
- Are you including addons? They need to be specified in addons.make, and the case of the letters must match exactly (ie, ofxOpenCv works but ofxOpenCV won't work). This error will probably show up as missing header files or symbols.
- If you're getting a bunch of undeclared reference errors, check which version of the NDK you're using. For 0071 you should be using NDK r8, for 0072 or GIT version r8b is required.
- Paths are changed in NDK r8b: you will maybe have errors like missing "arm-linux-androideabi-gcc" or "arm-linux-androideabi-ar". In those cases go to your NDK folder and do

cd toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86/
cp ./arm-linux-androideabi/bin/ar ./bin/arm-linux-androideabi-ar
cp ./bin/arm-linux-androideabi-gcc-4.6.x-google ./bin/arm-linux-androideabi-gcc

- If you get 'com.android.sdklib.build.ApkCreationException: Debug Certificate expired on <date>', you have to 'rm ~/.android/debug.keystore'. A new certificate will be generated automatically.


**If the build succeeds but the Android Install command doesn't work:**

- If you get a popup saying "Variable references empty selection: $\{project_loc\}", it means you need to select a project in Project Explorer first, before you run the Android Install command.
- If you get a message saying "Activity class ... does not exist.", make sure that its namespace is called cc.openframeworks.your_folder_name_here.OFActivity. This is what the Makefile currently expects. If it does not work even with a correct entry, and you are using an emulator, try using a real device instead.

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
[11]: http://www.eclipse.org/downloads/
[15]: https://github.com/kennethreitz/osx-gcc-installer
