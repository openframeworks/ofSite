## -*- coding: utf-8 -*-
.. title: raspberry pi


라즈베리파이 DISTCC 가이드
============

##distcc
<!-- _This guide is recommended for developers who are working on the openFrameworks core or projects that have lots of source files.  For some users, the speed of a native Raspberry Pi build (as outlined in our getting started guide), might be just fine.  For those who need speed, see below!_ -->
_이 가이드는 많은 소스파일로 이루어진 프로젝트나 오픈프레임웍스 코어를 갖고 작업하는 개발자들에게 추천됩니다. 일반 유저들에게는, 라즈베리파이의 빌드 속도(시작하기 가이드에 의할 경우)가 아마 문제 없을겁니다. 속도가 더 필요하신 분들은, 아래를 봐주세요!_ 

<!-- `distcc` is a program that enables a single "master" computer (the Raspberry Pi in our case) to distribute its compiling load to other "helper" machines (a multi-core Ubuntu Linux machine) over the network.  In standard mode, source files are preprocessed on the Raspberry Pi, compressed and sent to the helper machine for compiling.  The helper machine, which in this case is running an arm-compatible cross-compiler, compiles the object files (.o files) and sends them back to the Raspberry Pi.  Once the Raspberry Pi has received all of the object files, it will then link them into a library or executable.   -->
`distcc`는 하나의 "마스터" 컴퓨터(우리의 경우 라즈베리파이)가 컴파일하는 부하를 다른 "헬퍼" 머신(멀티코어 우분투 리눅스 머신)으로 네트워크를 통해 분산시킬 수 있도록 해주는 프로그램입니다. 일반적인 모드에서, 소스파일은 라즈베리파이상에서 사전처리(preprocessed)된 뒤, 압축되어 컴파일을 위해 다른 헬퍼 머신으로 보내어집니다. 이 경우 헬퍼 머신에서는 arm호환 크로스 컴파일러가 동작하여, object파일(.o file)을 컴파일하고, 이것을 다시 라즈베리파이로 되돌려줍니다. 라즈베리파이가 object 파일을 모두 받으면, 이것들을 연결하어 라이브리나 실행가능한 파일로 만듭니다.

<!-- It is also possible to distribute preprocessing using `distcc-pump`, but this feature is not explored below. -->
`distcc-pump` 명령어를 사용하여 분산 사전처리를 수행할 수도 있지만, 이 기능은 제외하였습니다.

<!-- _Note: On OS X.  You can install a Ubuntu "helper" machine running inside Parallels 8.  Networking for the Ubuntu instance is set to _BRIDGED_ allowing it to be accessible to the Raspberry Pi on the same network. In Windows you can use a similar setup with any vm tool like vmware or virtualbox. In Linux you can just follow the next steps without installing a vm, the compiler will run on your machine directly_ -->
_노트: 맥 OS X에서는, 페러럴즈 8을 이용해 우분투 "헬퍼" 머신을 구동할 수 있습니다. 우분투 인스턴스를 _BRIDGED_로 네트워크 세팅을 하면 같은 네트워크상에서 라즈베리파이로 접근할 수 있습니다. 윈도우즈에서는 vmware나 virtualbox같은 가상머신 도구로 비슷한 세팅을 할 수 있습니다. 리눅스의 경우에는 가상머신을 설치할 필요 없이 바로 다음 단계로 넘어가시면 되며, 컴파일러는 리눅스 머신에서 직접 구동됩니다._

<!-- ### __On the Ubuntu Machine__  -->
### __우분투 머신에서__  

<!-- * Install dependencies -->
* 의존성 패키지 설치하기
    * `sudo apt-get install mercurial bison flex texinfo automake curl`
    * `sudo apt-get install build-essential libncurses-dev libtool gawk gperf`
    <!-- * if you are using a 64bit linux distribution you'll need to install also: -->
    * 만약 64비트 리눅스 배포판을 사용한다면, 하단의  명령어를 추가로 설치해줘야 합니다:
    * `sudo aptitude install ia32-libs`
    
<!-- * Download the Raspberry Pi compiler for linux -->
* 리눅스를 위한 라즈베리파이 컴파일러 다운받기
    <!-- * you can download it as a zip or clone the repo at from [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/) -->
    * [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/)에서 zip파일로 받거나 clone할 수 있습니다.
    <!-- * rename the folder to something more identifiable like rpi-tools, we'll refer to this path as $RPI_TOOLS from now on -->
    * rpi-tools와 같은 구별될 수 있는 이름으로 폴더이름을 변경합니다. 이 폴더는 이제부터 `$RPI_TOOLS`로 조회될 것입니다.

