## -*- coding: utf-8 -*-
.. title: about

### openFrameworks 是一个 [开源](协议/) [C++](https://en.wikipedia.org/wiki/C%2B%2B) 框架，旨在通过为实验提供简单直观的框架来协助创作过程。
</br>


<div id="myslides">
<img src="/about/0.jpg" />
<img src="/about/1.jpg" />
<img src="/about/2.jpg" />
<img src="/about/3.jpg" />
<img src="/about/4.jpg" />
<img src="/about/5.jpg" />
<img src="/about/6.jpg" />
<img src="/about/7.jpg" />
<img src="/about/8.jpg" />
</div>
<br/>

openFrameworks 被设计为万能的瑞士军刀来解决各种问题，并将以下常用的第三方库整合在一起:

* 图形：[OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/) and [cairo](http://cairographics.org/)
* 音频输入，输出与分析：[rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal) and [Kiss FFT](http://kissfft.sourceforge.net/) or [FMOD](http://www.fmod.org/) 
* 字体：[FreeType](http://freetype.sourceforge.net/index2.html)
* 图片加载与导出：[FreeImage](http://freeimage.sourceforge.net/)
* 视频播放与生成：[Quicktime](http://developer.apple.com/quicktime/), [GStreamer](http://gstreamer.freedesktop.org/) and [videoInput](https://github.com/ofTheo/videoInput)
* 多功能工具库：[Poco](http://pocoproject.org/)
* 计算机视觉：[OpenCV](http://opencv.org/)
* 加载三维模型：[Assimp](http://assimp.sourceforge.net/)

openFramewors的框架代码支持跨平台。目前在支持五种操作系统（Windows, OSX, Linux, iOS, Android）和四个IDE（XCode, Code::Blocks, and Visual Studio and Eclipse）。所有的接口都是简单易读的模式设计的。

openFrameworks是根据[MIT许可证]（license/）分发的。 这使得每个人都可以在任何情况下使用openFrameworks：商业或非商业的，公共或私人的，开源或不同开的。 虽然没有义务为oF做出贡献，但是还是有许多人为openFrameworks贡献他们的力量。

简而言之，openFrameworks是一个用代码以更加简单方法来做出某些东西的工具。我们发现oF非常实用，也希望你也能用得到。

----------------
设计理念
----------------

openFrameworks的设计理念包括：可协作性，可用性和简单性，一致性和直观性，跨平台性，强大性和可扩展性。 openFrameworks也是由“与他人合作”（DIWO）理念驱动的。

**可协作性**

openFrameworks是协作形式开发的。它的蓬勃发展离不开[这些人](https://github.com/openframeworks/openFrameworks/contributors)的贡献，他们经常在[这里](http://forum.openframeworks.cc/)进行频繁的讨论，而且一起合作开发了[插件](http://ofxaddons.com/)和[项目](../gallery)。 
我们鼓励人们自己开发openFrameworks，并为生态系统做出贡献。

openFrameworks是以合作的方式在开发。我们使用Git来进行版本管理。意味着人们可以很方便的创建分支，进行实验，然后提出好的建议。如果你在Github看到网络图，它看起来像是外星人图，充满了分支，代码拆分，代码合并的曲线。
世界各地都有庞大的社区为核心代码做贡献：修复问题，提交合并请求，然后按照他们希望的方式开发工具。这是一个全球性的项目，通常在美国醒来后会在邮箱里收到很多来自亚洲和欧洲的工程师发来的合并请求和问题的邮件。有超过70人直接为openFrameworks的核心代码做出了贡献，还有数百人克隆了代码或者以其他的方式在做出贡献。

**Simplicity**

openFrameworks tries to balance usability and simplicity. The earliest versions of openFrameworks used the core as a tool for teaching C++ and OpenGL, but over time the examples have become the best way to learn while the core takes advantage of more advanced features. In exchange, we created many more examples that come with openFrameworks, with the goal of trying to make simple, hackable starting points for experimentation. 

We want openFrameworks to be as simple as possible, especially for folks coming from other languages and environments. C++ is a "large" language, large in the sense that you can write very different types of C++ code. If you go to the bookstore, you'll see hundreds of C++ books. We want to create a library where you don't need to be an expert, where at most you might need a book or two, but that the patterns, approaches and style of the code is simple and intuitive. We were especially interested in achieving a sort of parity with Processing, where many of the functions are similar, allowing easier movement from one framework to another.

**Consistent and Intuitive**

openFrameworks is consistent and intuitive: it should operate on the principle of least surprise, so that what you learn about one part of openFrameworks can be applied to other parts of it. Beginners can use openFrameworks to learn about common programming patterns, and advanced users will be able to apply their experience from other languages and toolkits.

Student first is the motto. A lot of the thinking guiding openFrameworks is: what would I have liked in a tool 5 or 10 years ago? We want the patterns of coding to be simple and to make it as easy as possible to type. This means having self-explanatory function names like "play" and "stop" for video players, and variable names that are intuitive. We have lots of discussions about intuition, driven by a desire to make the code as straightforward as possible. You should learn by typing, autocomplete should be helpful, etc. 

**Cross-platform**

openFrameworks is a cross-platform toolkit. openFrameworks supports as many development environments and operating systems as possible. When you download openFrameworks, you can pick your platform and development environment of choice, and have projects and examples ready to learn from and play with. Difficult to port code is kept out of the core, and kept in addons instead.

openFrameworks is designed to work on a multitude of platforms: OS X, Windows, Linux, iOS, Android, embedded ARM Linux systems, as well as experimental platforms such as BlackBerry PlayBook. openFrameworks developers have devised some clever ways of interfacing with other languages, such such as Java in the case of Android, or Objective-C in the case of iOS.

The joy of a cross-platform library is that it's easy to port your ideas from platform to platform. You can sketch on your laptop then immediately run it on your phone. It allows your ideas to come first, without worrying about the grunt work in making something work across platforms.

**Powerful**

openFrameworks is powerful: it allows you to leverage advanced libraries like OpenCV, use hardware like your graphics card efficiently, and connect peripherals like cameras and other devices.

We chose C++ because it's a fairly low level language, but can still be programmed in a high level way. Because C++ is an extension of the older C programming language, it's possible to write very low level, oldschool C code or higher level C++ code. In openFrameworks, we try to harness both approaches and present simple, clear, yet powerful ways of working with code. Using C++ also makes it easier to interface to the many libraries that have been written in C and C++ without needing to rely on a wrapper for another language.

openFrameworks essentially wraps other libraries such as OpenGL, Cairo, FreeType, FreeImage, and OpenCV. You can think of openFrameworks as a layer of code between user code (the code you will write) and these libraries. Those libraries have different styles, idioms, approaches, etc. and our job it to wrap them in a way which makes them more consistent and intuitive.

**Extensible**

openFrameworks is extensible. When you find something missing from openFrameworks, it's easy to create addons that extend it. The core addons for openFrameworks generally wrap libraries rather than solving problems in novel ways. When openFrameworks wraps libraries, the libraries are left exposed for further hacking.

One mental image of openFrameworks is a scaffolding, or shoulders to stand on while building what you want. One thing that helps keep the core light is that rather than try to include everything we can, openFrameworks has an "addon" system that allows for additional code, libraries, approaches, to be shared between users and woven into projects as necessary. 

An openFrameworks addon can be a snippet of code, or it might wrap much more complex libraries such as OpenNI, Tesseract, or Box2d. Addon names usually begin with the prefix "ofx", allowing you to easily see the difference between "core" code and non core code. In addition we include "core addons", addons that we think people will probably want to use, such as ofxOpenCv, but aren't essential for every project.

We try to organize and support the community developing addons through the http://ofxaddons.com site, which automatically collects addons from GitHub by looking for repos that contain the term "ofx" in the title. Right now there are more than 1,500 addons.

**Do it with others (DIWO)**

The driving philosophy behind openFrameworks is "do it with others" (DIWO). We love do it yourself (DIY) culture, which has been heavily promoted and facilitated by the rise of tutorial website like Instructables or Make. But we're also excited about the idea of "making socially" ("with others"). We practice DIWO through workshops, developer conferences, hackathons/labs, knitting circles and meetups in person, and online in the form of mailing lists, forum posts, and so on. We even have a gang sign. Because if you have a gang, you have to have a gang sign. The most important thing we want to stress is that you are not alone, that there's a great group of people out there learning, teaching, hacking, making and exploring the creative side of code. 

If you are not yet a part of the group, welcome!

----------------
faq
----------------

**Why create another library for C++, since many libraries exist?**

There are plenty of libraries that exist make it easier to make software, especially with OpenGL. For example, ogre, irrlicht, JUCE, SDL, wxWidgets, etc.

Originally, openFrameworks was meant to provide a "bare-bones" alternative. We wanted to write a library that would be the bare minimum necessary to get started doing audio-visual work with C++.

Over time, openFrameworks has evolved into a much more robust toolkit. Now, one of the biggest differences is audience. Our intended audience are folks using computers for creative, artistic expression, and who would like low level access to the data inside of media in order manipulate, analyze or explore.

**Why did you choose to wrap this library?**

We chose to work with the libraries that in our experience provide the cleanest and simplest API, the most generous licenses, and the easiest integration. 

For example, we chose GLUT as the windowing library. Primarily, because it's fairly universal, has a reasonably generous license, and it's rare to find a compiler or platform that is incompatible. We have used other windowing toolkits, such as glfw and wxWidgets, and even hooked them up with openFrameworks, but in the end, we decided to go with the one of the easiest to get up and running.

**Where can I see the latest version of openFrameworks?**

The most recent release is available from the [downloads](../downloads) page, which is also available on [github](https://github.com/openframeworks/openFrameworks/). The absolutely most recent version of openFrameworks is located in the [develop branch](https://github.com/openframeworks/openFrameworks/tree/develop). For more information about building OF from Github, see the [readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt). For more information about contributing to Github, see [this document](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow).

**How can I help?**

By making addons, helping improve the documentation and most importantly, by making tutorials or instructions. If you are using OF to make interesting things, post as much source, info and ideas as you can. If you are beginning, take notes about what's confusing and join us on the forum to ask questions and see what people are doing/thinking.

**Why is openFrameworks distributed as source instead of binary?**

For several reasons &mdash; first, it is practical. Because openFrameworks is still a work in progress, we will be making changes to it as we go. By keeping the code visible, it makes those changes a lot easier, and we get better feedback about problems and confusions. Second, it's educational, in that it gives the curious a good starting point for learning about C++ library wrangling. Third, it's an active invitation for users of openFrameworks to change, modify and reconfigure the library to their tastes or whims.

**How can I learn C++?**

We don't really expect that openFrameworks should be used as a teaching tool for C++, but we imagine that it might be a "first step" for those interested in dabbling with C++. We promote an active community on the [forum](http://forum.openframeworks.cc/), so we would recommend you post some questions there. We would also recommend: 

* [C and C++ in 5 days][6] by Philip Machanick, which is one of the best documents we've seen about learning C++ (and in 5 days, no less!).
* [OF for processing users][7] by Zach Gage, for those transitioning from Processing.
* [C++ tutorial for C users][12] for those transitioning from C.
* [Programming Interactivity][8] by Joshua Noble, which covers openFrameworks 0.062 as well as Processing and Arduino.
* [StackOverflow][11] is a great community for asking general and more esoteric questions.
* [C++ FAQ](http://www.parashift.com/c++-faq-lite/index.html) by Marshall Cline, and the [C++ FQA Lite](http://yosefk.com/c++fqa/index.html) by Yossi Kreinin.
* [cppreference.com/wiki/][15] is a good Standard Template Library reference.
* [cplusplus.com](http://cplusplus.com) has a great [language tutorial][9] and [reference][10].
* [cprogramming.com][13] has a lot of tutorials.

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openFrameworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openFrameworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openFrameworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/C++fqa/
[15]: http://www.cppreference.com/wiki/


----------------
contributors and supporters
----------------

openFrameworks is actively developed by a <a href="/development/#contributors">small core team</a> of developers in conjunction with a large distributed collection of contributors, with a few <a href="/development/#contributors">section leaders</a> maintaining responsibility for subsections of openFrameworks on a rotating basis.

A number of institutions have provided major support for openFrameworks through grants, donations, and as hosting partners for our international developer conferences. These events often require significant resources to bring together participants from many countries to a single location for multiple days.

<span class="sponsors">
  <a href="http://amt.parsons.edu"><img alt="sponsor_logo" src="/about/logo-parsons.png" style="display: block; height: 58px;padding-bottom: 3px;"></a>
  <a href="http://www.ycam.jp/en/"><img alt="sponsor_logo" src="/about/logo-ycam.png" style="display: block; height: 69px; /* padding-bottom: 8px; */"></a>
  <a href="http://eyebeam.org/"><img alt="sponsor_logo" src="/about/logo-eyebeam.png" style="display: block; height: 30px; padding-bottom: 18px;"></a>
  <a href="http://studioforcreativeinquiry.org/"><img alt="sponsor_logo" src="/about/logo-sfci.png" style="display: block; height: 69px;"></a>
  <a href="http://www.aec.at/"><img alt="sponsor_logo" src="/about/logo-ars.png" style="display: block; height: 41px; padding-bottom: 14px;"></a>
  <a href="http://www.fordfoundation.org/"><img alt="sponsor_logo" src="/about/logo-fordfoundation.png" style="display: block; height: 42px; padding-bottom: 13px;"></a>
</span>


**[Ars Electronica Festival and Futurelab](http://www.aec.at/)**

We would like to thank the [Ars Electronica Festival and Futurelab](http://www.aec.at/) for sponsoring the OF Lab at Ars Electronica 2008.

**[Eyebeam](http://eyebeam.org/)**

**[Ford Foundation](http://www.fordfoundation.org/)**

We would like to thank the [Ford Foundation](http://www.fordfoundation.org/) for sponsoring the second openFrameworks developers conference.

**[Parsons the New School for Design](http://amt.parsons.edu)**

**[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)**

We would like to thank the [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) for hosting the first openFrameworks developers conference, and providing other small grants and support to openFrameworks developers.

**[Yamaguchi Center for Arts and Media](http://www.ycam.jp/en/)**

We would like to thank [YCAM](http://www.ycam.jp/en/) for their ongoing support for OF. In 2008 YCAM hosted the first [OF workshop](http://wiki.openframeworks.cc/index.php?title=OfYcam) in Asia, and have since hosted many OF-related events such as: the [LabACT series](http://interlab.ycam.jp/en/projects/labact/eye-tracking-study) exploring uses of the EyeWriter, the first two [Guest Research Projects](http://interlab.ycam.jp/en/projects/guestresearch) which featured OF developers working on open source arts engineering tools like [ofxTimeline](http://interlab.ycam.jp/en/projects/guestresearch/vol2) and [mapamok](http://interlab.ycam.jp/en/projects/guestresearch/vol1), and most recently YCAM has hosted the [third openFrameworks developers conference](http://interlab.ycam.jp/en/projects/of-devcon2013).

We are proud to acknowledge institutions and organizations which have hosted multi-day educational workshops and "OF Lab" events (see [the wiki](http://wiki.openframeworks.cc/index.php?title=Education) for a more complete list): 

* [Art && Code Festival](http://artandcode.com/)
* [Eyeo festival](http://eyeofestival.com/)
* [Fabrica: The Benetton Group Communications Research Center](http://www.fabrica.it/)
* [Graphic Design Festival Breda](http://www.graphicdesignfestival.nl/en/)
* [iMAL Center for for Digital Cultures and Technology](http://www.imal.org/)
* [MediaLab Prado](http://medialab-prado.es/)
* [New York University Interactive Telecommunication Program](http://itp.nyu.edu/itp/) (ITP)
* [Pratersauna Digital LAB](https://vimeo.com/psdl)
* [Resonate.io Festival](http://resonate.io/)
* [Victoria and Albert Museum](http://www.vam.ac.uk/)
