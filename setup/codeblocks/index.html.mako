<%inherit file="/_templates/markdown.mako" />

code::blocks setup guide
=========================


We like codeblocks for windows development since it's light weight, and avoids some of the quirkiness of windows visual studio. here's a step by step tutorial to get up and running.

**a) download code::blocks binary (latest release)**

[Download Code::Blocks][0] note: download WITH mingw.   The version 10.05, works well. 

Note: Currently the new C::B build 12.11 doesn't work with OF. We are working on an update to OF to support 12.11, but in the meantime please download version 10.05. 


![a_download](codeblocks.png)  



**b) install**


![b_install](b_install.png)  


**c) you don't have to change anything**


![c_setup](c_setup.png)  


**d) I chose not too, since code::blocks is not my primary IDE**


![d_assoc](d_assoc-640x378.png)


**e) add files to mingw**


similar to devcpp, we will have to add a few libraries to devcpp. you can download the files :

> [additions for codeblocks to work with OF][1]


in the zip there are two folders, you need to put the **contents** of them into the contents of folders in mingw.

*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_include**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\include**" (or wherever your app\\mingw\\include is)
*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_lib**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\lib**" (or wherever your app\\mingw\\lib is)
    

![e_putInMingw](e_putInMingw-640x446.png)

These are additional libs and header files that need to be added to the MinGW distribution that comes with codeblocks. 

here's a quick video which shows what this should look like:  [copying codeblocks](http://vimeo.com/33985058)


**As always have fun!**

[0]: http://www.codeblocks.org/downloads/5
[1]: http://www.openframeworks.cc/content/files/codeblocks_additions.zip
[2]: http://www.openframeworks.cc/forum/viewtopic.php?f=18&t=793


