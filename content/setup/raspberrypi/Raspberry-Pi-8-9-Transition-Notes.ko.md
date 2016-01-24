## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이 전환 노트
============

<!-- Raspberry Pi Transition Notes -->

## Jessie 요구사항

<!-- openFrameworks 0.9.0 uses C++11 features that require GCC 4.9 in order to compile. Raspbian Wheezy only supports GCC 4.8. -->
오픈프레임웍스 0.9.0은 컴파일할 때 GCC 4.9를 필요로 하는 C++11 사항들을 사용합니다. Raspbian Wheezy는 GCC 4.8만 지원합니다.

<!-- ## Arm7 now default variant -->
## Arm7은 이제 기본 변종 입니다.
<!-- openFrameworks uses a variant system that allows developers to more easily port to new platforms. The Raspberry Pi 1 uses an armv6 architecture and although the RPI2 uses armv7 unless you are using archlinux or another distribution that is compiled for arm7 support we recommend to use the armv6 version of openFrameworks with raspbian since it's compiled for that architecture and mixing binaries for different architectures has shown some problems in the past.  -->
오픈프레임은 개발자들이 새로운 플랫폼으로 쉽게 포팅할 수 있도록 변종시스템을 사용합니다. 라즈베리파이1은 armv6 아키텍쳐를 사용합니다. 라즈베리파이2는 armv7 아키텍쳐를 사용합니다만, 여러분이 아키리눅스나 arm7 아키텍쳐를 지원하도록 컴파일된 다른 배포판을 사용하지 않는다면, raspbian을 설치하고 armv6용 오픈프레임웍스를 사용하는것을 추천드립니다. (원문 : although the RPI2 uses armv7 unless you are using archlinux or another distribution that is compiled for arm7 support we recommend to use the armv6 version of openFrameworks with raspbian since it's compiled for that architecture and mixing binaries for different architectures has shown some problems in the past.)

<!-- ## Cross-compiling -->
## 크로스 컴파일링
<!-- With Wheezy and openFrameworks 0.84 you were able to use the cross-compiling tools provided by the [RPI Foundation](https://github.com/raspberrypi/tools). However these tools currently use GCC 4.8 which is not compatible with C++11.  -->
Wheezy배포판과 오픈프레임웍스 0.84를 사용할 때는, [라즈베리파이 재단](https://github.com/raspberrypi/tools)에서 제공되는 크로스 컴파일 도구를 사용할 수 있었습니다. 하지만 이 툴은 C++11과는 호환되지 않는 GCC 4.8에서 사용됩니다.

