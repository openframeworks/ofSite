## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이
============

## 라즈베리파이가 뭐죠?

[라즈베리파이](http://www.raspberrypi.org/)는 작고 값싼 ARM기반의 컴퓨터로, 주로 리눅스로 동작합니다. 현대적인 데스크탑 컴퓨터와 비교하여 라즈베리파이는 CPU 성능과 RAM용량이 제한적입니다만, OpenGL ES2 및 하드웨어가속 오디오/비디오처리 등 칩셋에서 최신 기술을 지원합니다. 이러한 특징때문에 라즈베리파이는 멀티미디어 어플리케이션으로 특별한 플랫폼입니다.

## 라즈베리파이상에서의 오픈프레임웍스
데스크탑 기반의 플랫폼과 마찬가지로, 오픈프레임웍스는 실시간 그래픽, 쉐이더, 오디오/비디오 처리, 네트워크처리 등을 통합한 어플리케이션 제작을 위한 범용 인터페이스를 제공합니다. OpenCv, OSC와 같은 다양한 기술들을 추가할 수 있는 오픈프레임웍스 애드온(보통 ofxAddons라고 합니다)도 함께 제공합니다.

오픈프레임웍스 0.10.0에서는 라즈베리파이 지원을 위해 Raspbian "Stretch" 리눅스 배포판을 추천합니다. Wheezy와 Jessie는 구 버전의 오픈프레임웍스와 사용이 가능합니다. (0.8.4를 추천드립니다. 0.9.8도 동작하긴 하지만 Poco 라이브러리와 버전 충돌이 발생할 수 있습니다) [Wheezy를 위한 구 버전의 가이드는 이곳을 참고하세요](raspberry-pi-wheezy-index/)

라즈베리파이 2및 3의 아키텍쳐가 arm7 이지만(3B+는 arm8), 아직까지 rasbian은 arm6 아키텍쳐만 지원하므로, [라즈베리파이 시작 가이드](raspberry-pi-getting-started/)에 서 제시된 버전을 다운받으시기 바랍니다. 만약 라즈베리파이2 및 3에서 arm7 바이너리를 사용하고 싶다면, 아키리눅스나 우분투 코어를 설치한 후, arm7용 오픈프레임웍스를 다운받아 주시기 바랍니다. 하지만 이부분에 대해서는 아직 제대로 테스트가 되지 않았으므로, 원레 제공되는 설치스크립트를 약간 변경해야 할 수 있습니다.

## 시작하기

* [라즈베리파이 워크플로우 개요](raspberry-pi-workflow-overview/)
* [라즈베리파이 시작하기](raspberry-pi-getting-started/)
* [라즈베리파이 2 B 시작하기 - ArchLinux](raspberry-pi-getting-started-archlinux/)
* [라즈베리파이 문제해결](raspberry-pi-troubleshooting/)

## 고급

* [라즈베리파이 크로스컴파일 가이드](raspberry-pi-cross-compiling-guide/)

## 커뮤니티
* [오픈프레임웍스 ARM 포럼](https://forum.openframeworks.cc/c/arm)


### 오픈프레임웍스 + 라즈베리파이 = <3
