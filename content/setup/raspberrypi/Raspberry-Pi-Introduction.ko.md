## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이
============


<!-- ## Welcome to openFrameworks and the RaspberryPi -->
## 라즈베리파이와 오픈프레임웍스에 오신것을 환영합니다
<!-- You are now entering the world of embedded linux development.  You'll be using mostly bash scripts, gcc, and your preferred commandline Text Editor.  It this world `screen` is your friend, from bash type [`man screen`](http://www.rackaid.com/resources/linux-screen-tutorial-and-how-to/) to learn more.  If you are completely new to the idea of doing linux development from a command line and have no idea what a commandline Text Editor is, you're in luck we'll show you how to get started and point you in the right direction to learn more. _Note: If you are a seasoned vet and use vim+regX to refactor your code move along to our [getting started guide](Raspberry-Pi-Getting-Started)_ -->
여러분은 지금 임베디드 리눅스 개발 세상에 들어오셨습니다. 이제부터 bash 스크립트, gcc, 선호하는 명령어라인 텍스트 편집기를 주로 사용하게 될 것입니다. 이곳에서는 `screen`이 여러분의 친구입니다. 보다 많은 정보는 bash에 [`man screen`](http://www.rackaid.com/resources/linux-screen-tutorial-and-how-to/)를 입력해보세요. 만약 여러분이 커맨드라인으로 리눅스에서 개발하는것에 무지하다거나, 커맨드라인 텍스트가 뭔지 전혀 모르겠다면, 운이 좋은겁니다! 여러분께 하나하나 올바른 방향으로 어떻게 시작할 것인지 알려드릴 테니깐요. _노트 : 여러분이 이미 짭짤한 베테랑이어서 vim+regX를 사용해 바로 코드를 적용하고 싶다면 [시작 가이드](Raspberry-Pi-Getting-Started)로 바로 넘어가세요_

<!-- ## The Bash Shell -->
## bash 쉘
<!-- [Bash](http://en.wikipedia.org/wiki/Bash_\(Unix_shell\)) is a command-line interpreter or shell that provides a traditional text based user interface to linux or *nix OS. If you use a Mac as your daily computer you have a bash terminal built right in, simply open Applications> Utilities >Terminal.  Bash lets you run command-line applications and utilities such as `mk-dir foo` which makes a new directory named `foo`.  Or you can use the copy command `cp` or move command `mv` to copy or move files or directories from one place to another _Note: for copying directories you will need to use `cp -R` for recursive copying._  You can also find out the IP address of your machine by running `ifconfig` from bash.   This will most likely spit out something like: -->
[Bash](http://en.wikipedia.org/wiki/Bash_\(Unix_shell\))는 커맨드라인 인터프리터로, 리눅스 또는 *nix 운영체제에서 전통적으로 제공되는 텍스트 기반 사용자 인터페이스를 제공하는 쉘입니다. 맥을 매일 사용하신 분들에겐 이미 bash 터미널이 내장되어 있는데, 응용프로그램>유틸리티>터미널 에서 찾을 수 있습니다. bash는 명령어라인 프로그램이나 유틸리티들을 실행할 수 있게 해줍니다. `mkdir foo` 라고 입력하면 `foo`라는 새 디렉토리를 만들지요. 혹은 `cp`라는 명령어나 `mv` 명령어로 파일또는 디렉토리들을 한곳에서 다른곳으로 복사/이동할 수 있습니다. _노트:디렉토리들을 복사할 때에는 `cp -R`이라고 입력해야하는데, 이는 재귀적(recursive)으로 복사하라는 의미입니다_ 또한 bash에서 컴퓨터가 사용하고 있는 IP를 확인할 수 있습니다. 대부분 아래와 같이 화면에 뱉어냅니다.

    pi@raspberrypi ~ $ ifconfig
    eth0      Link encap:Ethernet  HWaddr b8:27:eb:ca:c2:da 
              inet addr:192.168.2.7  Bcast:192.168.2.255  Mask:255.255.255.0
              UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
              RX packets:151 errors:0 dropped:0 overruns:0 frame:0
              TX packets:84 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:1000 
              RX bytes:19899 (19.4 KiB)  TX bytes:10646 (10.3 KiB)

     lo       Link encap:Local Loopback 
              inet addr:127.0.0.1  Mask:255.0.0.0
              UP LOOPBACK RUNNING  MTU:16436  Metric:1
              RX packets:8 errors:0 dropped:0 overruns:0 frame:0
              TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
              collisions:0 txqueuelen:0 
              RX bytes:1104 (1.0 KiB)  TX bytes:1104 (1.0 KiB)

<!-- For compiling the openFrameworks Core and an oF App we use `gcc` and GNU `make`.  GCC or the GNU Compiler Collection was originally written by [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman) the founder of the Free Software Foundation, GNU, Emacs, and a few other things.  GCC was around before Linux because you can't build the [Linux Kernel](http://en.wikipedia.org/wiki/Linux_kernel) without GCC and GNU make.  For more information on make please read the GNU make [manual](http://www.gnu.org/software/make/manual/make.html) or this [fine tutorial](http://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html).  -->
오픈프레임웍스 코어와 오픈프레임웍스 앱을 컴파일할때에는 `gcc`와 GNU `make`를 사용합니다. GCC(GNU Compiler Collection)는 자유 소프트웨어 재단(Free Software Foundation), GNU, Emacs, 그리고 몇몇 다른것들을 창시한 [Richard Stallman](http://en.wikipedia.org/wiki/Richard_Stallman)에 의해 처음 작성되었습니다. make에 관한 더 많은 정보는 GNU make [매뉴얼](http://www.gnu.org/software/make/manual/make.html)이나, [훌륭한 튜토리얼](http://www3.ntu.edu.sg/home/ehchua/programming/cpp/gcc_make.html)을 읽어보시기 바랍니다.

<!-- For more information on bash and [bash scripting](http://linuxconfig.org/Bash_scripting_Tutorial) please read this [bash tutorial](http://tldp.org/LDP/abs/html/) and [this wonderful pdf bash cheat sheet](http://dl.dropbox.com/u/397277/bash_shell_cheat_sheetV2.pdf) make a great reference.  -->
bash와 [bash 스크립트 작성](http://linuxconfig.org/Bash_scripting_Tutorial)에 관한 더 많은 정보는, [bash 튜토리얼](http://tldp.org/LDP/abs/html/)과 [훌륭한 pdf bash 치트 시트](http://dl.dropbox.com/u/397277/bash_shell_cheat_sheetV2.pdf)가 훌륭한 레퍼런스가 될 것입니다.

<!-- ## Picking a Text Editor -->
## 텍스트 편집기 고르기 
<!-- While some hardcore nerds and hackers like to [pick fights](http://en.wikipedia.org/wiki/Editor_war) over text editors, there is no right answer as to which one is the best. You have many to choose from but here are 3 that work very well.  [`nano`](http://en.wikipedia.org/wiki/GNU_nano) is a very simple text editor.  All of your commands are base of a [`control+Key`](http://mintaka.sdsu.edu/reu/nano.html) style, so if `control` is the [right place](http://emacswiki.org/emacs/MovingTheCtrlKey) it is very easy to use.  If you are first starting out I would suggest using `nano`.  [`emacs`](http://www.gnu.org/software/emacs/) is a very powerful text editor that [verges on being a complete IDE or OS](http://en.wikipedia.org/wiki/Emacs#Features).  We could spend weeks talking about Emacs but here is a [nice tutorial](http://www2.lib.uchicago.edu/keith/tcl-course/emacs-tutorial.html) to get started.   You might need to run `sudo apt-get install emacs` if your linux image doesn't include it by default.  Lastly, [`vim`](http://www.vim.org/) is the go to text editor for hardcore linux users.  But you can be hardcore too if you want to learn this [complicated beast](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html) via this [interactive tutorial](http://www.openvim.com/tutorial.html) or this [fun game](http://vim-adventures.com/). You will need to run `sudo apt-get install vim` to install it and `vi testpApp.cpp` to for example edit the ofApp.cpp file of a project. -->
몇 하드코어 너드와 해커들은 텍스트 편집기를 [뭘 쓸것인지를 가지고 싸우지만](http://en.wikipedia.org/wiki/Editor_war), 사실 올바른 정답은 없습니다. 여러분이 선택할 수 있는 편집기는 다양하지만, 잘 동작하는 세가지를 추천해드릴 수 있습니다. 

[`나노(nano)`](http://en.wikipedia.org/wiki/GNU_nano)는 아주 간단한 텍스트 편집기입니다. 모든 명령은 [`control+키`](http://mintaka.sdsu.edu/reu/nano.html)의 스타일을 따릅니다. 따라서 쉽게 사용하려면 `control`이 [올바른 위치](http://emacswiki.org/emacs/MovingTheCtrlKey) 입니다.쳐러분이 처음 시작한다면 `나노`를 추천해드리고 싶습니다.

[`이맥스(emacs)`](http://www.gnu.org/software/emacs/)는 아주 강력한 텍스 편집기로, [통합개발환경(IDE)이나 운영체제(OS)에 거의 가깝습니다](http://en.wikipedia.org/wiki/Emacs#Features). 아마도 이맥스에 대해서만 일주일동안 얘기할수 있겠지만, 여기 시작하기에 좋은 [멋진 튜토리얼](http://www2.lib.uchicago.edu/keith/tcl-course/emacs-tutorial.html)이 있습니다. 만약 여러분의 리눅스 이미지가 이맥스를 기본적으로 갖고 있지 않다면, `sudo apt-get install emacs`명령어를 실행해야 합니다.

마지막으로 [`빔(vim)`](http://www.vim.org/)은 하드코어 리눅스 유저를 위한 텍스트 편집기입니다. [인터랙티브 튜토리얼](http://www.openvim.com/tutorial.html)이나 요 [재밌는 게임](http://vim-adventures.com/)를 통해 [complicated beast](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)에 대해 배운다면 여러분도 하드코어 유저가 될 수 있습니다. 빔은 `sudo apt-get install vim` 명령어로 인스톨할 수 있습니다(역자 주 : 라즈베리파이에는 대부분 기본적으로 빔이 설치되어 있습니다). 예를들어 프로젝트의 ofApp.cpp파일을 편집하려면, `testApp.cpp` 명령어를 사용합니다.


<!-- ## What is a RaspberryPi -->
## 라즈베리파이란

<!-- The Raspberry Pi is a cheap (~$35) multimedia computer that is capable of running Linux (and other operating systems). -->
라즈베리파이는 저렴(35$ 이하)하면서 리눅스(와 다른 운영체제)를 구동할 수 있는 멀티미디어 컴퓨터입니다.

<!-- The primary development platform used for development is the Raspbian Wheezy Linux distro. It is currently optimized to use the hardware floating point processor and is significantly faster (from an openFrameworks perspective) than the Soft Float debian Wheezy image. -->
원래 개발을 위한 개발 플랫폼은 Raspbian Wheezy 리눅스 배포판이 사용되었었습니다. 이 배포판은 현재 하드웨어 부동소수점 처리(hardware floating point processor)에 최적화 되어있으며, soft float 데비안 wheezy 이미지보다 (오픈프레임 웍스 측면에서) 두드러지게 빨라졌습니다.
(역자 주 : HW/SW float의 내용은 [이곳:What do you mean by "soft float ABI" and "hard float ABI"?](https://www.raspbian.org/RaspbianFAQ#What_do_you_mean_by_.22soft_float_ABI.22_and_.22hard_float_ABI.22.3F)을 읽어보세요)

<!-- The Raspbian image provides `apt-get` style package management which is familar to Ubuntu and Debian users, and useful for developing with openFrameworks. -->
라즈비안 이미지는 `apt-get` 스타일의 패키지 관리를 제공합니다. 이는 우분투와 데비안 유저에게 익숙한데, 오픈프레임웍스로 개발할 때도 유용합니다.

<!-- Initial ArchLinux support is in progress.  It will closely mirror the existing desktop ArchLinux support. -->
최초의 아키리눅스 지원도 진행중입니다. 데스크탑용 아키리눅스 지원과 거의 비슷해질 것입니다.

<!-- Currently building apps with the `develop-raspberrypi` branch of this fork is very similar to the normal Linux build strategy for openFrameworks. -->
현재 라즈베리파이용 오픈프레임웍스 개발은 `develop-raspberrypi` 브랜치로 진행되며, 일반 리눅스용 개발 전략과 아주 흡사합니다.

<!-- The main differences include: -->
아래의 내용들을 포함해 큰 차이를 보입니다:

<!-- - An new makefile system.  This allows us to more easily configure the oF build environment to reflect the idiosyncrasies of the RPI hardware AND it allows us to quicky and easily exclude certain core oF features, files, headers, etc that won't work (without significant modifications) on the RPI.  The makefiles are heavily commented. -->
- 새로운 makrfile 시스템. 이는 라즈베리파이 하드웨어의 특이성을 반영한 빌드 환경을 보다 쉽게 설정할 수 *있고* 빠르고 쉽게 파일, 헤더 등 라즈베리파이에서 동작하지 않는 특정 오픈프레임웍스 코어의 특징들을 (특별한 수정 없이) 배제시킬 수 있습니다. makefile들은  중요하게 언급됩니다.
<!-- - A custom EGL-specific windowing and event handling system (via the `ofAppEGLWindow`).  Options for both Native and X11 windowing and input event management are available. -->
- 커스텀된 EGL-식 윈도우와 (`ofAppEGLWindow`를 통한) 이벤트 핸들링 시스템입니다. 네이티브와 X11 윈도우 그리고 입력 이벤트 관리들이 옵션으로 가능합니다.
