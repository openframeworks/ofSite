## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

visual studio setup guide
=========================
Here are the setup instructions for those of you who wish to work with Visual Studio 2012, Express for Windows Desktop version included.

Download
--------
> [Download the Visual Studio 2012 Express for Windows Desktop][0]

Navigate to the [Express Website][0] and download the Express edition of the Visual Studio compiler.   

![vs_download](vs_download.png)  

Install
-------
Run the installer, and let it install to the default configuration. 

![vs_install](vs_install.png)  

Video Codecs
-------
Starting in OF release 0.9.0 the video player now uses DirectShow and not QuickTime.  To support QuickTime video files or files like MP4 video you will need to install the video codecs onto your machine.  We recommend the [K-Lite Codec Pack][2] which is free to download and adds support for many video formats.   

Update
------
If you have developed with older openFrameworks / Visual Studio, we have writen a script which will help you to migrate in a really easy way.
[Download it here][1], copy it in your project folder, then execute it.

[0]: http://www.microsoft.com/en-us/download/details.aspx?id=34673
[1]: https://gist.github.com/LeoColomb/5284354/raw/0900e935b40ab5a45dce82e50561d9ae5511dfa6/migrationToVS2012.cmd
[2]: https://en.wikipedia.org/wiki/K-Lite_Codec_Pack
