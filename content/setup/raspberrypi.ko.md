## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이
============

## 라즈베리파이가 뭐죠?

[라즈베리파이](http://www.raspberrypi.org/)는 작고 값싼 ARM기반의 컴퓨터로, 주로 리눅스로 동작합니다. 현대적인 데스크탑 컴퓨터와 비교하여 라즈베리파이는 CPU 성능과 RAM용량이 제한적입니다만, OpenGL ES2 및 하드웨어가속 오디오/비디오처리 등 칩셋에서 최신 기술을 지원합니다. 이러한 특징때문에 라즈베리파이는 멀티미디어 어플리케이션으로 특별한 플랫폼입니다.

## 라즈베리파이상에서의 오픈프레임웍스
데스크탑 기반의 플랫폼과 마찬가지로, 오픈프레임웍스는 실시간 그래픽, 쉐이더, 오디오/비디오 처리, 네트워크처리 등을 통합한 어플리케이션 제작을 위한 범용 인터페이스를 제공합니다. OpenCv, OSC와 같은 다양한 기술들을 추가할 수 있는 오픈프레임웍스 애드온(보통 ofxAddons라고 합니다)도 함께 제공합니다.

오픈프레임웍스 0.9.0에서는 라즈베리 지원을 위해 Raspbian "Jessie" (hard float) 리눅스 배포판을 추천합니다. Wheezy는 구 버전의 오픈프레임웍스 (0.84를 추천해드립니다)와 사용이 가능합니다. [Wheezy를 위한 구 버전의 가이드는 이곳을 참고하세요](Raspberry-Pi-Wheezy-index.html)

라즈베리파이 2에서는, 라즈베리파이2의 아키텍쳐가 arm7 이지만, rasbian이 arm6 아키텍쳐만 지원하기 때문에, 이제부터는 [라즈베리파이 시작 가이드](Raspberry-Pi-Getting-Started.html)에 설명된 버전으로 다운받으시기 바랍니다. 만약 라즈베리파이2에서 arm7 바이너리를 사용하고 싶다면, 아키리눅스나 우분투 코어를 설치한 후, 오픈프레임웍스의 arm7버전 배포판을 사용해주시기 바랍니다. 하지만 이부분에 대해서는 아직 제대로 테스트가 되지 않았으므로, 원본 설치스크립트를 약간 변경해야 할 수 있습니다.

만약 이미 openFrameworks/RPi를 갖고 계신다면, [0.9.0에서 달라진점](Raspberry-Pi-8-9-Transition-Notes.html)을 읽어주십시오.

## 시작하기

* [라즈베리파이 워크플로우 개요](Raspberry-Pi-Workflow-Overview.html)
* [라즈베리파이 시작하기](Raspberry-Pi-Getting-Started.html)
* [라즈베리파이 문제해결](Raspberry-Pi-Troubleshooting.html)

## 고급

* [라즈베리파이 크로스컴파일 가이드](Raspberry-Pi-Cross-compiling-guide.html)

## 커뮤니티
* [오픈프레임웍스 ARM 포럼](http://forum.openframeworks.cc/c/arm)


### 오픈프례임웍스 + 라즈베리파이 = <3
