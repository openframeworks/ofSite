<%inherit file="/_templates/markdown.mako" />

faq
=========

**why create another library for c++, since many libraries exist?**

True -- there are plenty of libraries that exist make it easier to make software, especially with openGL. For example, ogre, irrlicht, JUCE, SDL, wxWindows, etc. 

While they are quite useful to work with, we found that they weren't simple or "bare-bones" enough for our taste or for our purposes. We wanted to write a library that would be the bare minimum necessary to get started doing audio-visual work with c++.

Also, another difference is that these libraries likely have different intended audiences -- game developers, audio programmers, application developers, and so on. Our intended audience are folks using computers for creative, artistic expression, and who would like low level access to the data inside of media in order manipulate, analyze or explore. That audience we felt was significantly underserved by the current crop of C++ libraries.

**Why did you choose to wrap this library?**

We chose to work with the libraries that in our experience provide the cleanest and simplest API, the best licenses and the easiest integration. 

For example, we chose glut as the windowing library. Primarily, because it's fairly universal, has a good license and it's rare to find a compiler or platform that doesn't have a glut library working for it. We have used other windowing toolkits, such as glfw and wxWindows, and even hooked them up with openFrameworks, but in the end, we decided to go with the one of the easiest to get up and running.

**where can I see the latest version of the code?**

We have an SVN where you can follow the changes and modifications to openFrameworks. We also have a tarball system so that you could grab an exported version of the SVN as changes are made, if you are interested in following the small, day-to-day updates. We expect to post newer versions of openframeworks as often as we can online. 

Svn info is here: [http://wiki.openframeworks.cc/index.php?title=Svn][0]

If you are interested in becoming an active developer please let us know. We have a developer mailing list, that has quite an active conversation with addon developers and folks who are interested in discussing the future the OF project.

**who is developing openFrameworks?**

openFrameworks is developed by Zach Lieberman, Theo Watson and Aturo Castro, along with help from collaborators at Parsons School of Design, MediaLabPrado and Hangar Center for the Arts. We also receive love from Eyebeam openLab.

**what has been made with openframeworks?**

Plenty of fun and engaging things. See [vimeo][1], [flickr][2], [youtube][3], [twitter][4], [creative applications][5]

**how can I help?**

By making addons, helping improve the documentation and most importantly, by making tutorials or instructions. If you are using OF to make interesting things, post as much source, info and ideas as you can. If you are beginning, take notes about what's confusing and join us on the forum to ask questions and see what people are doing / thinking. 

**The library is distributed non-compiled, why is that?**

For several reasons -- first, it is practical. Because openFrameworks is by all means still a work in progress, we will be making changes to it as we go. By leaving the code visible, it makes those changes alot easier, and we get better feedback about problems and confusions. Second, it's educational, in that it gives the curious a good strating point for learning about c++ library wrangling. Third, it's an active invitation for users of openframeworks to change, modify and reconfigure the library to their tastes or whims.

We are, however, planning to release compiled versions of the OF library in future releases, since the compile times are getting a bit long and it would cut down on folder sizes. When we do, we will always include instructions about how to work with an uncompiled version of OF side by side with your source code. 

**how can I learn c++?**

We don't really expect that openFrameworks should be used as a teaching tool for c++, but we imagine that it might be a "first step" for those interested in dabbling with c++. We will try to promote an active community at the forum, so we would recommend you post some questions there. We would also recommend: 

*   this PDF which is one of the best documents we've seen about learning c++ (and in 5 days, no less!): [Philip Machanick -- C and C++ in 5 days.][6] 
*   this great guide by Zach Gage, [OF for processing users][7], that explains some of the differences to openframeworks and provides alot of good details. 
*   Joshua J Noble's Oreilly book "[Programming Interactivity][8]," covers openframeworks as well as processing and arduino.
*   cplusplus.com has a great [language tutorial][9] and [reference][10]
*   [StackOverflow][11] is a great community for asking general and more esoteric questions (search first before you ask!)
*   a good C++ tutorial for those that know C, [C++ tutorial for C users][12]
*   some more tutorials on [cprogramming.com][13]
*   [the lite C++ FAQ][14]
*   good for STL (Standard Template Library) reference: [cppreference.com/wiki/][15]
    

**why do you do mostly local linking?**

When you create a c++ application, you wind up having alot of libraries and additonal header code that your projects call. We've felt that the easiest structure to have is the following: 

at one level you have two folders:  

* app  
* libs  

The libs folder contains the version of openFramework you are using (all of the code) along with the other libraries that openFrameworks links and includes (glut, rtAudio, quicktime, freeImage and freeType).

The apps folder cantains projects that link to those particular libs:  
ie, search path: "../../libs/xxxxx/includes"

There are a some reasons for this -- first, libraries change (especially openframeworks!), and if you put them at a root level, instead of a local one, you could be in trouble if you update the library and then try to re-compile old code.

This also makes you projects more portable -- the less libraries you have to install on a given machine, the better.

Also, since the hard drive is not always "c:/" and the folder for program files is not always "Program Files" it can be quite hard for us and other OF users to make projects that can easily compile across different computers.

Finally, it means that beginning users can download the examples and get them to easily compile. It makes the example projecs easier to distribute.

The downside is the added file size to downloads. We will try to keep the examples file size down and in the future we might come up with an "expert" and "beginner" download path.

The trick, when you want to create a new project, is to copy and paste a working poject in the "apps" directory. This trick is described for dev-cpp here, for visual studio here and for xcode here. While we are working on creating wizards or tools for automatically making a good openFrameworks project, for the meantime we will suggest users to use cut and paste for making new projects.

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openframeworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openframeworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openframeworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/c++fqa/
[15]: http://www.cppreference.com/wiki/


