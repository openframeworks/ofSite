## -*- coding: utf-8 -*-
.. title: raspberry pi

라즈베리파이
============


<!-- ## Mount your Raspberry Pi as a hard drive -->
## 라즈베리파이를 하드드라이브처럼 마운트하기
    
<!-- **WARNING: This is a very permissive file sharing configuration that gives you read/write/delete permissions across the entire file system. It is not recommended if you are the least bit concerned about being able to delete important files over a network.** -->
**경고 : 이는 파일시스템 전체에 걸쳐 읽기/쓰기/삭제 원한을 주는 공유설정입니다.  네트워크상에서 중요한 파일들이 삭제되는것이 염려되는 분들께는 추천하지 않습니다**

<!-- ### Install Samba -->
### 삼바(Samba) 설치
<!-- From a Shell run these commands -->
쉘에서 아래의 명령어를 실행하세요

* `sudo apt-get install samba samba-common-bin`

<!-- The next command will prompt you for a password you will need to remember. Use `raspberry` if you want to keep the default as the pi user's defaults -->
아래의 명령어들을 입력하면 패스워드를 물어볼것이니, 기억해두어야 하니다. pi 계정의 기본설정으로 유지하고 싶다면 `raspberry`를 사용하십시오.

* `sudo smbpasswd -a pi`
* `sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.old`
* `sudo rm /etc/samba/smb.conf`
* `sudo nano /etc/samba/smb.conf`

<!-- You should now be editing the configuration file. Paste this into it:  -->
설정파일을 편집해야합니다. 아래 내용을 붙여넣으세요:

[global]  
		workgroup = HOME  
		netbios name = SAMBA  
		server string = Samba Server %v  
		map to guest = Bad User  
		log file = /var/log/samba/log.%m  
		max log size = 50  
		socket options = TCP_NODELAY SO_RCVBUF=8192 SO_SNDBUF=8192  
		preferred master = No  
		local master = No  
		dns proxy = No  
		security = User  

\# Share      
[Data]  
		path = /  
		valid users = pi  
		read only = No  
		create mask = 0777  
		directory mask = 0777

* Press CTRL+o to save the file
* Press CTRL+x to exit `nano`	   
* `sudo /etc/init.d/samba restart`

<!-- You should now be able to mount your Raspberry Pi via the address smb://your.raspberry.pi.ip/Data -->
이제 smb://your.raspberry.pi.ip/Data의 주소로 마운트된 라즈베리파이로 접근할 수 있습니다.

<!-- You user will be pi and the password will be `raspberry` or whatever you set it to above -->
사용자계정은 pi이며 패스워드는 기본설정은 `raspberry` 또는 여러분이 위에서 설정한 패스워드 입니다.

<!-- **Note: The Mac will often write hidden ._ files on the drive that can sometimes confuse the compiler into thinking they are source files. [Blue Harvest](http://www.zeroonetwenty.com/blueharvest) is good at removing these on the fly.**  -->

**노트: 맥에서 사용할경우 종종 숨겨진 파일인 ._으로 시작하는 파일을 하여 컴파일러가 이것들을 소스파일로 간주하고 혼란스러워 하는 경우가 종종 있습니다. [Blue Harvest](http://www.zeroonetwenty.com/blueharvest)가 이러한 파일들을 그때 그때 삭제해주는 도구입니다.
