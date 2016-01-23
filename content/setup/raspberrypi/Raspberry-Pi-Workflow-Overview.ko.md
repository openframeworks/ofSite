## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이 워크플로우
============

<!-- To use openFrameworks on the Raspberry Pi you will be using a few different tools -->
라즈베리파이에서 오픈프레임월스를 사용하기 위해서는, 몇가지 다른 툴을 사용해야 합니다.

## Bash 쉘
<!-- A shell application provides a command line interface to the Raspberry Pi. Mac OS X ships with Terminal.app located at Applications > Utilities > Terminal. Windows users often use [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html). The shell is used to send commands to compile, run and stop applications.  -->
쉘 어플리케이션은 라즈베리파이에서 명령어 인터페이스를 제공합니다. 맥 OSX은 응용프로그램>유틸리티>터미널 에 위치한 터미널.app이 제공됩니다. 윈도우는 대체로 [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)를 사용합니다. 쉘은 어플리케이션을 컴파일/실행, 중단하는 명령을 전달할 때 사용됩니다.

<!-- ## Text Editor   -->
## 텍스트 편집기
<!-- You will need a text editor to edit source code. If you are already a Linux user you undoubtably have a preferred text editor. For the sake of consistency, this guide will use [`nano`](http://en.wikipedia.org/wiki/GNU_nano) as it is popular in the Raspberry Pi community and conveniently has important commands listed at the bottom of the window. -->
소스코드 편집을 위해 텍스트 편집기를 사용합니다. 여러분이 이미 리눅스 사용자라면 두말할 필요없이 이미 선호하는 텍스트 편집기가 있을겁니다. 일관성을 유지하기 위해, 이 가이드는 라즈베리파이 커뮤니티에서 아주 유명한 [`나노(nano)`](http://en.wikipedia.org/wiki/GNU_nano)를 사용할 것입니다. 또한 화면 하단에 이와 관련한 중요 명령어들도 정리되어있으니 읽어보시기 바랍니다.

<!-- ## File Browser -->
## 파일 브라우저
<!-- Although you can do all copy/move/edit operations through a shell, you may prefer to use an Desktop text editor to edit source code or the Apple Finder/Windows Explorer to manipulate files. In order to to this you will need to setup some services that allow you to mount the Raspberry Pi as a hard drive. [Here is a guide to setting up Samba, a good cross-platform solution.](Raspberry-Pi-SMB.html) -->
비록 쉘에서 복사/이동/편집을 다 할 수 있지만, 아마도 데스크탑상에서 텍스트 편집기로 소스코드를 수정하거나, 애플의 파인더/윈도우의 탑색기로 파일을 조작하는것을 선호할 수도 있습니다. 이러할 경우 라즈베리파이를 마운트하여 하드디스크처럼 사용할수 있는데, 이를 위해 몇가지 셋업이 필요합니다. [여기에 크로스 플랫폼 해결책으로, 삼바를 세팅하는 가이드가 있습니다](Raspberry-Pi-SMB.html).

## 유용한 정보들
[make](http://www.gnu.org/software/make/manual/make.html)   
[Bash 튜토리얼](http://linuxconfig.org/Bash_scripting_Tutorial)   
[Bash 치트 시트 pdf](http://dl.dropbox.com/u/397277/bash_shell_cheat_sheetV2.pdf)      
[나노(nano)](http://en.wikipedia.org/wiki/GNU_nano)   
[나노 가이드](http://mintaka.sdsu.edu/reu/nano.html)   
[이맥스(emacs)](http://www.gnu.org/software/emacs/)   
[이맥스 기능 정리](http://en.wikipedia.org/wiki/Emacs#Features)   
[이맥스 튜토리얼](http://www2.lib.uchicago.edu/keith/tcl-course/emacs-tutorial.html)   
[빔(vim)](http://www.vim.org/)   
[빔 치트 시트/튜토리얼](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)   
[빔 인터페이스 튜토리얼](http://www.openvim.com/tutorial.html)   
[빔 게임](http://vim-adventures.com/)   


