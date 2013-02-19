<%inherit file="/_templates/markdown.mako" />

code::blocks setup guide
========================

**Please note: the new version of code::blocks (12.11) is not compatible with openFrameworks versions 0073 and lesser. It will work with 0.7.4 (forthcoming) and what's on the develop branch of github. This is because of a change in the compiler which makes libraries compiled with an older compiler incompatible with the newer compiler. If you are using OF 0073 or lesser, use [code::blocks 10.05][0].**

We like Code::Blocks for Windows development since it's light weight, and avoids some of the quirkiness of windows visual studio. here's a step by step tutorial to get up and running.
Note: Step e) is required to run OF. Please do not skip this step. 

**a) Download Code::Blocks binary (latest release)**

[Download Code::Blocks][1] note: download *WITH* mingw. Code::Blocks version 12.11 works well with openFrameworks 0.7.4+. 

![a_download](codeblocks.png)  


**b) Install**

![b_install](b_install.png)  


**c) You don't have to change anything**

![c_setup](c_setup.png)  


**d) I chose not too, since code::blocks is not my primary IDE**

![d_assoc](d_assoc-640x378.png)


**e) Add files to mingw**


Similar to devcpp, we will have to add a few libraries to devcpp. You can download the files :

> [additions for code::blocks to work with openFrameworks][2]


In the zip there are two folders, you need to put the **contents** of them into the contents of folders in mingw.

*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_include**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\include**" (or wherever your app\\mingw\\include is)
*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_lib**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\lib**" (or wherever your app\\mingw\\lib is)
    

![e_putInMingw](e_putInMingw-640x446.png)

These are additional libs and header files that need to be added to the MinGW distribution that comes with code::blocks. 

Here's a quick video which shows what this should look like: [copy steps for codeblocks][3]
<iframe src="http://player.vimeo.com/video/33985058" width="500" height="313" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>



**As always have fun!**

[0]: http://www.codeblocks.org/downloads/26
[1]: http://www.codeblocks.org/downloads/5
[2]: http://www.openframeworks.cc/content/files/codeblocks_additions.zip
[3]: http://vimeo.com/33985058


