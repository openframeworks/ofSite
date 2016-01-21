## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

Xcode Setup Guide
==================

First Steps
----------

1. Install Xcode from the [OSX App Store](https://itunes.apple.com/ca/app/xcode/id497799835?mt=12)
2. Install Xcode's command line tools

To install the command line tools, first finish installing Xcode then open up a terminal (you can find it at Applications/Utilities/Terminal.app), type the following and hit enter:

```
xcode-select --install
```

This should prompt you to install the command line tools. Select "Install" to begin the process.

![install dialog for the command line tools](install-dialog.png)

Don't worry if you get an error about the tools being unavailable from the update server! It seems this happens if you already have the tools installed. If that's the case, you're already done!

![server error when installing command line tools](install-dialog-server-error.png) 

Testing Your Setup
------------------

At this point, you should have all you need to build and run OF apps! Let's test it by opening one of the examples that comes with openFrameworks.

First, extract the folder you downloaded from this website and put it somewhere convenient. This folder will be referred to as your openFrameworks root folder (also known as OF_ROOT). Here's some of the key subfolders inside the openFrameworks root folder:

- **apps** will be where your own apps will go as you work on them
- **examples** contains a set of pre-made apps that demonstrate specific concepts like dealing with video, 3d graphics, sound, fonts and so on
- **addons** is where you can store [openFrameworks addons](http://ofxaddons.com/) (community contributed extensions to the openFrameworks core)
- **projectGenerator_osx** contains the project generator, which is useful for creating new openFrameworks apps

Let's test your setup with the 3DPrimitivesExample. Open the **examples** folder, then the **3d** folder and finally the **3DPrimitivesExample** folder. Inside, you should see 2 folders and a few files.

![selecting the 3D primitives example](example-selecting.png)

This follows the basic structure of an openFrameworks app.

- **src** is typically where your app's source files will go
- **bin** is where your finished runnable app will end up, as well as your **data** folder which is for assets like images, sound files, etc.

The file with the `.xcodeproj` extension is the file you should open in Xcode. Open it now and you should see something similar to the following. You may need to expand the project in the left bar and drill down to the `ofApp.cpp` file as shown in the image below in order to see anything interesting.

As of this writing Xcode is on version 6, so you may see something slightly different if you live in the future.

![xcode showing an openframeworks example](example-open.png)

The bar on the left is your general purpose project browser, which will show your project's files (if the folder icon is selected at the top), as well as errors that crop up while trying to build your app (the triangular icon).
Handy tip for working on small screens: cmd-0 will show or hide this sidebar. cmd-1, cmd-2, etc will show different tabs.

In the middle is your main editor. It will show you an appropriate editor for whatever file you've selected in the project browser. This is usually a text editor for source files (`.cpp` and `.h` files), but will show you your project's settings if you select the project file at the top, or will let you examine image / video / sound files as well.

On the right is an auxilliary sidebar which is almost always useless for openFrameworks. You can hide it by clicking the blue sidebar icon in the top right, or with cmd-option-0.

Along the top is a toolbar which has the big "run" button (which looks like a play button as of this writing), as well as a dialog which shows you which project you'll build when you tell Xcode to run (called a "scheme" in Xcode terminology).

**It is often the case that the wrong scheme is selected by default**. Xcode has a tendancy to select the "openFrameworks" scheme instead of the one you actually want (which is your app). Select the dropdown in the top which says "openFrameworks" and set it to your app's name. If you find that you try to run your app and nothing happens, this is almost always the reason.

![selecting the correct scheme in xcode](example-scheme.gif)

After you've selected the right scheme, you should be ready to go! Click the run button at the top left (or use cmd-r) to tell Xcode to build and run the example.

The first time you compile an openFrameworks project, it will likely take a minute or so as openFrameworks gets compiled. This usually only needs to be done once, unless you update openFrameworks or edit any of its internal files. After openFrameworks itself is finished, Xcode will compile the example and you should see a "Build Succeeded" message and a window with the example app happily spinning away.

![example running in a window in front of xcode](example-running.png)

After closing the example, you may see a new panel open at the bottom of the Xcode window. This is the console where `ofLog` messages will show up, as well as another panel which is used for debugging. You can show and hide this panel with cmd-shift-y.

It is typical for there to be some warnings generated when openFrameworks is compiled. This is unfortunate, but perfectly normal.

Generating a New Project
------------------------

Now that you've verified your setup, it's a good time to start a new project from scratch. In the **projectGenerator_osx** folder, you'll find `projectGenerator.app` which will make it easy to create new openFrameworks apps. Create a new sketch called firstSketch with all of the default settings and click the generate button.

Afterwards, close the project generator and navigate to the **apps/myApps/firstSketch** folder. Open `firstSketch.xcodeproj` in Xcode, expand the project in the browser on the left, expand the **src** folder and select the `ofApp.cpp` file.

You should now be looking at the blank app template, with empty `setup()`, `update()` and `draw()` functions (as well as many other empty functions).

![blank openframeworks project template](generate-blank.png)

Let's make a simple app which draws some text in the top left corner of the window. In the `draw()` function, add the following code then hit cmd-r (or click the run button) to run your new app:

```
ofDrawBitmapStringHighlight("Everything works!", 20, 20);
```

![filling in the draw function while showing xcode autocomplete](generate-text.gif)

As you're typing, you should see Xcode suggesting autocompletions for you based on what you've already typed. You can hit the up or down arrows to pick a completion, enter to commit it, and use shift to select the placeholder tokens for each of the arguments (the two 20s and the "Everything works!" message).

If you're not seeing autocomplete, this may be because you need to do a quick build first to get Xcode up to speed. Hit cmd-b to do a build without running the app.

Errors and Debugging
--------------------

Inevitably you will run into errors. There are two major kinds, compilation errors and runtime errors. Compilation errors are usually ones caused by typos or bad build settings, and they keep your app from being compiled at all. Runtime errors are errors you get after the app has launched and have scary all-caps names like `EXC_BAD_ACCESS` and `SIGSEGV`.

Compilation errors caused by typos can usually be traced down to a specific line, or a specific character if you're lucky. Xcode will highlight the line red and give you a little triangle under the character it thinks is the issue. In the following example, there are too many "+" characters in the for loop.

![compilation error in xcode](errors-compilation.png)

Xcode will also attempt to trace runtime errors down to a specific line, but this is a bit more finicky. It's often correct, but if you find Xcode pointing to some file you never wrote, it may just be confused. In the following example, Xcode is correctly identifying the line is causing the app to crash (trying to use a bad pointer).

![runtime error in xcode](errors-runtime.png)

If the line Xcode is pointing to doesn't seem to be the actual problem, try selecting different stack frames in the sidebar on the left (the numbered list of items).

Runtime errors are usually caused by variables that get into a state you didn't expect (like an `int` getting bigger than you thought it would, or a pointer going `NULL` when you didn't think that would be possible). Xcode includes a pretty handy debugger that can be useful for stopping your app from running on certain lines, so you can poke around and see what all the variables are at that point in time.

You can set a breakpoint on any line you want by clicking on the little gutter that runs along the left side of the text editor. It will be represented by a blue arrow, and you can remove it by dragging it off the gutter.

![setting breakpoints](errors-breakpoint.gif)

Whenever your app hits a breakpoint, it'll pause and show you the current state of all of the variables in the debugging pane at the bottom of the Xcode window. In this screenshot, you can see the final values of the `a` and `b` variables after the for loop has finished. 

![triggering breakpoints](errors-breakpoint-triggered.png)

One more use for breakpoints is that they can be set to only trigger under certain conditions. In the following gif, the breakpoint is set to trigger once `a` is equal to 50.

![conditional breakpoint being triggered](errors-condition.gif)

Fun fact: instead of having Xcode pause your app when a breakpoint gets hit, you can have it just play a sound instead.

Adding Files to Your Project (Addons, etc)
---------------------------------------------

As your project grows, you'll probably want to start adding new files. These files might be ones written specifically for your project, or they could be addons or external libraries other people have written.

Making new files can be done in a few ways. One is to right click your "src" folder in Xcode, and select "New File..", the other is to go to the menu and select File > New > File...

In the dialog that pops up, navigate to OS X > Source and then select C++ file. Xcode will create a `.cpp` and `.h` pair for you automatically, so just give it a base name ("myNewClass") and let it do the rest. Make sure you tell Xcode to place the new files in your "src" folder when prompted.

Adding openFrameworks addons can be a bit complex, but there are some relatively foolproof ways of approaching it. If an addon comes with a README, this will typically have instructions for you regarding how to add the addon to your project. If not, a good approach is to:

- Put the addon in the **addons** folder in your openFrameworks root folder
- Right click the **addons** folder in your project in Xcode
- Select "Add file to (name of your project)..."
- Navigate to the folder where your addon is, and then into the addon itself
- Select the **src** folder, and the **libs** folder (not all addons will have a **libs** folder)
- Use the settings shown in the screenshot below ("create groups" and check all the target boxes, copying is up to you but is not necessary)

![adding src and libs folders for an addon](files-addons.png)

- Click "Add"
- Select the folders you just added in your Xcode project, right click and "New Group from Selection"
- Rename the new group to whatever the addon's name is

![renaming addon group](files-new-group.gif)

At this point, you should try to build your project. If it succeeds, hooray you're done! If you get errors about "file not found", you'll probably need to add some of the addon's folders to your header search path. These folders are almost always called "include", so look for them in the project's **src** and **libs** folders.

![finding the include folder in ofxjson](files-include-folder.png)

Once you know this path, open up your project's build settings by selecting the project file in the left sidebar in Xcode, selecting the "Build Settings" tab at the top and searching for "header search paths". 

![finding the build settings dialog](files-finding-build-settings.gif)

Once you've found the appropriate build setting, double click it to edit, click the + button to add a new path and enter the path to the addon's "include" folder. In these settings, `$(OF_PATH)` will become the path to the openFrameworks root folder, so you don't need to worry about that part.

![adding a header search path to a project](files-adding-header-path.gif)

You may have to repeat this process if an addon or library has several **include** folders to add.

