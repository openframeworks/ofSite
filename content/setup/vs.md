## -*- coding: utf-8 -*-
.. title: visual studio

visual studio setup guide
=========================
Here are the setup instructions for those of you who wish to work with Visual Studio 2012, Express for Windows Desktop version included.

Download
--------
> [Download the Visual Studio Community 2015][0]

Navigate to the [Visual Studio][0] and download the Community edition of the Visual Studio IDE.   

![](visual_studio_community.png)

Install
-------
Run the installer, and let it install to the default configuration. 

![](vs_install.png)

Video Codecs
-------
Starting in OF release 0.9.0 the video player now uses DirectShow and not QuickTime.  To support QuickTime video files or files like MP4 video you will need to install the video codecs onto your machine.  We recommend the [K-Lite Codec Pack][1] which is free to download and adds support for many video formats.
However a lot of codec sites have adware bundled. This link and codec pack has been tested with OF [https://ninite.com/klitecodecs/][2] and it automatically removes any adware from the installer before download. 

openFrameworks plugin for Visual Studio
---------------------------------------------------
From visual studio, go to Tools > Extensions and Updates. Select online and search for openFrameworks and install the plugin.

That will allow you to use File > New > Project... to create new openFrameworks projects and the contextual menu on any project to later add and remove addons

There's more information in the [Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6) and the following video.

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.visualstudio.com/
[1]: https://en.wikipedia.org/wiki/K-Lite_Codec_Pack
[2]: https://ninite.com/klitecodecs/
