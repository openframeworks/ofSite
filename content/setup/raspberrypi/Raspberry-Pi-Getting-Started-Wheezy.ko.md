## -*- coding: utf-8 -*-
.. title: raspberry pi

<!-- Getting your Raspberry Pi ready for openFrameworks -->
오픈프레임웍스를 위한 라즈베리파이 준비하기
============

    
<!-- ## Install Raspbian "wheezy" -->
## Raspbian "wheezy" 설치
<!-- 0. Install the latest _**Raspbian** (Debian Wheezy)_ image from the [Raspberry Pi downloads page](http://www.raspberrypi.org/downloads) -->
0. 가장 최신의 _**Raspbian** (데비안 Wheezy) 이미지를 [라즈베리파이 다운로드 페이지](http://www.raspberrypi.org/downloads)에서 다운받으세요
<!-- 1. Follow the instructions at [Raspberry Pi Preparing Your SD Card](http://elinux.org/RPi_Easy_SD_Card_Setup) to get Raspbian installed onto your SD Card -->
1. [라즈베리파이를 위한 SD카드 준비하기](http://elinux.org/RPi_Easy_SD_Card_Setup)의 설명에 따라 SD카드에 Raspbian을 설치해주세요.

<!-- ## Configure the Raspberry Pi -->
## 라즈베리파이 설정하기 
<!-- This guide assumes you are starting from a fresh Raspian install and that you are able to connect to the Raspberry Pi to give it commands. -->
이 가이드는 새 Raspbian 설치본에서 시작하는 것을 염두하고 있으며, 이제부터 라즈베리파이에 접속하여 명령을 입력할 수 있습니다.

<!-- Options to give commands are: -->
두가지 옵션의 명령이 있습니다:

<!-- 0. SSH into the Pi from a different computer -->
0. 다른 컴퓨터에서 SSH로 라즈베리파이에 접속한다.
<!-- 0. Attach a keyboard and monitor to the Pi.  -->
0. 라즈베리파이에 키보드를 연결한다.
	<!-- * If the Pi boots to the command prompt you are ready to go
	* If the Pi boots the X11 window system, open up LXTerminal from the shortcut on the Raspberry Pi Desktop -->
	* 만약 라즈베리파이가 커맨드 프롬프트로 부팅되면 계속 진행하면 됩니다.
	* 만약 라즈베리파이가 X11 윈도우 환경으로 부팅되면, 라즈베리파이 바탕화면에서 LXTerminal 단축아이콘으로 터미널을 엽니다.

<!-- With a fresh install the Raspberry Pi configuration is presented at the first boot. Otherwise, you can re-configure with the command `sudo raspi-config`
_We need to make sure the CPU has 192MB of RAM in order to compile openFrameworks. Once you have compiled openFrameworks you may want to repeat this step with 128_ -->
새로 설치된 라즈베리파이는 첫 부팅시에 라즈베리파이 설정이 보여집니다. 그렇지 않을 경우, `sudo raspi-config`명령어로 재설정 할 수 있습니다. _오픈프레임웍스를 컴파일 하기 위해 CPU가 RAM의 192MB를 사용하도록 세팅해줘야 합니다. 오픈프레임웍스를 한번 컴파일 한 뒤, 아래의 과정을 반복하여 128로 되돌려주어야 합니다_

<!-- 0.  Select `1 Expand Filesystem` and hit Enter
0.  Select `8 Advanced Options` and hit Enter
	* Select `A3 Memory Split` and hit Enter
	* Type `64` and Hit `<ok>` -->
0.  `1 Expand Filesystem`을 선택하고 엔터를 입력한다
0.  `8 Advanced Options`을 선택하고 엔터를 입력한다
	* `A3 Memory Split`을 선택하고 엔터를 입력한다
	* `64`를 입력하고 `<ok>`를 누른다

	 
<!-- 0. Reboot when prompted or type `sudo reboot`
0. Assuming you have internet access run these commands to update the software to the latest packages.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: The above steps may take a little while._ -->
0. 재부팅을 물어볼 때 또는 추후 콘솔에서 `sudo reboot`를 입력하여 재부팅한다.
0. 인터넷 연결이 되어있는지 확인하고, 최신 패키지로 업데이트 하기위해 아래의 명령어를 입력한다.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: 위 과정들은 약간의 시간이 소요될 것입니다._

<!-- ## Download openFrameworks -->
## 오픈프레임웍스 다운받기
<!-- You now can download the Linux armv6 version of openFrameworks and uncompress it into a folder. Using a Shell, The following commands will download openFrameworks and uncompress it into the folder `/home/pi/openFrameworks` -->
이제 오픈프레임웍스의 armv6 리눅스를 다운받아 폴더에 압축을 풀 수 있습니다. 쉘에서 아래의 명령을 입력하여, 오픈프레임웍스를 다운받고 `/home/pi/openFrameworks`의 폴더에 압축을 풉니다.
 
0. `cd` 
0. `curl -O http://www.openframeworks.cc/versions/v0.8.4/of_v0.8.4_linuxarmv6l_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar vxfz of_v0.8.4_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1`

<!-- ## Compile openFrameworks: -->
## 오픈프레임웍스 컴파일하기:
<!-- This step will take approximately 1 hour when compiling on the Raspberry Pi, Make sure you didn't skip the Memory Split step in the above section _**Configure the Raspberry Pi**_ or it will eventually fail. -->
이 단계는 라즈베리파이에서 컴파일할 경우 대략 1시간이 소요됩니다. 위 _**라즈베리파이 설정하기*_ 섹션의 메모리 설정을 하였는지 꼭 확인하십시오. 그렇지 않으면 설치가 되지 않습니다.

<!-- Assuming openFrameworks is located at `/home/pi/openFrameworks` run the following commands to install the necessary packages and compile openFrameworks.  -->
오픈프레임웍스가 `home/pi/openFramework`에 위치해있다고 가정하고, 아래의 명령어를 사용하여 필요한 패키지를 설치하고 오픈프레임웍스를 컴파일합니다.

0. `cd /home/pi/openFrameworks/scripts/linux/debian_armv6l`  
0. `sudo ./install_dependencies.sh` 

<!-- You are now ready to compile openFrameworks!  -->
이제 오픈프레임웍스를 컴파일할 준비가 되었습니다!

0. `make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`

<!-- ## Speeding up compiling -->
## 컴파일 속도 높이기
<!-- Compiling natively on the Raspberry Pi takes a long time. openFrameworks applications typically take much less time than the core library. Taking the time to set up a cross-compiling solution will save you enormous amounts of time.  -->
라즈베리파이에서 네이티브로 컴파일할 경우 시간이 오래 걸립니다. 일반적인 오픈프레임웍스 어플리케이션의 경우에는 코어 라이리브러리보다 훨씬 적게 걸립니다. 크로스 컴파일 해결법을 사용하면 엄청난 시간을 절약할 수 있습니다.

[라즈베리파이 DISTCC 가이드](Raspberry-Pi-DISTCC-guide.html)    
[라즈베리파이 크로스 컴파일 가이드](Raspberry-Pi-Cross-compiling-guide.html)

<!-- ## Compile your first app -->
## 여러분의 첫 앱을 컴파일 하기
<!-- Like on other platforms, openFrameworks ships with a bunch of examples located in the `openFrameworks/examples` folder. Inside examples the projects are sorted by the categories:  -->
다른 플랫폼들과 마찬가지로, 오픈프레임웍스는 `openFrameworks/example`폴더에 다양한 예제파일을 함께 제공합니다. 예제의 프로젝트들은 카테고리별로 아래와 같이 정리될 수 있습니다.

* 3d 
* addons 
* communication 
* empty
* events
* gl
* gles
* graphics
* gui
* math
* sound
* utils
* video

<!-- Inside each category folder are a few examples of each. To run them you need to go into the folder, build and run. -->
각 카테고리 폴더에는 몇몇 예제들이 들어 있습니다. 실행을 위해서는 폴더로 이동하여, 빌드하고 실행하면 됩니다.

<!-- For example, here is how you build and run the polygonExample: -->
예를들어, polygonExample을 빌드하는 방법은 다음과 같습니다:

* `cd /home/pi/openFrameworks/examples/graphics/polygonExample`
* `make`
* `make run`

<!-- To create your own project from scratch, copy `examples/empty/emptyExample` into `apps/myApps/yourProjectName` folder and start from there -->
 여러분만의 프로젝트를 기본 프로젝트에서 생성하려면, `examples/empty/emptyExample`을 복사하여 `apps/myApps/yourProjectName`폴더로 붙여넣고 그곳에서 시작하시면 됩니다.
For example:

* `cp -R /home/pi/openFrameworks/examples/empty/emptyExample /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `cd /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `make`
* `make run`

<!-- It is critical to keep your application directory 3 levels below the openFrameworks directory. -->
어플리케이션의 디렉토리 구조가 오픈프레임웍스 디렉토리를 기준으로 3단계의 레벨을 가지는것이 매우 중요한 핵심입니다.

<!-- Have fun! :) -->
즐기세요! :)
