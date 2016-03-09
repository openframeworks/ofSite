## -*- coding: utf-8 -*-
.. title: msys2

[openFrameworks](/) | [Documentation table of contents](table_of_contents.md)

msys2
=====

msys2 설치
----------------

우선,[원클릭 인스톨러](https://msys2.github.io/)나 [코드 저장소](http://sourceforge.net/projects/msys2/files/Base/x86_64/)
에서 압축파일을 받아 압축을 직접 해제하여 MSYS2를 설치합니다.

만약 QtCreator를 사용할 예정이라면, msys2를 디폴트 경로인 c:\msys64에 설치하셔야 합니다.

**MSYS2 쉘** (`C:\msys64\msys2_shell.bat`)을 실행하고 시스템 패키지를 업데이트 합니다:

    pacman --noconfirm  --needed -Sy bash pacman pacman-mirrors msys2-runtime
	
쉘을 닫고, 새로 쉘을 연 다음 남아있는 패키지들을 업데이트 합니다:

    pacman --noconfirm -Su

이제 오픈프레임웍스를 설치할 준비가 되었습니다.


openFrameworks 설치하기
-------------------------

오픈프레임웍스의 qt **creator / msys2** 버전을 다운받아 압축을 해제합니다.

**MSYS shell** (`C:\msys64\msys2_shell.bat`)을 열고 오픈프레임웍스의 의존성 패키지를 설치합니다:
    cd your_oF_directory/scripts/msys2
    ./install_dependencies.sh`
	
Open an **MINGW32** shell (run `C:\msys64\mingw32_shell.bat`) and compile oF libraries:

    cd your_oF_directory/libs/openFrameworksCompiled/project
    make

You can speed-up compilation using parallel build `make -j4` or the number of cores you want it to use


Setting the PATH variable
-------------------------
On MSYS2, openFrameworks needs the dlls that are provided by MSYS2 package manager `pacman`. The PATH variable tells the system where to look for these dlls. On Windows, the system starts to look into the executable folder, then into the folders defined in system PATH and finally into the folders defined in user PATH.

You can find how to set the PATH in windows here: http://www.computerhope.com/issues/ch000549.htm

You'll need to add `c:\msys64\mingw32\bin` and `c:\msys64\usr\bin` to your PATH. There are two ways:

1. Either add them via 'Environment Variables' from the Control Panel > System > Advanced System Settings.
2. Or you can also set the PATH from the command line: open a Windows cmd prompt and set you user PATH.
```
setx PATH "c:\msys64\mingw32\bin;c:\msys64\usr\bin;%PATH%"
```

If you have administrative privileges, you can directly set the system PATH. All users will benefit of it...

That's all, now go to the your_oF_directory/examples folder, where you will find 
the examples, and have fun! 

Running examples
----------------
Compile the example (for example the 3DPrimitivesExample)

    cd your_oF_directory/examples/3d/3DPrimitivesExample
    make

At this point, `make run` or  double-click on the exe file to launch. 


Makefile
--------

Every example has a Makefile you can configure using the files config.make
and addons.make.

config.make: This file has options to add search paths, libraries, etc., the 
syntax is the usual syntax in makefiles, there's help comments inside the file.

addons.make: if you want to use an addon which is inside the addons folder, just 
add its name in a new line in this file.

QtCreator
---------

With msys2 you can also use QtCreator as an IDE, you can find more information in the corresponding [setup guide](../qtcreator):

FAQ / Common problems
--------------------- 
- "I have a TLSv1_1_client_method missing error" when I double-click the exe ?"

The executable looks for ssleay32.dll and libeay32.dll and it first finds a version that doesn't support TLS v1.1. Often it happens with Intel iCls software. The solution is to move the your_msys2_directory\mingw32\bin path before the conflicting path. If the conflicting path is in the system PATH and you do not have administrative privileges, copy/link ssleay32.dll and libeay32.dll from your_msys2_directory\mingw32\bin to the executable folder.

- "I'm on a corporate network with a proxy. I cannot download packages with pacman."

You may need to set HTTP_PROXY and HTTPS_PROXY environment variables.

    From a DOS/CMD prompt :    
    set http_proxy=http://your_proxy:your_port
    set http_proxy=http://username:password@your_proxy:your_port
    set https_proxy=https://your_proxy:your_port
    set https_proxy=https://username:password@your_proxy:your_port
Don't forget to escape special characters in your password...



 

many thanks!! OFteam

