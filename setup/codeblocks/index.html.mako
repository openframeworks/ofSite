<%inherit file="/_templates/markdown.mako" />

code::blocks setup guide
=========================


We like codeblocks for windows development since it's light weight, and avoids some of the quirkiness of windows visual studio. here's a step by step tutorial to get up and running.

**a) download code::blocks binary (latest release)**

[Download Code::Blocks][0] note: download WITH mingw.   The latest version 10.05, works well. 


![a_download](codeblocks.png)  



**b) install**


![b_install](http://www.openframeworks.cc/wp-content/uploads/2009/07/b_install.png)  


**c) you don't have to change anything**


![c_setup](http://www.openframeworks.cc/wp-content/uploads/2009/07/c_setup.png)  


**d) I chose not too, since code::blocks is not my primary IDE**


![d_assoc](http://www.openframeworks.cc/wp-content/uploads/2009/07/d_assoc-640x378.png)


**e) add files to mingw**


similar to devcpp, we will have to add a few libraries to devcpp. you can download the files :

> [additions for codeblocks to work with OF][1]


in the zip there are two folders, you need to put the **contents** of them into the contents of folders in mingw.

*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_include**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\include**" (or wherever your app\\mingw\\include is)
*   add the _contents_ of the folder "**add\_to\_codeblocks\_mingw\_lib**" into "**C:\\Program Files\\CodeBlocks\\MinGW\\lib**" (or wherever your app\\mingw\\lib is)
    

![e_putInMingw](http://www.openframeworks.cc/wp-content/uploads/2009/07/e_putInMingw-640x446.png)



note: if you have already installed dev-c++, make sure that CB picks the right mingw folder (c:/program files/cb/mingw), it has a tendancy to default to c:/mingw, where devc++ installs... [more info on this][2]

**As always have fun!**

[0]: http://www.codeblocks.org/downloads/26
[1]: http://www.openframeworks.cc/content/files/codeblocks_additions.zip
[2]: http://www.openframeworks.cc/forum/viewtopic.php?f=18&t=793


