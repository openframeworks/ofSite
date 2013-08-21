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
* [OpenCV](http://opencv.org/) for computer vision
* [Assimp](http://assimp.sourceforge.net/) for 3D model loading

The code is written to be massively cross-compatible. Right now we support five operating systems (Windows, OSX, Linux, iOS, Android) and four IDEs (XCode, Code::Blocks, and Visual Studio and Eclipse). The API is designed to be minimal and easy to grasp.

openFrameworks is distributed under the [MIT License](license.html). This gives everyone the freedoms to use openFrameworks in any context: commercial or non-commercial, public or private, open or closed source. While many openFrameworks users give their work back to the community in a similarly free way, there is no obligation to contribute.

Simply put, openFrameworks is a tool that makes it much easier to make things with code. We find it super useful, and we hope you do too.

----------------
contributors and supporters
----------------

openFrameworks is actively developed by [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), and [Arturo Castro](http://arturocastro.net/) ("the core"), with help from the [OF community](../community/). openFrameworks is indebted to two significant precursors: the [Processing development environment](http://processing.org/), created by [Casey Reas](http://reas.com/), [Ben Fry](http://benfry.com/) and the Processing community; and the ACU Toolkit, a privately distributed C++ library developed by Ben Fry and others in the [>MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/). A number of community leaders maintain responsibility for subsections of openFrameworks on a rotating basis, currently:


* 3D leader: [Elliot Woods](http://www.kimchiandchips.com/) (elliotwoods)</li>
* Addons leader(s): [James George](http://jamesgeorge.org/) (obviousjim) and [Greg Borenstein](http://gregborenstein.com/) (atduskgreg)</li>
* Community manager: [Kyle McDonald](http://kylemcdonald.net/) (kylemcdonald)</li>
* Documentation leader: [Dayan Moisa](http://justdayan.com/) (justdayan)</li>
* Forum leader: [Jason Van Cleave](http://jvcref.com/) (jvcleave)</li>
* GitHub leader: [Christoph Buchner](https://github.com/bilderbuchi) (bilderbuchi)</li>
* Hardware leader: [Josh Noble](http://thefactoryfactory.com/) (joshua noble)</li>
* Internals/app leader: [Philip Whitfield](http://undef.ch/) (underdoeg)</li>
* iOS leader: [Lukasz Karluk](http://www.julapy.com/blog/) (julapy)</li>
* Outreach leader: [Caitlin Morris](http://caitlinmorris.net/) (c_tl_n)</li>
* Sound leader: [Adam Carlucci](https://github.com/admsyn) (admsyn)</li>
* Tutorial leader(s): [Diederick Huijbers](http://www.roxlu.com/) (roxlu) and [Jeff Crouse](http://www.jeffcrouse.info/) (jefftimesten)</li>
* Typography leader: [Christopher Baker](http://christopherbaker.net/) (bakercp)</li>
* Video leader: [James George](http://www.jamesgeorge.org/) (obviousjim)</li>
* Windows leader: [Matthew Gingold](http://gingold.com.au/) (gameoverhack)</li>


And previously:

* [Damian Stewart](http://damianstewart.com/) (damian) as sound leader</li>
* [Steve Varga](http://www.vargatron.com/) (vargatron) as typography leader</li>

A number of institutions have provided major support for openFrameworks through grants, donations, and as hosting partners for our international developer conferences. These events often require significant resources to bring together participants from many countries to a single location for multiple days.

<style>
img {
	text-align: center;
	margin: auto;
	display: block;
	border: 0;
};
</style>

**[Ars Electronica Festival and Futurelab](http://www.aec.at/)**

[![](logo-ars.png)](http://www.aec.at/)

We would like to thank the [Ars Electronica Festival and Futurelab](http://www.aec.at/) for sponsoring the OF Lab at Ars Electronica 2008.

**[Eyebeam](http://eyebeam.org/)**

[![](logo-eyebeam.png)](http://eyebeam.org/)

**[Ford Foundation](http://www.fordfoundation.org/)**

[![](logo-fordfoundation.gif)](http://www.fordfoundation.org/)

We would like to thank the [Ford Foundation](http://www.fordfoundation.org/) for sponsoring the second openFrameworks developers conference.

**[Parsons the New School for Design](http://amt.parsons.edu)**

[![](logo-parsons.png)](http://amt.parsons.edu)

**[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)**

[![](logo-sfci.png)](http://studioforcreativeinquiry.org/)

We would like to thank the [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/) for hosting the first openFrameworks developers conference, and providing other small grants and support to openFrameworks developers.

**[Yamaguchi Center for Arts and Media](http://www.ycam.jp/en/)**

[![](logo-ycam.png)](http://www.ycam.jp/en/)

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

----------------

design philosophy
--------

openFrameworks is guided by a number of goals: it should be collaborative, usable and simple, consistent and intuitive, cross-platform, powerful, and extensible. openFrameworks is also driven by a "do it with others" (DIWO) philosophy.

**Collaborative**

openFrameworks development is collaborative. It thrives on the contributions of [many people](https://github.com/openframeworks/openFrameworks/contributors), who engage in [frequent discussion](http://forum.openframeworks.cc/), and collaborate on [addons](http://ofxaddons.com/) and [projects](../gallery). We encourage people to make openFrameworks their own, and contribute to the ecosystem.

openFrameworks is developed in a collaborative way. We use git, a distributed versioning system, which means also that people can branch, experiment, and make suggestions. If you look at the network diagram on GitHub, it's looks like some alien diagram, full of weaving branches, code pulling apart and coming together. There's a huge community, all over the world, working on the core code: fixing bugs, submitting pull requests, and shaping the tool the way they want to see it. It's a world wide project, and it's common to wake up in the USA to an inbox full of pull requests and issues emails from coders in Asia and Europe. Over 70 people have contributed to the openFrameworks core directly, and hundreds of people have forked the code or contributed in other ways.

**Simplicity**

openFrameworks tries to balance usability and simplicity. The earliest versions of openFrameworks used the core as a tool for teaching C++ and OpenGL, but over time the examples have become the best way to learn while the core takes advantage of more advanced features. In exchange, we created many more examples that come with openFrameworks, with the goal of trying to make simple, hackable starting points for experimentation. 

We want openFrameworks to be as simple as possible, especially for folks coming from other languages and environments. C++ is a "large" language, large in the sense that you can write very different types of C++ code. If you go to the bookstore, you'll see hundreds of C++ books. We want to create a library where you don't need to be an expert, where at most you might need a book or two, but that the patterns, approaches and style of the code is simple and intuitive. We were especially interested in achieving a sort of parity with Processing, where many of the functions are similar, allowing easier movement from one framework to another.

**Consistent and Intuitive**

openFrameworks is consistent and intuitive: it should operate on the principle of least surprise, so that what you learn about one part of openFrameworks can be applied to other parts of it. Beginners can use openFrameworks to learn about common programming patterns, and advanced users will be able to apply their experience from other languages and toolkits.

Student first is the motto. A lot of the thinking guiding openFrameworks is: what would I would have liked in a tool 5 or 10 years ago? We want the patterns of coding to be simple and to make it as easy as possible to type. This means having self-explanatory function names like "play" and "stop" for video players, and variable names that are intuitive. We have lots of discussions about intuition, driven by a desire to make the code as straightforward as possible. You should learn by typing, autocomplete should be helpful, etc. 

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

If you are not a part of the group, welcome!

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
