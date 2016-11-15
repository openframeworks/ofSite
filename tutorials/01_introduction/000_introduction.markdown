---
.. author: Jeff Crouse <jeff@crouse.cc>
.. title: ofTutorials - Introduction
.. date: 2013/09/01 10:00:00
.. author_site: http://www.jeffcrouse.info
.. summary: This chapter will introduce openFrameworks and prepare you to start your first project.
---

This chapter will introduce openFrameworks and prepare you to start your first project.

## What is OpenFrameworks?

> openFrameworks is an [open source](/about/license.html) C++ toolkit designed to assist the creative process by providing a simple and intuitive framework for experimentation. The toolkit is designed to work as a general purpose glue, and wraps together several commonly used libraries, including:

- [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [GLFW](http://www.glfw.org/), [libtess2](https://code.google.com/p/libtess2/) and [cairo](http://cairographics.org/) for graphics
- [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/) or [FMOD](http://www.fmod.org/) and [Kiss FFT](http://kissfft.sourceforge.net/) for audio input, output and analysis
- [FreeType](http://freetype.sourceforge.net/index2.html) for fonts
- [FreeImage](http://freeimage.sourceforge.net/) for image saving and loading
- [Quicktime](http://developer.apple.com/quicktime/) and [videoInput](https://github.com/ofTheo/videoInput) for video playback and grabbing
- [Poco](http://pocoproject.org/) for a variety of utilities

The code is written to be massively cross-compatible. Right now we support five operating systems (Windows, OSX, Linux, iOS, Android) and four IDEs (XCode, Code::Blocks, and Visual Studio and Eclipse). The API is designed to be minimal and easy to grasp.

Simply put, openFrameworks is a tool that makes it much easier to make things with code. We find it super useful, and we hope you do too.

openFrameworks is actively developed by [Zach Lieberman](http://thesystemis.com/), [Theodore Watson](http://muonics.net/), and [Arturo Castro](http://arturocastro.net/), with help from the [OF community](/community/). openFrameworks is indebted to two significant precursors: [Processing development environment](the http://processing.org/), created by [Casey Reas](http://reas.com/), [Ben Fry](http://benfry.com/) and the Processing community; and the ACU Toolkit, a privately distributed C++ library developed by Ben Fry and others in the [MIT Media Lab's Aesthetics and Computation Group](http://acg.media.mit.edu/).

Some of these packages, like OpenGL, will be explored in more depth in other parts of the documentation. Most of them do their thing in the background and you will probably never have to worry about them. Each of these libraries have their own syntax, conventions, and quirks, but the beauty of openFrameworks is that you don't have to worry about them -- oF is a single, consistent interface to the functionality that these other libraries provide.

#### Q&A

- *Is it a program?* OF is not itself a [program](http://en.wikipedia.org/wiki/Computer_program) or an [application](http://en.wikipedia.org/wiki/Software_application), but you can use OF to write your own programs and applications.

- *Is it a programming language?* OF does not constitute its own [programming language](http://en.wikipedia.org/wiki/Programming_language), the language you use to write programs with OF is [C++](http://en.wikipedia.org/wiki/C%2B%2B[).

- *So it's a library?* OF is in fact made up of several [software libraries](http://en.wikipedia.org/wiki/Software_library) but the specific way it integrates these libraries together is more appropriately called a software framework.

- *What is a software framework?* A [software framework](http://en.wikipedia.org/wiki/Software_framework) is a kind of pre-fabricated software infrastructure designed to provide all of the low level functionality needed for an application while allowing a programmer to customize the higher level details of what that application should do. One way that using a framework differs from using a library is that the flow of control is [inverted](http://en.wikipedia.org/wiki/Inversion_of_control). A library can be directly controlled by your code to perform a set of general tasks. In a framework your code responds to events controlled by the framework and uses the framework as an interface to access the functionality of other libraries.

Sounds complicated?

In fact many other multimedia authoring environments work this way even if they do so less transparently.

Consider this loose analogy: You are writing and directing your own film and have decided to work with a film production company. The production company reserves the location, provides all of the infrastructure, finds the camera crew, lighting director, sound engineer and other important staff. It makes sure everyone is on the set on time and doing their job when they should, including you. Your job is to define what happens on the set once everyone is ready. OpenFrameworks is like a film production company for your program. It takes care of the administrative and logistical details and allows you to concentrate on your creative vision.

## C++ is a programming language

We learned in the last section that openFrameworks is *not* a programming language, but rather a software framework for creating [`C++`](http://en.wikipedia.org/wiki/C%2B%2B) programs. But what is C++?

NOTE: This documentation aims to guide you through openFrameworks, during which you will become comfortable with the `C++` language. But it is beyond its scope to delve too deeply into a bottom-up introduction to `C++`, so if that is what you are after, you'll have better luck with the sites listed in the Additional Resources appendix.

`C++` is an extension of [the C language](http://en.wikipedia.org/wiki/C_(programming_language), which was developed in 1979 at Bell Labs. They are both general purpose computing languages that can be run on virtually any computing platform in the world. The most basic C++ program looks like this:

```cpp
// my first program in C++

#include <iostream>
using namespace std;

int main()
{
  cout << "Hello World!\n";
  return 0;
}
```

TIP: You can get a line-by-line breakdown of this program in the [cplusplus.com "Structure of a program"](http://www.cplusplus.com/doc/tutorial/program_structure/) tutorial.

After being run through a compiler, this code will create a fully executable program. It is an exceedingly simple command-line program that simply prints "Hello World!" to the console, but a program nonetheless. You can try it yourself by following these steps:

WARNING:  This process will vary slightly depending on platform. The following instructions are for the Mac OS, and you must have XCode installed to run them.

### Compiling your First C++ program

![IMG](PlainText.png)

- Paste the code above into a text file and save it on your Desktop as *hello.cpp*.( If you are using TextEdit, make sure you specify that you want to save it as "plain text", not "rich text" or anything else.)
- On mac, go into /Applications/Utilities and double-click on Terminal.app. On linux, open the terminal.
- Type the following into the Terminal window, pressing enter after each line:

```bash
cd Desktop
g++ -o hello hello.cpp
./hello
```

- Navigate ("change directory") to the Desktop
- Use the [g++](http://gcc.gnu.org/) program to compile hello.cpp (the source code file) into a program called "hello"
- Execute the "hello" program that you just created

The result should look like this:

![IMG](HelloWorld.png)

Congratulations, you've just created (and then run) your first C++ program!  You should see something that looks like this on your Desktop:

![IMG](hello.png)

This might not look like other programs that you are used to -- programs with flashy custom icons that launch windows and use graphics and such -- but it's a program nonetheless. In fact, if you dig deep enough, every program on your computer boils down to a something just like the 'hello' program you just created. The rest is just bells and whistles.

IMPORTANT: I can hear some people panicking right now, but don't worry! Things get much more exciting when we start playing with oF. This example was only meant to illustrate the low-level basics of C++. Hopefully you will never have to compile a command line program on the command line again.

### What is a compiler? and an IDE?

If you have used a program like Flash or Processing, you are familiar with the process of writing some code and then "pressing play" to see it in action. This is called *compilation* or *compiling*, and it's what we just did in the previous section. If you are familiar with video editing, compiling is somewhat similar to rendering. The idea is that you must translate the code that is "human readable" into a format that your computer can execute. C, C++, Java, Objective-C, Fortran, Lisp, Pascal... these are all [compiled languages](http://en.wikipedia.org/wiki/Compiled_language). As cryptic as they may seem, all of these languages are supposed to be "human readable". They were created specifically to be written, read, and understood by humans. But no matter which language you start with, in the end, it has to be translated into something your computer can understand. Namely, [machine code](http://en.wikipedia.org/wiki/Machine_code).

NOTE: Some languages, such as PHP and Python are known as "scripting languages."  They still require compiling, but it happens right before the program executes.

The program that does the job of taking your code and translating it into machine code is called the *compiler*. [GCC](http://gcc.gnu.org/) is one of the most popular compilers. It can compile lots of different languages. GCC is great for compiling, but knowing exactly how to tell the program exactly what you want to do is the subject of much headache and frustration. In the previous section, we compiled a program with the simple command "g++ -o hello hello.cpp", but once you start doing stuff like using existing libraries, optimizing code for particular processors, bundling your application with resources like images, etc., all bets are off. Telling GCC to compile even a moderately complicated openFrameworks project takes hundreds of lines of isoteric syntax and invoking dozens of helper tools. It's super complex.

So instead, most developers use [IDEs (Integrated Development Environments)](http://en.wikipedia.org/wiki/Integrated_development_environment) to organize and create code projects. Most IDEs will include a text editor, a file organizer, a compiler, and lots of GUI interfaces for customizing all of the options and details of the compilation process. [Some popular IDEs are](http://en.wikipedia.org/wiki/Comparison_of_integrated_development_environments): XCode, Visual Studio, QtCreator, CodeBlocks, Eclipse, NetBeans. There are IDEs for every operating system and language. Some IDEs are for one specific language and some support many.

You *might* be able to get away with calling stuff like Flash, Processing, VVVV, and MaxMSP IDEs -- most of the important features are there. The difference is that IDEs are typically blank slates -- they don't come with any specific functionality. The other tools, on the other hand, come with lots of built-in functionality that is usually optimized for a particular purpose. For instance, Flash compiles programs to be run on the web, while Processing is a rapid prototyping tool.

openFrameworks definitely comes with a lot of functionality. The difference with openFrameworks is that it doesn't come with it's own IDE. Technically, you can use whatever IDE you want to create an openFrameworks project, but just as interfacing with a compiler can be difficult, the process of setting up a project of any complexity in an IDE can also be complex and tedious. One of the great things about openFrameworks is that it provides starting points for several IDEs on the 3 major platforms. They've done the hard work of creating project templates for 3 different IDEs on the 3 major platforms so all you have to do is download and start coding.

To get started working with openFrameworks, you will want to download and install an IDE for your operating system. Guides for installations can be found [here](/download).

### What Can I Make with oF?

The following collection of projects is an attempt to illustrate the range of different kinds of projects that have been built using openFrameworks.


#### Puppet Parade

by Emily Gobeille and Theo Watson

> Puppet Parade is an interactive installation by Emily Gobeille and Theo Watson of Design I/O that allows children to use their arms to puppeteer larger than life creatures projected on the wall in front of them. This dual interactive setup allows children to perform alongside the puppets, blurring the line between the ‘audience’ and the puppeteers and creating an endlessly playful dialogue between the children in the space and the children puppeteering the creatures.

<iframe src="http://player.vimeo.com/video/34824490?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[More Information](http://www.creativeapplications.net/openframeworks/puppet-parade-openframeworks/)


#### Interactive Wall at UD

>The 36-foot wall at the University of Dayton’s admission center engages prospective students and reveals videos of student life at UD. The wall displays continuously changing patterns of generative graphics, which respond to the presence of people in front of the wall.

>The field of cubes is animated with waves of activity, and a viewer’s presence causes them to rotate and unveil POV videos of a student experience. The viewers can explore the videos moving around to reveal different video fragments. When viewers stand together, their silhouettes join to reveal more of the video. When no one is present in the interaction area the installation displays typographic animations overlaid on the dynamically animated graphic patterns.

For more video documentation and details of design and development process see [Case Study](the http://www.flightphase.com/main_wp/case-studies/ud-interactive-wall).

<iframe src="http://player.vimeo.com/video/27500054?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

[More information](http://www.flightphase.com/main_wp/expanded-media/interactive-wall-at-ud)

#### Scramble Suit
by Arturo Castro and Kyle McDonald

One great thing about openFrameworks is that how easy to incorporate C++ code from pretty much any library. To that end, Arturo and Kyle used a [Face Tracker library by Jason Saragih](http://web.mac.com/jsaragih/FaceTracker/FaceTracker.html) to create a face-replacement technique that Kyle named "Scramble Suit" inspired by fictional technology from Philip K. Dick’s 1977 novel, "A Scanner Darkly". It’s effectively a cloak that hides the identity of the wearer by making it impossible to describe or remember them.

<iframe src="http://player.vimeo.com/video/29391633?title=0&amp;byline=0&amp;portrait=0" width="640" height="360" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>


#### Why openFrameworks?

openFrameworks is not the only creative coding framework out there. So why should you (or shouldn't you) use openFrameworks?

- It is portable, the code that you write can run on mac, linux and windows.
  With some adjustments, you can even port your application to Android and
  iOS. And since the release 0.9 it is also possibe to run your sketch in the
  browser.

- It is a generic tool that covers different fields, 2D and 3D graphics,
  computer vision, sound and music computing, deep learning, ecc... Being able to work with one tool in
  different fields favorites the intersection of different disciplines.  

- It supports a long list of different hardware. When not directly or with the core addons, there are large possibility that someone has written an [addon](http://www.ofxaddons.com/categories/4-hardware-interface) for the hardware you are looking for. 

- It has a large and active community that can support you.

#### Additional oF Resources

- [About openFrameworks](/about/) More about openFrameworks, including the design methodology.
- [Official Documentation](/documentation/) Where you can find descriptions of classes and functions that make up openFrameworks
- [oF Forum](http://forum.openframeworks.cc/)Probably the best place to get your questions answered
- [Programming Interactivity](http://www.amazon.com/Programming-Interactivity-Designers-Processing-Openframeworks/dp/0596154143) A great book that covers openFrameworks, Processing, and Arduino.
- [Creative Applications](http://www.creativeapplications.net/)
