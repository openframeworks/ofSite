<%inherit file="/_templates/slideshow.mako" />

<h1>about</h1>
<div id="myslides">
<img src="0.jpg" />
<img src="1.jpg" />
<img src="2.jpg" />
<img src="3.jpg" />
<img src="4.jpg" />
<img src="5.jpg" />
<img src="6.jpg" />
<img src="7.jpg" />
<img src="8.jpg" />
</div>
<br/>

openFrameworks is an [open source](license.html) [C++](https://en.wikipedia.org/wiki/C%2B%2B) toolkit designed to assist the creative process by providing a simple and intuitive framework for experimentation. The toolkit is designed to work as a general purpose glue, and wraps together several commonly used libraries, including:

* [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/) and [cairo](http://cairographics.org/) for graphics
* [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal) and [Kiss FFT](http://kissfft.sourceforge.net/) or [FMOD](http://www.fmod.org/) for audio input, output and analysis
* [FreeType](http://freetype.sourceforge.net/index2.html) for fonts
* [FreeImage](http://freeimage.sourceforge.net/) for image saving and loading
* [Quicktime](http://developer.apple.com/quicktime/), [GStreamer](http://gstreamer.freedesktop.org/) and [videoInput](https://github.com/ofTheo/videoInput) for video playback and grabbing
* [Poco](http://pocoproject.org/) for a variety of utilities
* [OpenCV](http://http://opencv.org/) for computer vision
* [Assimp](http://assimp.sourceforge.net/) for 3D model loading


The code is written to be massively cross-compatible. Right now we support five operating systems (Windows, OSX, Linux, iOS, Android) and four IDEs (XCode, Code::Blocks, and Visual Studio and Eclipse). The API is designed to be minimal and easy to grasp.

Simply put, openFrameworks is a tool that makes it much easier to make things with code. We find it super useful, and we hope you do too.

----------------

contributors and supporters
--------

openFrameworks is actively developed by [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), and [Arturo Castro](http://arturocastro.net/) ("the core"), with help from the [OF community](../community/). openFrameworks is indebted to two significant precursors: the [Processing development environment](http://processing.org/), created by [Casey Reas](http://reas.com/), [Ben Fry](http://benfry.com/) and the Processing community; and the ACU Toolkit, a privately distributed C++ library developed by Ben Fry and others in the [MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/). A number of community leaders maintain responsibility for subsections of openFrameworks on a rotating basis, currently:

* 3D leader: [Elliot Woods](http://www.kimchiandchips.com/) (elliotwoods)
* Addons leader(s): [James George](jamesgeorge.org/) (obviousjim) and [Greg Borenstein](http://gregborenstein.com/) (atduskgreg)
* Community manager: [Kyle McDonald](http://kylemcdonald.net/) (kylemcdonald)
* Documentation leader: [Dayan Moisa](http://justdayan.com/) (justdayan)
* Forum leader: [Jason Van Cleave](http://jvcref.com/) (jvcleave)
* GitHub leader: [Christoph Buchner](https://github.com/bilderbuchi) (bilderbuchi)
* Hardware leader: [Josh Noble](http://thefactoryfactory.com/) (joshua noble)
* Internals/app leader: [Philip Whitfield](http://undef.ch/) (underdoeg)
* iOS leader: [Lukasz Karluk](http://www.julapy.com/blog/) (julapy)
* Outreach leader: [Caitlin Morris](http://caitlinmorris.net/) (c_tl_n)
* Sound leader: [Damian Stewart](http://damianstewart.com/) (damian)
* Tutorial leader(s): [Diederick Huijbers](http://www.roxlu.com/) (roxlu) and [Jeff Crouse](http://www.jeffcrouse.info/) (jefftimesten)
* Typography leader: [Christopher Baker](http://christopherbaker.net/) (bakercp)
* Video leader: [James George](http://www.jamesgeorge.org/) (obviousjim)
* Windows leader: [Matthew Gingold](http://gingold.com.au/) (gameoverhack)

And previously:

* [Steve Varga](http://www.vargatron.com/) (vargatron) as typography leader

A number of institutions have provided major support for openFrameworks through grants, donations, and as hosting partners for our international developer conferences:

* [Ars Electronica Futurelab and Festival](http://www.aec.at/)
* [Eyebeam Art & Technology Center](http://eyebeam.org/)
* [Ford Foundation](http://www.fordfoundation.org/)
* [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) at CMU
* [Parsons the New School for Design](http://amt.parsons.edu)

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
* [Yamaguchi Center for Arts and Media](http://www.ycam.jp/en/) (YCAM)

----------------

design philosophy
--------

openFrameworks development is **distributed**. It thrives on the contributions of [many people](https://github.com/openframeworks/openFrameworks/contributors), who engage in [frequent discussion](http://forum.openframeworks.cc/), and collaborate on [addons](http://ofxaddons.com/) and [projects](../gallery). We encourage people to make openFrameworks their own, and contribute to the ecosystem.

openFrameworks is **consistent** and **intuitive**: it should operate on the principle of least surprise, so that what you learn about one part of openFrameworks can be applied to other parts of it. Beginners can use openFrameworks to learn about common programming patterns, and advanced users will be able to apply their experience from other languages and toolkits.

openFrameworks tries to balance **usability** and **simplicity**. The earliest versions of openFrameworks used the core as a tool for teaching C++ and OpenGL, but over time the examples have become the best way to learn while the core takes advantage of more advanced features. 

openFrameworks is a **cross-platform** toolkit. openFrameworks supports as many development environments and operating systems as possible. When you download openFrameworks, you can pick your platform and development environment of choice, and have projects and examples ready to learn from and play with. Difficult to port code is kept out of the core, and kept in addons instead.

openFrameworks is **powerful**: it allows you to leverage advanced libraries like OpenCV, use hardware like your graphics card efficiently, and connect peripherals like cameras and other devices.

openFrameworks is **extensible**. When you find something missing from openFrameworks, it's easy to create addons that extend it. The core addons for openFrameworks generally wrap libraries rather than solving problems in novel ways. When openFrameworks wraps libraries, the libraries are left exposed for further hacking.

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