<!-- * Install and configure `distcc` on the Ubuntu Helper machine -->
* 우분투 헬퍼머신에 `distcc`를 설치하고 설정하기
    * `sudo apt-get install distcc`
    *  `/etc/default/distcc`를 편집한다 (예시: `sudo vi /etc/default/distcc`)
        * Change `STARTDISTCC="false"`를 `STARTDISTCC="true"`로 변경한다.
        <!-- * Change `ALLOWEDNETS="127.0.0.1"` to include the network IP addresses of your Raspberry Pis  -->
        * `ALLOWEDNETS="127.0.0.1"`를 라즈베리파이의 네트워크 IP주소가 포함되도록 한다.
            <!-- * _Note: Addresses use CIDR notation.  To allow your `localhost` AND IP addresses in the range `192.168.1.0-192.168.1.255` use this `ALLOWEDNETS="127.0.0.1 192.168.1.0/24`._ -->
            * _노트: 주소들은 CIDR 표기법을 따릅니다. `localhost` 와 `192.168.1.0-192.168.1.255` 범위내의 IP 주소들을 허용하려면, `ALLOWEDNETS="127.0.0.1 192.168.1.0/24`로 작성합니다._
            <!-- * _Note: If you want help with CIDR notation, you can use the calculator [here](http://www.subnet-calculator.com/cidr.php)._ -->
            * _노트: 만약 CIRD 표기에 도움이 필요하면, [이곳](http://www.subnet-calculator.com/cidr.php)의 계산기를 사용할 수 있습니다._
        * `ZEROCONF="false"`를 `ZEROCONF="true"`로 변경한다.
        <!-- * Change `LISTENER="127.0.0.1"` to `LISTENER=""` in order to listen for incoming connections all any network interface (not just the `localhost/127.0.0.1`). -->
        * (`localhost/127.0.0.1`뿐만 아니라) 모든 네트워크 인터페이스에서 들어오는 접속을 허용하도록 `LISTENER="127.0.0.1"`를 `LISTENER=""`로 수정합니다.
    * `/etc/init.d/distcc`룰 편집한다 (예시: `sudo vi /etc/init.d/distcc`)
        * `PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin`을 `PATH=$RPI_TOOLS/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin`로 변경한다.
            <!-- * _Note: $RPI_TOOLS should be the path were you installed the raspberry pi compiler before._ -->
            * _노트: $RPI_TOOLS는 이전에 라즈베리파이를 설치할때 지정했던 경로가 되어야 합니다._
            
<!-- * Start `distcc` on your Ubuntu machine -->
* 우분투 머신에서 `distcc`를 시작한다.
    <!-- * `sudo service distcc start` (you may have to reboot if fails) -->
    * `sudo service distcc start` (실패할 경우, 재부팅을 해야 합니다.)
    <!-- * If it fails, you might also try: -->
    * 실패할경우, 아래 명령어를 시도해보세요:
    * `sudo service distcc restart`

<!-- ### __On the Raspberry Pi__    -->
### __라즈베리파이에서__

* `distcc` 설치하기
    * `sudo apt-get install distcc`
    
<!-- * Configure the Raspberry Pi to use the Ubuntu helper you just configured -->
* 방금 설정한 우분투 헬퍼 머신을 사용하기 위해 라즈베리파이를 설정합니다.
    <!-- * Make directory `mkdir $HOME/.distcc/` -->
    * 디렉토리를 만듭니다 `mkdir $HOME/.distcc/`
    <!-- * Edit `$HOME/.distcc/hosts` (e.g. `vi $HOME/.distcc/hosts`) and add the ip(s) of the computers that have the rpi tools installed -->
    * `$HOME/.distcc/hosts`파일을 편집하고(예시: `vi $HOME/.distcc/hosts`), rpi_tools가 인스톨된 컴퓨터들의 IP주소(들)을 추가한다.
    <!-- * To compile (finally!) -->
    * 컴파일을 하기 위해서 (마침내!)
        <!-- * First, figure out how many processors you have available on the Ubuntu machine(s) using `nproc` on each.  Tally the total number of helper processors.  When we issue our make command we will use the `-j` flag to tell make how many jobs we want to be distribted over distcc.  According to the distcc documentation, you should run make with 2 x TOTAL_PROCESSORS in your cluster.  So, if you have one helper machine with 8 cores `8x2=16`, so you'll run `make -j 16`. If this is the same machine you are working from you probably want lower numbers so the computer is still usable while compiling -->
        * 우선, 각 우분투 머신(들)에서 몇개의 프로세서가 가능한지 `nproc`명령어를 이용하여 확인합니다. 그 다음 헐퍼 프로세서의 최종 합계를 계산합니다. 추후 distcc로 분산 컴파일을 할 때, 얼마나 많은 작업을 할지 `-j` 플래그를 이용해 알려줄 수 있습니다. distcc 문서에 의하면, 클러스터에서 최종 프로세서 X 2의 값으로 make를 수행할 수 있습니다. 따라서 만약 8코어를 갖는 하나의 헬퍼 머신이 있다면 `8x2=16`이 되므로, `make -j 16`이라고 실행할 수 있습니다. 만약 같은 머신에서 수행할 경우 낮은 숫자를 사용해야 할텐데, 이 플래그는 이 때도 사용 가능합니다.
        <!-- * Next, we need our makefiles to know that we won't be using the normal RPI gcc, but rather the gcc (etc) located in `/usr/lib/distcc`.  The command itself looks like `/usr/lib/distcc/g++` or simply `distcc g++`, rather than the normal `g++`. So the full make for the core openFrameworks lib OR projects will look something like this: -->
        * 다음으로, makefile에게 일반 RPI gcc가 아닌, (예를 들어) `/usr/lib/distcc`에 위치한 gcc를 사용하라고 알려줘야 합니다. 명령어은 일반 `g++`가 아닌, `/usr/lib/distcc/g++`나 `distcc g++`가 되어야 합니다.  따라서 오픈프레임웍스 코어 나 프로젝트를 컴파일할때 최종 make는 아래와 같습니다:
            * `make -j 6 CXX=/usr/lib/distcc/arm-linux-gnueabihf-g++ CC=/usr/lib/distcc/arm-linux-gnueabihf-gcc`
        <!--* If you would like to simplify your command, you can set `MAKEFLAGS` using the following: -->
        * 만약 명령을 단축하고 싶다면, 아래의 명령어로 `MAKEFLAGS`를 설정할 수 있습니다.
            * `export MAKEFLAGS="-s -j 6 CXX=/usr/lib/distcc/arm-linux-gnueabihf-g++ CC=/usr/lib/distcc/arm-linux-gnueabihf-gcc"`
            * `make`


