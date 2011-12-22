<%inherit file="/_templates/markdown.mako" />

xcode setup guide
==================

Step 1 -- Install Xcode  
Step 2 -- Using openFrameworks

Xcode Quirks: Spaces in main project folder name  
Xcode Quirks: Adding files to project
Xcode 4.0 Notes

**Step 1: Download and install Xcode 3 or higher**


Xcode is Apple's free gcc based IDE for OS X. You can download it from the [Apple Developer Center][0], though you have to be registered as an apple developer. Registration is free and relatively painless.

![adcLogin](adcLogin.jpg)  

Once you are logged in, select the link in the for Mac Dev Center

![adcDeveloperTools](adcDeveloperTools.jpg)  


Download the latest version of Xcode 3 or Xcode 4. 
_ Note: Currently there are two distinct version of Xcode - Xcode 3 and Xcode 4 ( for Lion ). 
We recommend Xcode 3 as Xcode 4 is still quite buggy and not as easy to navigate but openFrameworks does work on both. _

![adcDownload](adcDownload.jpg)  


Once the download completes, mount the installer and run the XcodeTools package. Click through the installer till you see the customize option. 

Click it. This gives you the option to skip certain parts of the install. If you are short on disk space you'll probably want to skip the 1.3GB of developer documentation.

It is also recommended that you check any boxes that indicate support for older versions of OS X ie 10.5 / 10.6 etc. 

![xcodeCustomize](xcodeCustomize.jpg)  


The installer starts installing.

![xcodeInstalling](xcodeInstalling.jpg)  


The Developer Tools installer will have installed a folder called _Developer_ in the root (highest level) of you hardrive. The Xcode application is located at _/Developer/Applications/Xcode.app_.

![xcodeLocation](xcodeLocation.jpg)  


Now that Xcode has been successfully installed on your computer it is time to check out the openFrameworks examples.

**Step 2: Using openFrameworks**

Download the openFrameworks examples from the [download][1] section of this website. Once downloaded and unzipped place the folder in an appropriate location on your hardrive. Unzipped, the contents of the folder should look something like this.

![ofFolderStructure](ofFolderStructure.jpg)  


The examples are located within the _"apps"_ folder. Within each example folder is the Xcode project file _"graphicsExample.xcodeproj"_. This file will open the Xcode project for that example.

When the example opens in Xcode you will see a list of files in the left column and the content of the currently selected file (in this case _"testApp.cpp"_) in the right panel.

![xcodeLeftSide](xcodeLeftSide.jpg)  


The first thing you will probably want to do is to compile and run the app to make sure it works. Along the top of the Xcode window you should see a button called _"Build and Go"_ this button will compile the example app and as long as there are no errors it should then launch the app successfully. If you get a ton of errors on the first compile -- try going to the Build menu and selecting "Clean All Targets" -- then try again to compile.

![xcodeButtons](xcodeButtons.jpg)  


![ofTypeWindow](ofTypeWindow.jpg)  


_Once the app is running -- you can terminate it by hitting the "Esc" key on your keyboard._

**Notes: Warnings and Errors**

While the app is compiling you'll notice a little circular **progress meter** on the bottom right corner of the Xcode window. This indicates the percentage of the files compiled.

The yellow triangle and the number next to it indicates the number of **warning messages** from the compiler. Most of the time you can ignore the warning messages but if you would like to read them click on the triangle and Xcode will open a separate window which will show them as a list.

![xcodeCompileProgress](xcodeCompileProgress.jpg)  


If the compiler finds **errors** in your code or is just generally unhappy about something the compile will fail and you will see something like this in the bottom right hand corner of your Xcode window.

![xcodeError](xcodeError.jpg)  


As with the warning messages, to **view the errors** click on the red circle and Xcode will bring up a new window where it will list the errors and attempt to **highlight the line in the code** where the errors occurred.

![xcodeErrorShow](xcodeErrorShow.jpg)  


Bear in mind that the **error message might not always make sense to you** but most of the time just showing you where the error is will be enough for you to realise your mistake.

In the code above, by looking at the highlighted line it is quite easy to see that I forgot to put a coma between _"frabk.tff"_ (the font name I wanted to load) and _32_ (the size I wanted to font to be).

