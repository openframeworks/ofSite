<%inherit file="/_templates/html.mako" />
<h1>openframeworks &#8212; android eclipse</h1>
<p>The Android distribution of openFrameworks is based on the Eclipse IDE, the current version of the Android plugin for eclipse has several problems with projects that mix c++ and java code so the projects are currently using a custom toolchain based on makefiles + ant tasks to compile and install applications. If you are used<br />
to android development in eclipse, things are a little different check the following instructions to know how to<br />
install the development environment and compile/install applications.</p>
<p>Right now this is only tested on linux and osx to use it on windows check the instruction on this link: http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/</p>
<p>To use it you will need Eclipse, the Android SDK, the Android NDK, the Android Eclipse plugin and the openFrameworks Android package.</p>
<p>If you have already installed OF for android before, this instructions have changed quite a bit and it&#8217;s recommended to start from scratch, even with a new install of Eclipse and it&#8217;s mandatory to use the latest versions of the Android SDK (10) and NDK (r5b)</p>
<p><strong>a) Eclipse</strong>: download the C/C++ edition for your platform from here:</p>
<p style="padding-left: 30px;"><a href="http://www.eclipse.org/downloads/">http://www.eclipse.org/downloads/</a></p>
<p style="padding-left: 30px;"><img class="alignnone size-full wp-image-1052" title="eclipse_cdt_download" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/eclipse_cdt_download.png" alt="eclipse_cdt_download" width="738" height="72" /></p>
<p style="padding-left: 30px;">Ubuntu users: don&#8217;t use the version in the repositories is very outdated.</p>
<p style="padding-left: 30px;">Eclipse doesn&#8217;t have any install, but you will need Java to use it, in case you don&#8217;t have Java installed in your system, you can download it from:</p>
<p style="padding-left: 30px;"><a href="http://java.com">http://java.com</a></p>
<p style="padding-left: 30px;">in the case of Linux it will be in the official repositories, for example in Ubuntu:</p>
<pre style="padding-left: 60px;">sudo apt-get install openjdk-6-jdk</pre>
<p style="padding-left: 60px;">or</p>
<pre style="padding-left: 60px;">sudo apt-get install sun-java6-jdk (this doesn't exist from maverick)</pre>
<p><strong>b) Andorid SDK</strong>:  this is the software that allows to develop in Java for Android, even if we are going to program in C/C++ we&#8217;ll need it. You can download it from:</p>
<p style="padding-left: 30px;"><a href=" http://developer.android.com/sdk/index.html">http://developer.android.com/sdk/index.html</a></p>
<p style="padding-left: 30px;">uncompress it in any folder on your hard disk, later you&#8217;ll need to tell the OF makefiles where to find it.</p>
<p><strong>c) Android NDK</strong>: this is the c/c++ compiler, headers and libraries for android. Download it from:<br />
<a href="http://developer.android.com/sdk/ndk/index.html">http://developer.android.com/sdk/ndk/index.html</a></p>
<p>There&#8217;s a bug in the official ndk that makes apps crash on 2.1 and lower versions of Android so by now OF android will only work in 2.2 and above</p>
<p style="padding-left: 30px;">Also uncompress it to any place in your hd we&#8217;ll tell later OF where to find it.</p>
<p><strong>d) openFrameworks for Android package</strong>: download it from the downloads page:</p>
<p style="padding-left: 30px;"><a href="http://openframeworks.cc/download">http://openframeworks.cc/download</a></p>
<p><strong>e) Install ant:</strong></p>
<p style="padding-left: 30px;">This tool is used internally by Eclipse and the Android tools to set projects, the current OF distribution uses it to install and run things in the phone &#8220;manually&#8221;</p>
<p style="padding-left: 60px;">- Linux:</p>
<pre style="padding-left: 90px;">sudo apt-get install ant-1.8</pre>
<p style="padding-left: 60px;">or for newer distributions:</p>
<pre style="padding-left: 90px;">sudo apt-get install ant</pre>
<p style="padding-left: 60px;">- OSX:</p>
<p style="padding-left: 90px;">download and uncompress 1.8 or greater from <a href="http://ant.apache.org/bindownload.cgi">http://ant.apache.org/bindownload.cgi</a></p>
<p><strong>f) Set the paths of the SDK, NDK and ant<br />
</strong></p>
<p style="padding-left: 30px;">Edit:</p>
<pre style="padding-left: 30px;">OF/libs/openFrameworksCompiled/project/android/paths.make</pre>
<p style="padding-left: 30px;">this will tell OF where to find the sdk, ndk and ant</p>
<p style="padding-left: 30px;">- set paths of sdk &amp; ndk to the uncompressed folders</p>
<p style="padding-left: 30px;">- set ANT_HOME:</p>
<address style="padding-left: 60px;">Linux: /usr<br />
OSX: set it to the folder where you uncompressed ant before</address>
<p><strong>g) Start eclipse</strong>: you will see a pop up telling what workspace to use, the first time it will create the needed files. just point it to</p>
<address style="padding-left: 30px;">openFrameworks/apps/androidExamples.</address>
<p><strong>h) Android Eclipse plugin</strong>:</p>
<p style="padding-left: 30px;">There&#8217;s detailed instructions here:	<a href="http://developer.android.com/sdk/eclipse-adt.html">http://developer.android.com/sdk/eclipse-adt.html</a><br />
To install it, inside Eclipse go to</p>
<address style="padding-left: 30px;">Help &gt; Install new software&#8230;</address>
<address style="padding-left: 30px;"></address>
<p style="padding-left: 30px;"><img class="alignnone size-large wp-image-1046" title="eclipse plugins" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/eclipse_android_plugin0-600x522.png" alt="eclipse plugins" width="600" height="522" /></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;">press add&#8230;  and enter the following info:</p>
<address style="padding-left: 30px;">Name: Android SDK<br />
Location: https://dl-ssl.google.com/android/eclipse/</address>
<address style="padding-left: 30px;"></address>
<p style="padding-left: 30px;"><img class="alignnone size-full wp-image-1048" title="android eclipse plugin info" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/eclipse-plugin1.png" alt="android eclipse plugin info" width="547" height="169" /></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;">press OK and select the new repository in the &#8220;Work with:&#8221; drop down box in case it&#8217;s not already selected</p>
<p style="padding-left: 30px;">you will see the sdk plugin in the list, called Developer Tools:</p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><img class="alignnone size-large wp-image-1060" title="eclipse_android_plugin2" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/eclipse_android_plugin2-600x522.png" alt="eclipse_android_plugin2" width="600" height="522" /></p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;">select it and press next till you get to the terms of the license screen, check the &#8220;I accept the terms of the license&#8221; check button and press Finish. Eclipse will download and install the Android plugin. Once it finishes press yes in the popup to restart Eclipse.</p>
<p><strong>i) Set eclipse java compiler compliance to 1.5:</strong></p>
<p style="padding-left: 30px;">In the last version of Eclipse the java compatibility is set to version 6 but android needs version 5. to change it, in</p>
<address style="padding-left: 30px;">Window &gt; Preferences &gt; Java &gt; Compiler </address>
<p style="padding-left: 30px;">The compiler compliance settings should be set to 1.5.</p>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-large wp-image-1104" title="java_compiler_preferences" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/java_compiler_preferences-600x437.png" alt="" width="600" height="437" /></strong></strong></p>
<p style="padding-left: 30px;"><strong><strong><br />
</strong></strong></p>
<p><strong><strong><strong>j) Configuring the Android plugin</strong>: </strong></strong></p>
<p style="padding-left: 30px;"><strong><strong> </strong></strong>Once we have installed the android plugin we need to tell it where to find the sdk. In eclipse go to</p>
<address style="padding-left: 30px;">Window &gt; Preferences &gt; Android </address>
<p style="padding-left: 30px;">and set the SDK location by browsing to the folder where you uncompressed the SDK before.</p>
<p style="padding-left: 30px;">&nbsp;</p>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-large wp-image-1064" title="android_prefs" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/android_prefs-600x449.png" alt="android_prefs" width="600" height="449" /></strong></strong></p>
<p style="padding-left: 30px;"><strong><strong><br />
</strong></strong></p>
<p style="padding-left: 30px;">Now Eclipse knows where the SDK is.</p>
<p style="padding-left: 30px;">Next you&#8217;ll need to install the api files and optionally create an emulator to be able to test programs without uploading to the phone. Press the Android button in the Eclipse toolbar:</p>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-full wp-image-1066" title="android_button" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/android_button.png" alt="android_button" width="50" height="41" /></strong></strong></p>
<p style="padding-left: 30px;">First you need to install the api package. Just click on the  &#8220;Available Packages&#8221; tab, and choose the SDK Platform for version 2.2 +  the sdk platform tools, it&#8217;s important to use version 2.2 since the makefiles are configured for that version, it doesn&#8217;t matter what version of the OS you want to develop for. You can optionally install other versions and change the makefile to use that instead.</p>
<p style="padding-left: 30px;">Once that is done you can create a new virtual device. Just select a name, the target and a size for the virtual sd-card.</p>
<p><strong><strong><strong>k) Import openFrameworks into Eclipse:</strong> </strong></strong></p>
<p style="padding-left: 30px;">Now Eclipse has been completely configured to work with OF for Android, the last step is to import all the projects in the workspace. Go to</p>
<address style="padding-left: 30px;">File &gt; Import and select General &gt; Existing projects in the workspace&#8230;</address>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-large wp-image-1075" title="import first screen" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/import0-600x508.png" alt="import first screen" width="600" height="508" /></strong></strong></p>
<p style="padding-left: 30px;">Import in this order:   <strong><strong> </strong></strong></p>
<address style="padding-left: 60px;">OF/libs<br />
OF/libs/openFrameworks<br />
OF/addons/ofxAndroid/ofAndroidLib<br />
OF/apps/androidExamples</address>
<p><strong><strong><strong>l) Compile OF</strong>: </strong></strong></p>
<p style="padding-left: 30px;">In the left part of the window, select the openFrameworks project and from the toolbar or the menu build the Android target.</p>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-full wp-image-1152" title="android-compile-OF" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/android-compile-OF.png" alt="" width="600" height="496" /></strong></strong></p>
<p><strong><strong><strong>m) Enable development in your device: </strong></strong></strong></p>
<address style="padding-left: 30px;">Adjustments &gt; Applications &gt; Development &gt; USB Debug (the device  needs to be disconnected from the computer)</address>
<p><strong><strong><strong>n) Connect the device now:</strong></strong></strong></p>
<p style="padding-left: 30px;">If you don&#8217;t have a device eclipse will start the emulator for you<br />
<strong>Linux users</strong>: adb needs permissions to access the usb device, follow the instructions here to fix your device permissions:</p>
<p style="padding-left: 30px;"><a href="http://developer.android.com/guide/developing/device.html">http://developer.android.com/guide/developing/device.html</a></p>
<p><strong><strong><strong>o) Create an install external tool and use it to install and run projects on the device or emulator</strong></strong></strong></p>
<address style="padding-left: 30px;">Run &gt; External Tools &gt; External Tools Configuration</address>
<address style="padding-left: 30px;"></address>
<address style="padding-left: 30px;"></address>
<address style="padding-left: 30px;"></address>
<address style="padding-left: 30px;"><img class="alignnone size-full wp-image-1154" title="android-external-tools" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/android-external-tools1.png" alt="" width="600" height="506" /></address>
<p style="padding-left: 30px;">Select program and press New, name the new configuration: Android Install<br />
Main:</p>
<%text filter="h">
<address style="padding-left: 60px;">Location: /usr/bin/make<br />
Working Directory: ${project_loc}<br />
Arguments: AndroidInstall PROJECT_PATH=${project_loc}</address>
</%text>
<p style="padding-left: 30px;">Refresh:</p>
<address style="padding-left: 60px;">Mark Refresh resources upon completion<br />
Select The selected resource</address>
<p style="padding-left: 30px;">Build:</p>
<address style="padding-left: 60px;">Mark Build before launch<br />
Select The project containing the selected resource<br />
Mark Include referenced projects</address>
<p style="padding-left: 30px;">Press Apply and Close</p>
<p style="padding-left: 30px;"><img class="alignnone size-large wp-image-1155" title="Screenshot-External Tools Configurations" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/Screenshot-External-Tools-Configurations--600x561.png" alt="" width="600" height="561" /></p>
<p><strong><strong><strong>p) Now to install and run a project in the device:</strong></strong></strong></p>
<p style="padding-left: 30px;">- connect the device<br />
- check that is being detected and restart adb server if necesary<br />
- select the AndroidRelease target</p>
<p style="padding-left: 30px;"><img class="alignnone size-full wp-image-1156" title="android-compile-example" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/android-compile-example.png" alt="" width="600" height="470" /></p>
<p style="padding-left: 30px;">- press the play button with a toolbox or Run &gt; External Tools &gt; Android Install</p>
<p style="padding-left: 30px;"><img class="alignnone size-full wp-image-1157" title="toolbox-button" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/toolbox-button.png" alt="" width="38" height="36" /></p>
<p style="padding-left: 30px;">If everything went ok, the example should start on the device</p>
<p><strong><strong><strong>Useful advices:</strong></strong></strong></p>
<p style="padding-left: 30px;">- <del>There&#8217;s no data folder in the android apps, since Android has it&#8217;s own method for resources and its really restrictive about it. By now you&#8217;ll need to put them in</del></p>
<address style="padding-left: 60px;"><del>res/raw </del></address>
<address style="padding-left: 30px;">Now everything in bin/data will get compressed to res/raw and then uncompressed and automatically copied to:<br />
</address>
<address style="padding-left: 30px;">
</address>
<address style="padding-left: 60px;">sdcard/cc.openframeworks.appname </address>
<p style="padding-left: 30px;">before running the app.</p>
<p style="padding-left: 30px;">If you have resources that change like xml config files, it&#8217;s better to generate them from the code since uploading them to the phone will overwrite the configuration</p>
<p style="padding-left: 30px;">- If there&#8217;s no sd card in the device, examples that have resources won&#8217;t work by now</p>
<p style="padding-left: 30px;">- Naming of resources is really restrictive in Android, for example you cannot have several resources with the same name even if they have different extensions.</p>
<p style="padding-left: 30px;">- The AndroidDebug target does a different compilation process of the native code that allows to detect linker errors that won&#8217;t be detected when compiling in AndroidRelease mode. Is recomended to compile your application in AndroidDebug mode at least once or if your application crashes before starting. To install applications on the device or emulator is recommended to use the AndroidRelease mode since it&#8217;s faster and the applications will be much smaller. There&#8217;s also no support for debug for native applications in eclipse but you could theoretically use the ndk tools to debug an application compiled with AndroidDebug.</p>
<p style="padding-left: 30px;">- Test your application very often, even if the last ndk allows for debugging, there&#8217;s no support for native debugging in eclipse and setting it up manually with the ndk is pretty hard. when an application crashes the debugger dies too, so it&#8217;s hard to debug bad memory accesses and similar bugs.</p>
<p style="padding-left: 30px;">- Use the LogCat view in Eclipse. When programming for the Android you cannot see the output of cout or printf, but if you use ofLog you can see it&#8217;s output in the log cat. to open the view, go to</p>
<address style="padding-left: 60px;">Window &gt; Show View &gt; Others &gt; Android &gt; LogCat</address>
<p style="padding-left: 30px;"><strong><strong><img class="alignnone size-full wp-image-1079" title="showviewlogcat" src="http://www.openframeworks.cc/wp-content/uploads/2010/06/showviewlogcat.png" alt="showviewlogcat" width="369" height="415" /></strong></strong></p>
<p style="padding-left: 30px;">you can see the output of the compiler in the Console tab and the output of your app in the LogCat one. Everything that is output by OF through ofLog will have an OF tag so you can use filters to see only your application&#8217;s output.</p>
<p style="padding-left: 30px;">-There&#8217;s a bug in the Android plugin that makes eclipse to build every c/c++ project in your workspace before running any app, so try to keep your workspaces small. you can have as many workspaces as you want:</p>
<p style="padding-left: 60px;">- create a folder inside apps</p>
<p style="padding-left: 60px;">- open eclipse telling it to use this new folder as a workspace and do the import step again for the new folder, including openFrameworks, libs, addons but instead of importing all the examples, import only androidEmptyExample to have a template for your new projects.</p>
<p><strong><strong>- Creating new applications:</strong></strong></p>
<p style="padding-left: 30px;">You can copy any of the examples and start a new application from there.</p>
<p style="padding-left: 30px;">You&#8217;ll need to change the name of the application in different places:</p>
<p style="padding-left: 60px;">- when you copy the application from an example set the name you want to use, let&#8217;s say your application is called myApp<br />
- in res/values/strings.xml change app_name value to the name of your application<br />
- in AndroidManifest.xml change the name of the package from cc.openFrameworks.exampleName  to cc.openframeworks.myApp<br />
- in srcJava, select the package cc.openFrameworks.exampleName, press F2 to rename it and call it cc.openframeworks.myApp</p>
<p style="padding-left: 30px;">It&#8217;s  important to keep the package prefix as cc.openframeworks or somethings  can stop working, this will be fixed in future versions when eclipse  support for native code is better</p>
