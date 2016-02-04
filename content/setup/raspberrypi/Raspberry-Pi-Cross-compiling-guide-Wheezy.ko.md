## -*- coding: utf-8 -*-
.. title: raspberry pi


Wheezy 에서의 라즈베리파이 크로스 컴파일 가이드
============

## 크로스 컴파일링

_이 가이드는 리눅스 머신에서 크로스 컴파일러를 설치하는 과정을 담고 있으며, armv6 바이너리를 여러분의 컴퓨터에서 컴파일 할 수 있습니다. 보다 빠른 컴파일이 가능하며, 일반 텍스트 편집기 대신 IDE를 사용할 수 있습니다_

_노트: 맥 OS X에서는, 페러럴즈 8을 이용해 우분투 "헬퍼" 머신을 구동할 수 있습니다. 우분투 인스턴스를 _BRIDGED_로 네트워크 세팅을 하면 같은 네트워크상에서 라즈베리파이로 접근할 수 있습니다. 윈도우즈에서는 vmware나 virtualbox같은 가상머신 도구로 비슷한 세팅을 할 수 있습니다. 리눅스의 경우에는 가상머신을 설치할 필요 없이 바로 다음 단계로 넘어가시면 되며, 컴파일러는 리눅스 머신에서 직접 구동됩니다._

### __리눅스 머신에서__

* 의존성 패키지를 설치
    * 리눅스 혹은 리눅스 64비트용 오픈프레임웍스 배포판을 다운받아 install_dependencies.sh 스크립트를 실행합니다.
    * 만약 64비트 리눅스 배포판을 사용한다면, 하단의  명령어를 추가로 설치해줘야 합니다:
    * `sudo aptitude install ia32-libs`

* 리눅스를 위한 라즈베리파이 컴파일러 다운받기
    * [https://github.com/raspberrypi/tools/](https://github.com/raspberrypi/tools/)에서 zip파일로 받거나 clone할 수 있습니다.
    * rpi-tools와 같은 구별될 수 있는 이름으로 폴더이름을 변경합니다. 이 폴더는 이제부터 `$RPI_TOOLS`로 조회될 것입니다.
    
* 위의 단계를 거치면 라즈베이파이를 위한 armv6 바이너리를 컴파일 할 수 있게 됩니다. 하지만 라이브러리 역시 필요합니다.
    * 라즈베리파이에서 install_dependencies.sh 스크립트를 실행합니다.
    * 라즈베리파이의 SD카드에서 에서 /usr 폴더 전체를 복사하여 `rpi-root`라 불리우는 리눅스 호스트의 디렉토리로 붙여넣습니다. 이제부터는 이 폴더를 `RPI_ROOT`라고 부르겠습니다. `usr`는 반드시 `rpi-root`의 서브디렉토리여야 합니다.
    * /etc/debian_version 텍스트 파일을 `rpi-root`에 복사하거나 라즈베리파이에서 보여지는대로 작성하여 생성하십시오.
    * 파이의 /opt/vc 폴더를 복사하여 `rpi-root`에 붙여넣으십시오/

* arm6용 오픈프레임웍스를 압축을 풀어 컴퓨터의 아무곳에나 두십시오

* 터미널을 열어서, 아무 예제폴더로 이동한 뒤, 아래와 같이 라즈베리파이를 위해 바이너리를 빌드할 수 있습니다:
    * `make -j6 RPI_TOOLS=$RPI_TOOLS RPI_ROOT=$RPI_ROOT GST_VERSION=1.0 PLATFORM_OS=Linux PLATFORM_ARCH=armv6l`
    * _Note_: remember that `$RPI_TOOLS` and `$RPI_ROOT` are the folders where you have the raspberry pi's toolchain and the usr folder from the sdcard respectively
    * You may prefer to add the following to your `config.make`:
      ```
      export RPI_TOOLS = <path to RPI_TOOLS>
      export RPI_ROOT = <path to RPI_ROOT>
      export GST_VERSION = 1.0
      export PLATFORM_OS = Linux
      export PLATFORM_ARCH = armv6l
      ```

* 만약 PKG_CONFIG 에러가 발생하면, `export PKG_CONFIG_PATH=$RPI_ROOT/usr/lib/arm-linux-gnueabihf/pkgconfig:$RPI_ROOT/usr/share/pkgconfig:$RPI_ROOT/usr/lib/pkgconfig`를 입력하십시오.

* 아마도 링크과정 중에 (`$RPI_ROOT`에 어떻게 겁근하는지에 따라) libdl 관련 에러가 발생될 수 있습니다. 이 경우 심볼릭 링크의 절대경로 `$RPI_ROOT`가 망가졌을 수 있습니다. [이 스크립트](https://gitorious.org/cross-compile-tools/cross-compile-tools/source/98c51c5939d91884b096dd2fbee859803fd34fef:fixQualifiedLibraryPaths)를 사용하여 고치십시오. #!/bin/bash 의 첫줄을 변경하고, `sudo ./fixQualifiedLibraryPaths $RPI_ROOT $RPI_TOOLS/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian/bin/arm-linux-gnueabihf-g++`를 입력하십시오.

* 이제 makefile을 사용하기 위해 가장 선호하는 IDE를 세팅하여 라즈베리파이을 위해 여러분의 컴퓨터로 컴파일을 할 수 있습니다. 컴파일을 마친 뒤, 실행파일을 라즈베리파이의 your_app/bin에 복사하여 실행하시면 됩니다.

* 이 작업의 더 나은 최적화로는, NFS 공유를 라즈베리파이와 컴퓨터 양쪽에 설치하는 것입니다.
    * 라즈베리파이에서는 SD카드 root를 컴퓨터로 공유합니다. 이렬 경우, /usr 폴더 전체를 컴퓨터의 하드에 복사할 필요가 없으며, 라이브러리가 업데이트 되었더라도, 컴퓨터에 복사본을 다시 반영할 필요가 없습니다.
    * 컴퓨터에서는 오픈프레임웍스를 라즈베리파이로 공유합니다. 이럴 경우 컴퓨터에서 라즈베리파이로 실행파일을 복사할 필요가 없고, 라즈베리파이에서 바로 실행할 수 있습니다.