If I put the coma back in both errors go away and the app compiles and launches nicely.

![ofGraphicsWindow](ofGraphicsWindow.jpg)  


**Notes: Run Log**

When the Xcode project launches the app it has another window running behind it called the _"Run Log"_. This is a console that will give you **feedback about your app** while it is running.

When the app launches the first thing that is printed to the Run Log is  

**\[Session started at 2007-02-25 15:34:07 +0100.\]**

When the app exits it will print something like this  

**openFrameworks has exited with status 0\.**

The useful thing about the Run Log is that you can **print** out to it **while your app is running** with _"ofLog"_ . Also if there are openFrameworks related messages or errors they will be printed here as well.

![RunLog](RunLog.jpg)  


**Notes: Location of your app**

The application that you are compiling and running with Xcode is located in the _"bin/"_ folder of each project directory. You can always **run the application directly** by double clicking it. Everything will be the same as when you launch it with Xcode except you won't see the Run Log output.

![buildLocation](buildLocation.jpg)  


**Xcode -- Bugs and Quirks**

**Spaces in main project folder name:** For some reason Xcode freaks out if your main project folder (the one that contains the _"apps"_ and _"libs"_ folder has spaces in the name.

It will give **linking errors** that it can't find certain libraries in the libs folder.

![badFolder](badFolder.jpg)  


The folder name above, with the space between 'my' and 'apps' will give you all sorts of problems. Replacing the space with a dash or concatenating the spaces, as below will keep everything happy.

![goodFolder](goodFolder.jpg)  


**Adding files to project: relative vs absolute path** When you add source code files or libraries to your project Xcode will ask you whether you wish the path to the file to be a relative path or an absolute path.

![addDialogRelative](addDialogRelative.jpg)  


As a rule for **all files** in your main **openFrameworks folder** and its sub-folders make sure you **choose** _"relative to project"_.If you select **absolute path** then everytime you move your openFrameworks folder around or onto another computer **Xcode will freak out** because your files will have been listed with paths that don't exist anymore.

For example a path like: _"/User/yourname/Documents/openFrameworksProjects"_ means that the Xcode project will **only work** if the openFrameworks folder is in that specific place. Obviously this is **not a good thing**.

The **default path** it will give you is **usually an absolute one** so make sure you **change it** to _"relative to project"_ before you click add.

The **only files** that should have **absolute paths** are the **System Frameworks** which you will most likely not need to add.



**Xcode 4.0 Notes:**

Xcode 4 has a completely redesigned interface. Here are some important differences:

**Side bar view mode:**

When you first open an openFrameworks project you might find the files in the sidebar aren't showing up. 
Click the folder icon at the top of the sidebar to show the traditional file view ( you might need to expand out the list with the sidebar arrows ). 
![xc4sideBarTop](xc4sideBarTop.png)  

![xc4sidebarFileSelected](xc4sidebarFileSelected.png)  


**Run button:**

In Xcode 4 the Run button has replaced the "Build" and "Build and Run" buttons. 

To compile and launch your app hit the "Run" button.

![xc4Run](xc4Run.png)  


**Select the correct Target:**

You might also find that your example is not running.

This could be because the openFrameworks library and not the example project is set as the active target. 

To correct this, select the example project name from the 'Scheme' drop down. 

![xc4changeScheme](xc4changeScheme.png)  


**Change from Debug to Release:**

When you are done with your app you will want to create a 'Release' version of this. 

In Xcode 3 this is as easy as switching the Build from Debug to Release mode. 

In Xcode 4 by default only Debug is enabled. 

To switch to Release select the "Edit Schemes" from the Schemes menu.

Then click the example app in the sidebar and change the Build Configuration to Release.

![xc4editSchemes1](xc4editSchemes1.png)  

![xc4editSchemes2](xc4editSchemes2.png)  


**Errors:**

Xcode 4 compiles code as you type so you might see red errors appear in your code before you build. 

This is actually quite handy and can help you spot mistakes. Also the Errors icon which was in the bottom right corner of the window has now moved to the top panel. 

![xc4errors](xc4errors.png)  


**This is the ideal layout for your Xcode 4 project:**

![xc4](xc4.png)  


[0]: https://connect.apple.com/
[1]: http://www.openframeworks.cc/download


