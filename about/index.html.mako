<%inherit file="/_templates/markdown.mako" />
about
=======


openFrameworks is a [C++](https://en.wikipedia.org/wiki/C%2B%2B) toolkit designed to assist the creative process by providing a simple and intuitive framework for experimentation. The toolkit is designed to work as a general purpose glue, and wraps together several commonly used libraries, including:

* [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/) and [GLUT](http://www.opengl.org/resources/libraries/glut/) or [cairo](http://cairographics.org/) for graphics
* [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/) or [FMOD](http://www.fmod.org/) for audio input and output
* [Kiss FFT](http://kissfft.sourceforge.net/) for FFT analysis
* [FreeType](http://freetype.sourceforge.net/index2.html) for fonts
* [FreeImage](http://freeimage.sourceforge.net/) for image input and output
* [Quicktime](http://developer.apple.com/quicktime/) and [videoInput](https://github.com/ofTheo/videoInput) for video playing and camera input
* [Poco](http://pocoproject.org/) for a variety of utilities
* [libtess2](https://code.google.com/p/libtess2/) for 2d tessellation

The code is written to be massively cross-compatible. Right now we support five operating systems (Windows, OSX, Linux, iOS, Android) and four IDEs (XCode, Code::Blocks, and Visual Studio and Eclipse). The API is designed to be minimal and easy to grasp.

Simply put, openFrameworks is a tool that makes it much easier to make things with code. We find it super useful, and we hope you do too.

openFrameworks is actively developed by [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), and [Arturo Castro](http://arturocastro.net/), with help from the [OF community](../community/). openFrameworks is indebted to two significant precursors: the [Processing development environment](http://processing.org/), created by [Casey Reas](http://reas.com/), [Ben Fry](http://benfry.com/) and the Processing community; and the ACU Toolkit, a privately distributed C++ library developed by Ben Fry and others in the [MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/).

----------------

faq
--------

**Why create another library for C++, since many libraries exist?**

There are plenty of libraries that exist make it easier to make software, especially with OpenGL. For example, ogre, irrlicht, JUCE, SDL, wxWindows, etc.

Originally, openFrameworks was meant to provide a "bare-bones" alternative. We wanted to write a library that would be the bare minimum necessary to get started doing audio-visual work with C++.

Over time, openFrameworks has evolved into a much more robust toolkit. Now, one of the biggest differences is audience. Our intended audience are folks using computers for creative, artistic expression, and who would like low level access to the data inside of media in order manipulate, analyze or explore.

**Why did you choose to wrap this library?**

We chose to work with the libraries that in our experience provide the cleanest and simplest API, the most generous licenses, and the easiest integration. 

For example, we chose GLUT as the windowing library. Primarily, because it's fairly universal, has a reasonably generous license, and it's rare to find a compiler or platform that is incompatible. We have used other windowing toolkits, such as glfw and wxWindows, and even hooked them up with openFrameworks, but in the end, we decided to go with the one of the easiest to get up and running.

**Where can I see the latest version of openFrameworks?**

The most recent release is available from the [downloads](../downloads) page, which is also available on [github](https://github.com/openframeworks/openFrameworks/). The absolutely most recent version of openFrameworks is located in the [develop branch](https://github.com/openframeworks/openFrameworks/tree/develop). For more information about building OF from Github, see the [readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt). For more information about contributing to Github, see [this document](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow).

**How can I help?**

By making addons, helping improve the documentation and most importantly, by making tutorials or instructions. If you are using OF to make interesting things, post as much source, info and ideas as you can. If you are beginning, take notes about what's confusing and join us on the forum to ask questions and see what people are doing / thinking. 

**The library is distributed non-compiled, why is that?**

For several reasons -- first, it is practical. Because openFrameworks is by all means still a work in progress, we will be making changes to it as we go. By leaving the code visible, it makes those changes alot easier, and we get better feedback about problems and confusions. Second, it's educational, in that it gives the curious a good strating point for learning about C++ library wrangling. Third, it's an active invitation for users of openFrameworks to change, modify and reconfigure the library to their tastes or whims.

We are, however, planning to release compiled versions of the OF library in future releases, since the compile times are getting a bit long and it would cut down on folder sizes. When we do, we will always include instructions about how to work with an uncompiled version of OF side by side with your source code. 

**How can I learn C++?**

We don't really expect that openFrameworks should be used as a teaching tool for C++, but we imagine that it might be a "first step" for those interested in dabbling with C++. We will try to promote an active community at the forum, so we would recommend you post some questions there. We would also recommend: 

*   this PDF which is one of the best documents we've seen about learning C++ (and in 5 days, no less!): [Philip Machanick -- C and C++ in 5 days.][6] 
*   this great guide by Zach Gage, [OF for processing users][7], that explains some of the differences to openFrameworks and provides alot of good details. 
*   Joshua J Noble's Oreilly book "[Programming Interactivity][8]," covers openFrameworks as well as processing and arduino.
*   cplusplus.com has a great [language tutorial][9] and [reference][10]
*   [StackOverflow][11] is a great community for asking general and more esoteric questions (search first before you ask!)
*   a good C++ tutorial for those that know C, [C++ tutorial for C users][12]
*   some more tutorials on [cprogramming.com][13]
*   [the lite C++ FAQ][14]
*   good for STL (Standard Template Library) reference: [cppreference.com/wiki/][15]
    

**Why do you do mostly local linking?**

When you create a C++ application, you wind up having alot of libraries and additonal header code that your projects call. We've felt that the easiest structure to have is the following: 

at one level you have two folders:  

* app  
* libs  

The libs folder contains the version of openFramework you are using (all of the code) along with the other libraries that openFrameworks links and includes (glut, rtAudio, quicktime, freeImage and freeType).

The apps folder cantains projects that link to those particular libs:  
ie, search path: "../../libs/xxxxx/includes"

There are a some reasons for this -- first, libraries change (especially openFrameworks!), and if you put them at a root level, instead of a local one, you could be in trouble if you update the library and then try to re-compile old code.

This also makes you projects more portable -- the less libraries you have to install on a given machine, the better.

Also, since the hard drive is not always "c:/" and the folder for program files is not always "Program Files" it can be quite hard for us and other OF users to make projects that can easily compile across different computers.

Finally, it means that beginning users can download the examples and get them to easily compile. It makes the example projecs easier to distribute.

The downside is the added file size to downloads. We will try to keep the examples file size down and in the future we might come up with an "expert" and "beginner" download path.

The trick, when you want to create a new project, is to copy and paste a working poject in the "apps" directory. This trick is described for dev-cpp here, for visual studio here and for xcode here. While we are working on creating wizards or tools for automatically making a good openFrameworks project, for the meantime we will suggest users to use cut and paste for making new projects.

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
