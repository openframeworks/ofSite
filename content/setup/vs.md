## -*- coding: utf-8 -*-
.. title: visual studio

visual studio setup guide
=========================
Here are the setup instructions for those of you who wish to work with Visual Studio Community 2017 on Windows.

Download
--------
> [Download Visual Studio Community 2017][0]

Install
-------
Run the installer, and when asked select the following components:

![](list_of_components.png)

Video Codecs
-------
Starting in OF release 0.9.0 the video player now uses DirectShow and not QuickTime.  To support QuickTime video files or files like MP4 video you will need to install the video codecs onto your machine.  We recommend the [K-Lite Codec Pack][1] which is free to download and adds support for many video formats. 

**NOTE: The current version of K-Lite requires an additonal step:**
1. Open the Code Tweak Tool ( which is part of K-Lite ) 
2. Click the button: General -> Fixes 
3. Check '**Re-register base Directshow Filters**' and hit Apply

Disable Automatic Precompiled Header
-------
Visual Studio creates a hidden folder ".vs", which used to be ~10 kB in Visual Studio 2015; however, Visual Studio 2017 by default takes a few hundred megabytes for each project due to optimization of IntelliSense (code completion). This is not ideal on a laptop or a tablet with a small storage. You can disable the optimization and reduce the folder size at the cost of speed of IntelliSense. To do so, go to Tools > Options, then navigate to Text Editor > C/C++ > Advanced, and set Disable Automatic Precompiled Header to True.

openFrameworks plugin for Visual Studio
---------------------------------------------------

Before you're able to use openFrameworks with Visual Studio, you have to have Common Tools for Visual C++ 2017 installed, otherwise you'll get an error message later on. To install, go to File > New > Project and choose Visual C++ in the installed templates section. There now should be an option to install the tools, if they aren't already. Select it, confirm with 'OK' and follow the instructions.

From Visual Studio, go to Tools > Extensions and Updates. Select online and search for openFrameworks and install the plugin.

That will allow you to use File > New > Project... to create new openFrameworks projects and the contextual menu on any project to later add and remove addons

There's more information in the [Visual Studio Gallery page](https://marketplace.visualstudio.com/items?itemName=HalfA.openFrameworkspluginforVisualStudio2017) and the following video.

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&rel=15
[1]: https://ninite.com/klitecodecs/
