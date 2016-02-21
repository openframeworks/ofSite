---
.. title: Create a new project
.. type: howto
---

You can use the new project generator on most platforms (osx, windows, linux)

![newGui](newGui.png)

It's recommended that you make your project within the openFrameworks folder in a subfolder of "apps".  For example, I could make a project called simpleSketch and it could go in apps/myApps so the full path from the root of openFrameworks is apps/myApps/simpleSketch.  You can also create folders inside "apps" to organize, for example if you have different projects you are working on.

You may have to adjust the settings as to where openFrameworks is located on your hard drive

![newGuiSettings](newGuiSettings.png)

One important note is that openFrameworks projects work relatively, meaning, the project looks for the libs folder in openFrameworks in a relative manner, ie ../../../libs.  If you create a project, it should always live that level deep from the root of the openFrameworks folder.  Alternatively, you can update it using the project generator if you want to change its folder height.  
