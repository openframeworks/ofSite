## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이에서의 오픈프레임웍스 문제 해결
============

#### hard-float Raspbian "Jessie" 배포판을 사용중인가요?

오픈프레임웍스 0.9.0은 데비안 Jessie hard-float 배포판을 필요로 하며, 오픈프레임웍스 0.8.4는 데비안 wheezy hard-float 배포판을 필요로 합니다. 이 밖에도 오픈프레임웍스와 호환되지 않는 soft-float 데비안 "wheezy"도 있습니다. 아키리눅스 지원이 계획되어있지만, 현재는 지원되지 않고 있습니다.

#### 라즈베리파이가 확실히 충분한 전원을 제공받고 있나요?

다른 불확실한 문제들은 아마도 불충분한 문제일 수 있습니다. 더 많은 정보들은 [전원 문제]( http://elinux.org/RPi_Hardware#Power_Supply_Problems)를 읽어보시기 바랍니다.

#### install_dependencies.sh 스크립트 설치가 끝나지 않는다

가끔 Raspbian 미러가 엄청나게 느릴 때가 있습니다. 이럴 경우 `/etc/apt/sources.list`를 편집하여 [Rasbian 미러리스트](https://www.raspbian.org/RaspbianMirrors) 중 하나를 사용할 수 있습니다.

#### 오픈프레임웍스를 컴파일할 때 ofColor에서 멈추는 경우

CPU에 최소 128MB의 램을 할당하였는지 확인하십시오. [라즈베리파이 시작하기](../raspberry-pi-getting-started/)의 _**라즈베리파이 설정하기**_ 섹션을 살펴보시기 바랍니다.

#### 오픈프레임웍스 또는 여러분의 오픈프레임웍스 어플리케이션 디버깅하기

오픈프레임웍스와 여러분의 오픈프레임웍스 어플리케이션을 빌드할 때 어떤 프로젝트든 `make Debug` 디버그 심벌를 사용할 수 있습니다.
발생하는 이슈에 따라 [gdb](http://www.cs.cmu.edu/~gilpin/tutorial/)를 사용할 수 있습니다.

#### USB장치를 사용하는데 문제가 있나요?

[인증 장치](http://elinux.org/RPi_VerifiedPeripherals)리스트를 살펴보시기 바랍니다. 만약 사용할려고 하는 USB장치가 리스트에 없고, 사용할 수 없을 때에는 아래의 단계를 따라 라즈베리파이의 로그 정보를 모을 수 있습니다:

* `rm /var/log/kern.log /var/log/kern.log.1 /var/log/kern.log.*.gz`
* `shutdown -r now`
* 어플리케이션을 실행한다
* `lsusb -v | grep -iP "Transfer Type.*(Interrupt|Isochronous)" | wc -l`
* `cat /var/log/kern.log | grep -iP "fail|warn|error" | perl -p -e 's/^[^]\n]*]//g;s/(warn_alloc_failed: )[0-9]+/$1/g' | sort -u;`
* `dmesg`
* 결과를 복사하여 요약본에 모은다

USB 장치 디버그에 관한 더 많은 정보는 [라즈베리파이 USB 체크리스트](http://elinux.org/Rpi_USB_check-list)를 살펴봐주시기 바랍니다.
