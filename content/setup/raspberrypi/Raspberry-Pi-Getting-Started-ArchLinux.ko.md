## -*- coding: utf-8 -*-
.. title: raspberry pi

오픈프레임웍스를 위한 라즈베리파이2 B 세팅
============

## SD 카드 생성 - ArchLinux "ARMv7"

_*이 과정은 리눅스 머신에서 수행되었습니다 (raspbian을 사용할 수도 있습니다 :D)_

아래 설명의 내용중 **sdX**를 여러분의 컴퓨터에서 보이는 SD 카드의 이름으로 변경해주십시오.

1. SD카드의 파티션을 위해 fdisk를 시작합니다.

		fdisk /dev/sdX

+ fdisk 프롬프트에서, 원래의 파티션을 삭제하고, 새로운 파티션을 생성합니다:

	- **o**를 입력합니다. 드라이브상의 모든 파티션이 삭제됩니다.
 
	- **p**를 입력합니다. 남아있는 파티션이 없을것입니다.

	- **n**을 입력하고, **p**를 입력하여 primary를 선택합니다. **1**를 입력해 드라이브의 첫 파티션으로 설정하고, **ENTER**키를 눌러 첫 섹터로 기본으로 지정한 뒤 **+100M**를 입력하여 끝 섹터를 지정해줍니다.

	- **t**를 입력하고, **c**를 입력하여 첫 파티션을 **W95 AT32 (LBA)**로 지정해줍니다.

	- **n**을 입력하고, **p**를 입력해 primary를 선택한 뒤, **2**를 입력하여 두번째 파티션을 선택하고, **ENTER** 두번 눌러 기본 first andast sect로 지정합니다.

	- **w**를 눌러 파티션 테이블을 작성하고 종료합니다.

+ FAT파일 시스템을 생성하고 마운트합니다:

		mkfs.vfat /dev/sdX1
		mkdir boot
		mount /dev/sdX1 boot

+ ext4 파일 시스템을 생성하고 마운트합니다:

		mkfs.ext4 /dev/sdX2
		mkdir root
		mount /dev/sdX2 root

+ root 파일 시스템을 다운로드 하고 추출합니다(as root, not via sudo):

		wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-2-latest.tar.gz
		bsdtar -xpf ArchLinuxARM-rpi-2-latest.tar.gz -C root
		sync

+ boot파일을 첫 파티션으로 이동합니다:

		mv root/boot/* boot

+ 두 파티션을 언마운트합니다:
	
		umount boot root

라즈베리파이에 SD카드를 삽입하고, ethernet을 연결한 뒤, 5V전원을 연결합니다.
시리얼 콘솔창을 사용하거나 혹은 SSH로 접속합니다.
기본 사용자와 패스워드로 로그인합니다
root의 초기 패스워드는 root입니다.

---

# 도움말 ?
<br/>

1. **root**로 로그인합니다.

+ sudo 설치

		pacman -S sudo

+ **alarm** user를 삭제합니다.

		userdel alarm
	
+ 새로운 **pi** user를 생성합니다.
		
		useradd -m -G users -s /bin/bash pi

+ _sudoers_ 파일을 수정합니다.

	* sudo nano /etc/sudoers
	
			## Uncomment to allow members of group sudo to execute any command
			#%sudo ALL=(ALL) NOPASSWD: ALL
	* Uncomment the second of the above lines, so that it reads as follows:
	
			## Uncomment to allow members of group sudo to execute any command
			%sudo ALL=(ALL) NOPASSWD: ALL
	
	* Control-O + Control-X 를 눌러 저장하고 종료합니다.

+ 사용자 **pi**에게 superpowers 권한을 추가합니다.

		groupadd sudo
		usermod -a -G sudo pi
	
+ 손쉬운 사용을 위해 bash를 수정합니다.
	
	* nano .bashrc
	
			# This reads .bash_aliases file for aliases
			if [ -f ~/.bash_aliases ]; then			 		
			. ~/.bash_aliases
			fi

	 * nano .bash_aliases

			  #Enter openFrameworks folder just by typing "oF"
			  alias oF='cd /home/pi/of_v0.9.2_linuxarmv7l'
			  #Run project generator by typing projectgenerator
			  alias projectgenerator='oF && ./apps/projectGenerator/commandLine/bin/projectGenerator'
			  # Read temperature of rPi
			  alias temp='/opt/vc/bin/vcgencmd measure_temp'
			  # Read screen properties
			  alias screen='/opt/vc/bin/tvservice -s'

	* nano .bash_profile
	
			#Setup openFrameworks variables
			export MAKEFLAGS=-j4 PLATFORM_ARCH=armv7l PLATFORM_VARIANT=raspberry2

---
## 예비 작업
<br/>

1. 말끔한 작업을 위해 디렉토리를 생성합니다.(추후 삭제 가능)

		mkdir builds
		cd builds

+ devel 같은 것들을 설치합니다.

		sudo pacman -S --needed base-devel
		
+ **rtMIDI를 설치합니다.**

		curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/rtmidi.tar.gz
	
+ PKGBUILD 파일을 편집합니다.
	
		cd rtmidi
		nano PKGBUILD

+ [ **arch=('i686' 'x86_64')** ]를 찾아 [ **arch=('armv7h')** ]로 변경

		arch=('i686' 'x86_64') ----> arch=('armv7h')
	
+ Make

		makepkg -si

+ **rtAudio를 설치합니다.**

		curl -L -O https://aur.archlinux.org/cgit/aur.git/snapshot/rtaudio.tar.gz
	
+ PKGBUILD 파일을 편집합니다.
	
		cd rtaudio
		nano PKGBUILD

+ [ arch=('i686' 'x86_64') ]를 찾아 [ arch=('armv7h') ]로 변경합니다.

		arch=('i686' 'x86_64') ----> arch=('armv7h')
	
+ Make

		makepkg -si
	
	[프롬프트에서 물어보는 요청을 모두 허가합니다(물론 여러분의 동의가 필요하죠)]

+ 재부팅 후 builds폴더를 삭제합니다(패키지는 이미 설치되어 있음).
	

---
## 오픈프레임웍스
<br/>


1. 웹사이트에서 오픈프레임웍스를 다운받습니다.

		curl -O http://openframeworks.cc/versions/v0.9.2/of_v0.9.2_linuxarmv7l_release.tar.gz

+ oF 디렉토리를 생성합니다.

		mkdir of_v0.9.2_linuxarmv7l

+ tar파일을 압축 해제합니다.

		tar vxfz of_v0.9.2_linuxarmv7l_release.tar.gz -C of_v0.9.2_linuxarmv7l --strip-components 1
	
+ 업데이트

		pacman -Syu
	
+ 스크립트들을 실행합니다.

		cd of_v0.9.2_linuxarmv7l/scripts/linux/archlinux
		sudo ./install_dependencies.sh
	
	[This usually takes some time and has some prompts (accept them)]
	
		sudo install_codecs.sh
	
+ makeflags를 세팅합니다(.bash_profile에 아래 내용을 추가하면 매번 입력해줄 필요가 없습니다).

		export MAKEFLAGS=-j4 PLATFORM_ARCH=armv7l PLATFORM_VARIANT=raspberry2
	
+ oF를 컴파일합니다.

		make Release -C /home/pi/of_v0.9.2_linuxarmv7l/libs/openFrameworksCompiled/project
	
+ 예제 실행하기

		cd /home/pi/of_v0.9.2_linuxarmv7l/examples/graphics/polygonExample
		make && make run

Have lots of fun ! **:)**
