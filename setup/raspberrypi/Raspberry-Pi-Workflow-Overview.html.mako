## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />
${'''

Raspberry Pi Workflow
============

To use openFrameworks on the Raspberry Pi you will be using a few different tools

## Bash Shell    
A shell application provides a command line interface to the Raspberry Pi. Mac OS X ships with Terminal.app located at Applications > Utilities > Terminal. Windows users often use [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html). The shell is used to send commands to compile, run and stop applications. 

## Text Editor    
You will need a text editor to edit source code. If you are already a Linux user you undoubtably have a preferred text editor. For the sake of consistency, this guide will use [`nano`](http://en.wikipedia.org/wiki/GNU_nano) as it is popular in the Raspberry Pi community and conveniently has important commands listed at the bottom of the window.

## File Browser    
Although you can do all copy/move/edit operations through a shell, you may prefer to use an Desktop text editor to edit source code or the Apple Finder/Windows Explorer to manipulate files. In order to to this you will need to setup some services that allow you to mount the Raspberry Pi as a hard drive. [Here is a guide to setting up Samba, a good cross-platform solution.](Raspberry-Pi-SMB.html)

## Useful resources  
[make](http://www.gnu.org/software/make/manual/make.html)   
[Bash Tutorial](http://linuxconfig.org/Bash_scripting_Tutorial)   
[Bash cheat sheet pdf](http://dl.dropbox.com/u/397277/bash_shell_cheat_sheetV2.pdf)      
[nano](http://en.wikipedia.org/wiki/GNU_nano)   
[nano guide](http://mintaka.sdsu.edu/reu/nano.html)   
[emacs](http://www.gnu.org/software/emacs/)   
[emacs feature list](http://en.wikipedia.org/wiki/Emacs#Features)   
[emacs tutorial](http://www2.lib.uchicago.edu/keith/tcl-course/emacs-tutorial.html)   
[vim](http://www.vim.org/)   
[vim cheat sheet/tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)   
[vim interactive tutorial](http://www.openvim.com/tutorial.html)   
[vim game](http://vim-adventures.com/)   

'''}

