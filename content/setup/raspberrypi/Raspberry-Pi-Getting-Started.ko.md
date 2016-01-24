## -*- coding: utf-8 -*-
.. title: raspberry pi

오픈프레임웍스를 위한 라즈베리파이 준비하기
============

<!-- Getting your Raspberry Pi ready for openFrameworks -->
    
<!-- ## Install Raspbian "Jessie" -->
## Raspbian "Jessie" 설치
<!-- 0. Install the latest _**Raspbian** (Debian Jessie)_ image from the [Raspberry Pi downloads page](http://www.raspberrypi.org/downloads) -->
<!-- 1. Follow the instructions at [Raspberry Pi Preparing Your SD Card](http://elinux.org/RPi_Easy_SD_Card_Setup) to get Raspbian installed onto your SD Card -->

0. 가장 최신의 _**Raspbian** (데비안 Jessie)_ 이미지를 [라즈베리파이 다운로드 페이지](http://www.raspberrypi.org/downloads)에서 다운받으세요.
1. [라즈베리파이를 위한 SD카드 준비하기](http://elinux.org/RPi_Easy_SD_Card_Setup)의 설명에 따라 SD카드에 Raspbian을 설치해주세요.
         
<!-- ## Configure the Raspberry Pi -->
## 라즈베리파이 설정하기 
<!-- This guide assumes you are starting from a fresh Raspian install and that you are able to connect to the Raspberry Pi and send it commands. -->
이 가이드는 새 Raspbian 설치본에서 시작하는 것을 염두하고 있으며, 이제부터 라즈베리파이에 접속하여 명령을 입력할 수 있습니다.

<!-- You can enter commands on the Pi by: -->
라즈베리파이에서 아래와 같은 방법으로 명령을 입력할 수 있습니다:

<!-- 0. SSH into the Pi from a different computer -->
0. 다른 컴퓨터에서 SSH로 라즈베리파이에 접속한다.
<!-- 0. Attach a keyboard and monitor to the Pi. -->
	<!-- * With Jessie the Raspberry Pi now boots the X11 window system by default, open up LXTerminal from the shortcut on the Raspberry Pi Desktop -->
	<!-- * Type in the command `sudo raspi-config` -->
0. 라즈베리파이에 키보드를 연결한다.
	* 현재, Jessie 배포판의 경우, 기본적으로 부팅 시 X11 윈도우 환경으로 부팅됩니다. 라즈베리파이 바탕화면에서 LXTerminal 단축아이콘으로 터미널을 엽니다.
	* `sudo raspi-config` 명령을 입력합니다.

<!-- _We need to make sure the CPU has 192MB of RAM in order to compile openFrameworks. Once you have compiled openFrameworks you may want to repeat this step with 128_ -->
_오픈프레임웍스를 컴파일 하기 위해 CPU가 RAM의 192MB를 사용하도록 세팅해줘야 합니다. 오픈프레임웍스를 한번 컴파일 한 뒤, 아래의 과정을 반복하여 128로 되돌려주어야 합니다_

<!-- 0.  Select `1 Expand Filesystem` and hit Enter
0.  Select `8 Advanced Options` and hit Enter
	* Select `A3 Memory Split` and hit Enter
	* Type `64` and Hit `<ok>` -->

0.  `1 Expand Filesystem`을 선택하고 엔터를 입력한다
0.  `8 Advanced Options`을 선택하고 엔터를 입력한다
	* `A3 Memory Split`을 선택하고 엔터를 입력한다
	* `64`를 입력하고 `<ok>`를 누른다


<!-- openFrameworks does not use the X11 Desktop for running OF applications. You can save GPU memory by disabling it. This is optional but suggested. -->
오픈프레임웍스는 오픈프레임웍스 프로그램구동을 위해 X11 데스크탑 을 사용하지 않습니다. 데스크탑 환경을 비활성화 시켜 GPU메모리를 절약할 수 있습니다. 이는 옵션이지만 추천됩니다.
 
<!-- 0. Select `3 Boot Options`
0. Select `B1 Console` or `B2 Console Autologin` -->
0. `3 Boot Options`을 선택한다
0. `B1 Console` 또는 `B2 Console Autologin`를 선택한다

<!-- Unlike Wheezy, Debian Jessie does not display the IP address on boot. You may wish to get the current IP by typing `ifconfig`. The IP address is under the eth0 entry for wired ethernet. This can possibly change on reboot.  -->
Wheezy 배포판과는 다르게, 데비안 Jessie는 부팅시에 IP 주소를 표시해주지 않습니다. `ipconfig`명령을 입력하여 현재 사용하고 있는 IP 주소를 확인할 수 있습니다. 유선 이더넷의 IP주소는 eth0 엔트리에서 볼 수 있습니다. 재부팅되면 바뀔 수도 잇습니다.

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
<!-- You now can download openFrameworks and uncompress it into a folder. Using a Shell, The following commands will download openFrameworks and uncompress it into the folder `/home/pi/openFrameworks` -->
이제 오픈프레임웍스를 다운받아 폴더에 압축을 풀 수 있습니다. 쉘에서 아래의 명령을 입력하여, 오픈프레임웍스를 다운받고 `/home/pi/openFrameworks`의 폴더에 압축을 풉니다.
 
<!-- <h3> For the Raspberry Pi 1/arm6</h3> -->
<!-- <h3> 라즈베리파이1/arm6</h3>
0. `cd` 
0. `curl -O http://www.openframeworks.cc/versions/v0.9.0/of_v0.9.0_linuxarmv6l_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar vxfz of_v0.9.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1` -->

<!-- <h3> For the Raspberry Pi 2/arm7</h3> -->
<h3> 라즈베리파이2/arm7</h3>
0. `cd` 
0. `curl -O http://www.openframeworks.cc/versions/v0.9.0/of_v0.9.0_linuxarmv7l_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar vxfz of_v0.9.0_linuxarmv7l_release.tar.gz -C openFrameworks --strip-components 1`

<!-- <h3> For the Raspberry Pi using OF for arm6</h3> -->
<h3> For the Raspberry Pi using OF for arm6</h3>
 0. `cd` 
 0. `curl -O http://www.openframeworks.cc/versions/v0.9.0/of_v0.9.0_linuxarmv6l_release.tar.gz` 
 0. `mkdir openFrameworks`
 0.	`tar vxfz of_v0.9.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1`


<!-- ## Install packages and compile openFrameworks: -->
## 패키지 인스톨 및 오픈프레임웍스 컴파일하기
<!-- Make sure you didn't skip the Memory Split step in the above section _**Configure the Raspberry Pi**_ or it will eventually fail. -->
위 _**라즈베리파이 설정하기*_ 섹션의 메모리 설정을 하였는지 꼭 확인하십시오. 그렇지 않으면 설치가 되지 않습니다.
 
<!-- The time for these steps will depend on whether you are on a RPI1 or RPI2 and the speed of the Raspbian mirrors to download the packages. -->
<!-- Assuming openFrameworks is located at `/home/pi/openFrameworks` run the following commands to install the necessary packages and compile openFrameworks.  -->
이 단계에서 소요되는 시간은 라즈베리파이1인지 라즈베리파이2인지에 따라, 또 패키지를 다운받는 Raspbian 미러의 속도에 따라 달라질 수 있습니다.

0. `cd /home/pi/openFrameworks/scripts/linux/debian`  
0. `sudo ./install_dependencies.sh` 

<!-- You are now ready to compile openFrameworks!  -->
이제 오픈프레임웍스를 컴파일할 준비가 되었습니다!

<!-- ### 라즈베리파이1/arm6
0. `make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`

### 라즈베리파이2/arm7
0. `make Release -j4 -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project` -->
	* `make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`


<!-- ## Speeding up compiling -->
## 컴파일 속도 높이기
<!-- Compiling natively on the Raspberry Pi 1 takes a long time. openFrameworks applications typically take much less time than the core library. Taking the time to set up a cross-compiling solution will save you enormous amounts of time.  -->
라즈베리파이 상에서 네이티브로 컴파일할 경우 시간이 오래 걸립니다. 일반적인 오픈프레임웍스 어플리케이션의 경우에는 코어 라이리브러리보다 훨씬 적게 걸립니다. 크로스 컴파일 해결법을 사용하면 엄청난 시간을 절약할 수 있습니다.

<!-- [Raspberry Pi Cross Compiling Guide](Raspberry-Pi-Cross-compiling-guide.html) -->
[라즈베리파이 크로스 컴파일 가이드](Raspberry-Pi-Cross-compiling-guide.html)

<!-- ## Compile your first app -->
## 여러분의 첫 앱을 컴파일 하기
<!-- openFrameworks ships with a bunch of examples located in the `openFrameworks/examples` folder. Inside examples the projects are sorted by the categories:  -->
오픈프레임웍스는 `openFrameworks/example`폴더에 다양한 예제파일을 함께 제공합니다. 예제의 프로젝트들은 카테고리별로 아래와 같이 정리될 수 있습니다.

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

<!-- Unlike other platforms, OF Raspberry Pi projects do not make use of the projectGenerator. To create your own project from scratch, copy `examples/empty/emptyExample` into `apps/myApps/yourProjectName` folder and start from there -->
다른 플랫폼과 다르게, 라즈베리파이 오픈프레임웍스 프로젝트는 프로젝트 생성기를 사용하지 않습니다. 여러분만의 프로젝트를 기본 프로젝트에서 생성하려면, `examples/empty/emptyExample`을 복사하여 `apps/myApps/yourProjectName`폴더로 붙여넣고 그곳에서 시작하시면 됩니다.

아례는 예시입니다:

* `cp -R /home/pi/openFrameworks/examples/empty/emptyExample /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `cd /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `make`
* `make run`

<!-- It is critical to keep your application directory 3 levels below the openFrameworks directory. -->
어플리케이션의 디렉토리 구조가 오픈프레임웍스 디렉토리를 기준으로 3단계의 레벨을 가지는것이 매우 중요한 핵심입니다.

<!-- Have fun! :) -->
즐기세요! :)

