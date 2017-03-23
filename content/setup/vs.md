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
Starting in OF release 0.9.0 the video player now uses DirectShow and not QuickTime.  To support QuickTime video files or files like MP4 video you will need to install the video codecs onto your machine.  We recommend the [K-Lite Codec Pack - Version 12.1.0 Full April 18th 2016][1] which is free to download and adds support for many video formats. Note: other newer versions of K-Lite might not contain the codecs needed for OF. 

openFrameworks plugin for Visual Studio
---------------------------------------------------
From visual studio, go to Tools > Extensions and Updates. Select online and search for openFrameworks and install the plugin.

That will allow you to use File > New > Project... to create new openFrameworks projects and the contextual menu on any project to later add and remove addons

There's more information in the [Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6) and the following video.

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.microsoft.com/en-us/download/details.aspx?id=48146
[1]: http://filehippo.com/download_klite_codec_pack/67445/
