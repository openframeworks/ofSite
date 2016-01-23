## -*- coding: utf-8 -*-
.. title: raspberry pi'


라즈베리파이 크로스 컴파일 가이드
============

## 소개

크로스컴파일러를 생성하는것은 고난이도의 과정이지만, 무거운 작업의 경우 매우 유용합니다.
이 가이드는 오픈프레임웍스 0.9.0에서 크로스컴파일러를 생성하는 구체적 방법들을 다룹니다. 이전 버전 릴리즈(OF 0.8.4/Wheezy)의 방법은 [Wheezy에서의 라즈베리파이 크로스 컴파일링 가이드](Raspberry-Pi-Cross-compiling-guide-Wheezy.html)를 참고해 주시기 바랍니다.

## 이거 정말로 필요하세요 ?

라즈베리파이2/arm7는 정말 빨라져서, 네이티브상에서 코어 4개를 모두 사용하여(`make -j4`옴션 사용) 오픈프레임웍스를 컴파일할 경우 15분 정도면 됩니다. 코드의 복잡도나 ofxAddons와 같은 부가 코드를 사용하기에 따라 다르지만 일반적으로 앱을 컴파일할 경우 훨씬 빠릅니다.

라즈베리파이1/arm6에서 오픈프레임웍스를 컴파일하는것은 이보다 훨씬 느려서 한시간 이상이 소요됩니다. 일반앱의 경우 빠르지만 여전히 느립니다.

데스크톱 PC상에서의 일반적인 크로스 컴파일 세팅시 OF 코어 라이브러리의 컴파일은 대략 3분정도 소요됩니다.

## 크로스 컴파일링 프로세스

크로스 컴파일을 사용하기 위해서는 몇가지 셋업이 필요합니다. 내용음 다음과 같습니다:

<h3>툴 체인</h3>

이것은 기본적으로 당신의 타깃 플랫폼을 이해하는 GCC의 커스텀 버전입니다. 오픈프레임웍스를 크로스컴파일하려면 컴파일러는 반드시 GCC 4.9를 지원해야 합니다. 이전버전의 GCC는 오픈프레임웍스가 필요로하는 C++ 11의 기능들을 충족하지 못합니다. 따라서 아쉽게도 [이전의 크로스 컴파일 도구](https://github.com/raspberrypi/tools)는 사용하지 못하며, 여러분이 직접 GCC를 빌드해줘야 합니다.

<!--<h3>Target Root File System</h3>-->
<h3>타겟 루트 파일 시스템</h3>
<!--This is a copy of the RPI's file system that the compiler will use to build openFrameworks and applications. It is a copy because you will need to manipulate certain files that if changed directly would cause the RPI to stop working.-->
이것은 컴파일러가 오픈프레임웍스와 어플리케이션을 빌드할때 사용할 라즈베리파이 파일시스템의 copy 입니다. 이것은 복사본인데, 만약 특정 파일을 변경할때 디렉토리가 변경되면 라즈베리파이가 동작을 멈추기 때문입니다.

## Makefile 변수들
<!--The openFrameworks Makefile system has some built-in variables that allow for easier cross-compiling. -->
오픈프레임웍스의 Makefile 시스템은 보다 쉽게 크로스 컴파일링을 할 수 있도록 도와주는 몇가지 내장 변수들을 가지고 있습니다.

<h3>TOOLCHAIN_ROOT</h3>
`TOOLCHAIN_ROOT`는 당신의 툴체인을 보관하고있는 디렉토리의 경로입니다. 만약 이 값을 전달해주지 않으면 OF는 기본값으로 `/opt/cross/bin`을 사용하게 됩니다.

<h3>GCC_PREFIX</h3>
<!--A toolchain is often set up with multiple architectures in order to cross-compile a project for multiple platforms. `GCC_PREFIX` is used to differentiate between these platforms.-->
툴체인은 프로젝트를 다양한 플랫폼을 위한 크로스 컴파일 자주 다양한 아키텍쳐들로 세팅됩니다. `GCC_PREFIX`는 이러한 플랫폼들을 구별해주기 위해 사용됩니다.

<!--For example, to compile for an RPI/Arch Linux target the prefix is often `armv6l-unknown-linux-gnueabihf`. For Raspbian it is commonly `arm-linux-gnueabihf`-->

예를들어, 라즈베리파이/Arch리눅스 를 타겟으로 하여 컴파일을 하려면, 접두사는 종종 `armv6l-unknown-linux-gnueabihf`가 됩니다. 라즈베리파이를 타겟으로 할때는 일반적으로 `arm-linux-gnueabihf`로 씁니다.

<!--If `GCC_PREFIX` is not passed in `arm-linux-gnueabihf` is assumed. The prefix is then added to `-g++`, `-gcc`, `-ar` and `-ld` to complete the paths to the compiler and linkers.-->
만약 `arm-linux-gnueabihf`로 설정되었을 시 `GCC_PREFIX`가 전달되지 않으면, 컴파일러와 링커에 경로를 완성하기 위해 접두사 뒤에는 `-g++`, `-gcc`, `-ar` 그리고 `-ld`가 붙게 됩니다.

<h3>RPI_ROOT</h3>
<!--`RPI_ROOT` is the Target Root File System previously described. This is required to be passed in and there is no default value.-->
`RPI_ROOT`는 앞에서 언급한 것처럼 타겟 루트 파일시스템입니다. 이는 초기값이 없고 반드시 전달되어져야 합니다.
<!--These variables are either passed in with the make command:-->

아래의 변수들은 make 명령어와 함께 전달되어야 합니다:
`make TOOLCHAIN_ROOT=/path/to/toolchain GCC_PREFIX=arm-linux-gnueabihf RPI_ROOT=/path/to/local_copy_of_pi_filesystem`

<!--or set via environmental variables-->
또는 환경 변수들로 세팅할 수 있습니다

`export TOOLCHAIN_ROOT=/path/to/toolchain`

`export GCC_PREFIX=arm-linux-gnueabihf`

`export RPI_ROOT=/path/to/local_copy_of_pi_filesystem`


<!--Using export allows you just use the shorter `make` command throughout a session. You can make these variables permanent by adding the export lines to the end of `~/.profile`.-->
export를 사용하므로써, 세션을 통해 `make`명령어를 축약하여 사용할 수 있습니다. 이 구문들을 `~/.profile` 파일의 끝에 라인을 추가하여 영구적으로 사용할 수 있습니다.

## 0.9.0 을 위한 크로스 컴파일링 가이드 
[맥에서, 가상머신을 통해 Debian 사용하기](http://forum.openframeworks.cc/t/cross-compiler-for-of-0-9-0-jessie-arm6-rpi1)

