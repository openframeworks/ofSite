## -*- coding: utf-8 -*-
.. title: raspberry pi

오픈프레임웍스를 위한 라즈베리파이 준비하기
============

## Raspbian "Jessie" 설치
0. 가장 최신의 _**Raspbian** (데비안 Jessie)_ 이미지를 [라즈베리파이 다운로드 페이지](http://www.raspberrypi.org/downloads)에서 다운받으세요.
1. [라즈베리파이를 위한 SD카드 준비하기](http://elinux.org/RPi_Easy_SD_Card_Setup)의 설명에 따라 SD카드에 Raspbian을 설치해주세요.
         
## 라즈베리파이 설정하기 
이 가이드는 새 Raspbian 설치본에서 시작하는 것을 염두하고 있으며, 이제부터 라즈베리파이에 접속하여 명령을 입력할 수 있습니다.

라즈베리파이에서 아래와 같은 방법으로 명령을 입력할 수 있습니다:

0. 다른 컴퓨터에서 SSH로 라즈베리파이에 접속한다.
0. 라즈베리파이에 키보드를 연결한다.
	* 현재, Jessie 배포판의 경우, 기본적으로 부팅 시 X11 윈도우 환경으로 부팅됩니다. 라즈베리파이 바탕화면에서 LXTerminal 단축아이콘으로 터미널을 엽니다.
	* `sudo raspi-config` 명령을 입력합니다.

_오픈프레임웍스를 컴파일 하기 위해 CPU가 RAM의 192MB를 사용하도록 세팅해줘야 합니다. 오픈프레임웍스를 한번 컴파일 한 뒤, 아래의 과정을 반복하여 128로 되돌려주어야 합니다_

0.  `1 Expand Filesystem`을 선택하고 엔터를 입력한다
0.  `8 Advanced Options`을 선택하고 엔터를 입력한다
	* `A3 Memory Split`을 선택하고 엔터를 입력한다
	* `64`를 입력하고 `<ok>`를 누른다


오픈프레임웍스는 오픈프레임웍스 프로그램구동을 위해 X11 데스크탑 을 사용하지 않습니다. 데스크탑 환경을 비활성화 시켜 GPU메모리를 절약할 수 있습니다. 이는 옵션이지만 추천됩니다.
 
0. `3 Boot Options`을 선택한다
0. `B1 Console` 또는 `B2 Console Autologin`를 선택한다

Wheezy 배포판과는 다르게, 데비안 Jessie는 부팅시에 IP 주소를 표시해주지 않습니다. `ipconfig`명령을 입력하여 현재 사용하고 있는 IP 주소를 확인할 수 있습니다. 유선 이더넷의 IP주소는 eth0 엔트리에서 볼 수 있습니다. 재부팅되면 바뀔 수도 잇습니다.

0. 재부팅을 물어볼 때 또는 추후 콘솔에서 `sudo reboot`를 입력하여 재부팅한다.
0. 인터넷 연결이 되어있는지 확인하고, 최신 패키지로 업데이트 하기위해 아래의 명령어를 입력한다.
    * `sudo apt-get clean`
    * `sudo apt-get update`
    * `sudo apt-get upgrade`
    * _Note: 위 과정들은 약간의 시간이 소요될 것입니다._

## 오픈프레임웍스 다운받기
이제 오픈프레임웍스를 다운받아 폴더에 압축을 풀 수 있습니다. 쉘에서 아래의 명령을 입력하여, 오픈프레임웍스를 다운받고 `/home/pi/openFrameworks`의 폴더에 압축을 풉니다.
 
<h3> 라즈베리파이2/arm7</h3>
0. `cd` 
0. `curl -O http://openframeworks.cc/versions/v0.9.0/of_v0.9.0_linuxarmv7l_release.tar.gz` 
0.  `mkdir openFrameworks`
0.  `tar vxfz of_v0.9.0_linuxarmv7l_release.tar.gz -C openFrameworks --strip-components 1`

<h3> For the Raspberry Pi using OF for arm6</h3>
 0. `cd` 
 0. `curl -O http://openframeworks.cc/versions/v0.9.0/of_v0.9.0_linuxarmv6l_release.tar.gz` 
 0. `mkdir openFrameworks`
 0.	`tar vxfz of_v0.9.0_linuxarmv6l_release.tar.gz -C openFrameworks --strip-components 1`


## 패키지 인스톨 및 오픈프레임웍스 컴파일하기
위 _**라즈베리파이 설정하기*_ 섹션의 메모리 설정을 하였는지 꼭 확인하십시오. 그렇지 않으면 설치가 되지 않습니다.
 
이 단계에서 소요되는 시간은 라즈베리파이1인지 라즈베리파이2인지에 따라, 또 패키지를 다운받는 Raspbian 미러의 속도에 따라 달라질 수 있습니다.

0. `cd /home/pi/openFrameworks/scripts/linux/debian`  
0. `sudo ./install_dependencies.sh` 

이제 오픈프레임웍스를 컴파일할 준비가 되었습니다!

	* `make Release -C /home/pi/openFrameworks/libs/openFrameworksCompiled/project`


## 컴파일 속도 높이기
라즈베리파이 상에서 네이티브로 컴파일할 경우 시간이 오래 걸립니다. 일반적인 오픈프레임웍스 어플리케이션의 경우에는 코어 라이리브러리보다 훨씬 적게 걸립니다. 크로스 컴파일 해결법을 사용하면 엄청난 시간을 절약할 수 있습니다.

[라즈베리파이 크로스 컴파일 가이드](../raspberry-pi-cross-compiling-guide/)

## 여러분의 첫 앱을 컴파일 하기
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

각 카테고리 폴더에는 몇몇 예제들이 들어 있습니다. 실행을 위해서는 폴더로 이동하여, 빌드하고 실행하면 됩니다.

예를들어, polygonExample을 빌드하는 방법은 다음과 같습니다:

* `cd /home/pi/openFrameworks/examples/graphics/polygonExample`
* `make`
* `make run`

다른 플랫폼과 다르게, 라즈베리파이 오픈프레임웍스 프로젝트는 프로젝트 생성기를 사용하지 않습니다. 여러분만의 프로젝트를 기본 프로젝트에서 생성하려면, `examples/empty/emptyExample`을 복사하여 `apps/myApps/yourProjectName`폴더로 붙여넣고 그곳에서 시작하시면 됩니다.

아례는 예시입니다:

* `cp -R /home/pi/openFrameworks/examples/empty/emptyExample /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `cd /home/pi/openFrameworks/apps/myApps/myRpiApp`
* `make`
* `make run`

어플리케이션의 디렉토리 구조가 오픈프레임웍스 디렉토리를 기준으로 3단계의 레벨을 가지는것이 매우 중요한 핵심입니다.

즐기세요! :)

