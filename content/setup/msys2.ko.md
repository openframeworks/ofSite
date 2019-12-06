## -*- coding: utf-8 -*-
.. title: msys2

[openFrameworks](/) | [Documentation table of contents](table_of_contents.md)

msys2
=====

msys2 설치
----------------

먼저, [원클릭 인스톨러](https://msys2.github.io/)나 [코드 저장소](http://sourceforge.net/projects/msys2/files/Base/x86_64/)
에서 압축파일을 받아 압축을 직접 해제하여 MSYS2를 설치합니다.

만약 이미 (2018 이전의) 구 버전 MSYS2가 설치되어있다면, 새로 다시 설치하는것을 추천드립니다.

만약 QtCreator를 사용할 예정이라면, 반드시 msys2를 기본 경로인 c:\msys64에 설치하셔야 합니다.

자 , 이제 MSYS2를 업데이트를 진행합니다.
MSYS2쉘 (MSYS나, MING32 또는 MING64가 될 수 도 있습니다.) 에서, 아래의 명령어를 실행합니다.

```sh
pacman -Syu --noconfirm --needed
```

시스템 파일이 업데이트되면, 쉘을 닫아달라는 요청이 보일겁니다.
요청대로 쉘을 닫고, 새로 쉘을 연 다음 같은 명령어로 남아있는 패키지들을 업데이트 합니다:

```sh
pacman -Syu --noconfirm --needed
```

이제 오픈프레임웍스를 설치할 준비가 되었습니다.


openFrameworks 설치하기
-------------------------

**중요 주의사항**
MSYS2는 세 종류의 flavor가 딸려옵니다 : MSYS (msys2.exe), MINGW32 (mingw32.exe), MING64 (ming64.exe) 가 바로 그것들입니다. 이게 엄청나게 중요한데, 잘못된 flavor를 통해 MSYS2와 오픈프레임웍스를 구동하면 많은 문제점들이 발생하기 떄문입니다.

0.11.0에서는, **MING32** 와 **MING64**는 [다운로드 페이지](https://openframeworks.cc/download)에서 각각 서로 다른 배포판에 의해 지원됩니다.
하지만 반드시 그에 맞는 쉘을 사용해줘야 합니다. **32bit 오픈프레임웍스 배포판**에는 **ming32.exe** 쉘을, **64bit 오픈프레임웍스 배포판**에는 **mingw64.exe** 쉘을 사용해줘야 합니다.

뒤따르는 도움말에서는, MSYS가 `C:\msys64`에 설치되어있고, 32bit 오픈프레임웍스 배포판을 사용한다는 가정하에 진행됩니다.
따라서 만약 이미 다른 별도의 경로에 설치해뒀다면, 여러분의 MSYS2 설치경로에 맞게 도움말의 경로를 바꿔서 따라와주세요.

**주의 : 만약 64bit 오픈프레임웍스 배포판을 사용한다면, 마찬가지로 뒤따르는 도움말에서  `ming32.exe`대신 `ming64.exe`를 사용해야 합니다. **

오픈프레임웍스의 qt **creator / msys2** 버전을 다운받아 압축을 해제합니다.
오픈프레임웍스가 위치할 폴더에는 **공백이 포함되면 안됩니다**.

**MING32**쉘 (`C:\msys64\ming32.exe`)을 열고 오픈프레임웍스의 의존성 패키지를 설치합니다:

```sh
cd your_oF_directory/scripts/msys2
./install_dependencies.sh
```

다음으로 OF 라이브러리들을 컴파일합니다:

```sh
cd your_oF_directory/libs/openFrameworksCompiled/project
make
```

병렬빌드를 사용하여 컴파일 속도를 높일려면 `make -j4` 명령을 사용합니다. 원하는 코어의 갯수를 수정할 수도 있습니다.


PATH 변수 세팅
-------------------------

PATH변수를 세팅하는것은 필수 과정은 아닙니다만, 여러 문제들의 발생을 방지할 수 있습니다.

v0.10.1에서는, `install_depencies.sh`스크립트가 잘못 동작하거든요!

### 왜 PATH 변수를 설정해줘야 하는거죠?

__여러분이 최종으로 만든 오픈프레임웍스 어플리케이션을 더블클릭하여 실행할 수 있도록 해줍니다__

어플리케이션의 실행을 위해서는, 함께 컴파일된 동적 라이브러리(dll)가 필요합니다.
만약 필요한 dll파일이 어플리케이션의 경로에서 발견되지 않으면, 윈도우 운영체제는 PATH변수내에 지정된 경로들을 훑어가며 dll파일을 찾습니다.

만약 `C:\msys64\ming32\bin`이 PATH 변수에 설정되어있다면, 운영체제는 올바른 dll을 찾을 수 있을겁니다. 하지만, 호환되지 않는 다른 폴더에서 동일한 이름의 dll파일을 찾을수도 있습니다.... 

MSYS2 업데이트 이후, `C:\msys64\ming32\bin`에서 호환되지 않는 새로운 버전을 찾는 경우가 발생할 수도 있습니다....

이러한 문제를 해결하기위해서 어플리케이션 폴더에 모든 필요한 dll파일들을 복사하는 방법이 있습니다.
아래의 명령으로 쉽게 가능합니다 :

```sh
make copy_dlls
```

위의 방법은 손쉽게 다른 컴퓨터에 어플리케이션을 설치할때도 사용할 수 있습니다.


__(Qt Creator 또는 VS Code)와 같은 IDE에서 오픈프레임웍스를 컴파일 하기 위해__

언급한 IDE 소프트웨어들은 (gcc, make)과 같은 컴파일러 프로그램을 감지하기 위해 PATH 변수를 훑어봅니다.
따라서 손쉽게 IDE를 설정하는 방법이 됩니다.
또한 어떠한 IDE들은 설정을 통해 사용할 컴파일러를 직접 지정할 수도 있습니다. 더 나은 방법이죠.
앞서 언급했듯, PATH변수에 의존하게 되면 예기치 않은 문제가 발생할 수 있습니다. (가령 C:\msys64\usr\bin\find.exe를 사용해야 하는데, C:\Windows\System32\find.exe를 사용하는것과 같이요).

IDE를 구동할 때, 어떤 PATH를 사용할지 별도의 배치파일을 작성하는것도 하나의 방법입니다. 이렇게 하면 시스템 PATH를 깔끔하게 관리할 수 있습니다.

### PATH 변수를 사용하기로 결정했습니다. 어떻게 하면 되나요?

윈도우즈에서 PATH를 세팅하는 방법은 이곳에서 살펴볼 수 있습니다: http://www.computerhope.com/issues/ch000549.htm

`c:\msys64\mingw32\bin` 와 `c:\msys64\usr\bin`를 **차례대로** 여러분의 PATH에 추가해야 합니다. 이렇게 하기 위해서 두가지 방법이 있습니다:

1. 제어판>시스템>고급 시스템 설정의  '환경변수'에 추가하거나
2. 또는 아래의 명령을 커맨드라인에서 사용해 PATH를 추가할 수 있습니다 : 윈도우 CMD 프롬프트를 열고 PATH를 지정합니다. 

```
setx PATH "c:\msys64\mingw32\bin;c:\msys64\usr\bin;%PATH%"
```

PATH는 로그온하면서 업데이트 되기 떄문에, 반드시 로그오프/로그인을 해주는것을 잊지 마세요.

이게 전부입니다. 이제 _오픈프레임웍스 디렉토리_/examples 폴더로 이동하여 예제를 가지고 놀아보세요!

예제 실행하기
----------------
예제파일을 컴파일합니다 (여기서는 3DPrimitivesExample을 예시로 들었습니다)

```sh
cd your_oF_directory/examples/3d/3DPrimitivesExample
make
```

이제, `make run`혹은 exe파일을 직접 더블클릭하여 실행합니다.

(만약 PATH를 사용하지 않는다면!) exe파일을 더블클릭하여 실행할 수 있게 하기 위해서, `make copy_dells`를 실행하세요.

Makefile
--------

모든 예제는 config.,make와 addons.make를 사용하여 설정이 가능한 Makefile을 가지고 있습니다.

config.make: 이 파일은 헤더파일 검색, 라이브러리 등의 옵션을 설정할 수 있으며, 일반적인 make파일의 문법을 사용합니다. 
파일안에 도움말 코멘트가 있으니 살펴보시기 바랍니다.

addons.make: 만약 addons폴더안에 있는 애드온을 사용하고 싶을때에는, 이 파일안에 애드온 이름을 새 라인에 추가하면 됩니다.

QtCreator
---------

msys2와 함께라면, QtCreator를 IDE로 사용할 수 있습니다. 좀 더 자세한 정보는 [셋업가이드](../qtcreator)를 살펴보세요

자주묻는 질문 / 일반적인 문제들
--------------------- 
- exe 파일을 더블클릭했더니 "TLSv1_1_client_method missing" 오류가 뜹니다.

실행파일이 ssleay32.dll와 libeay32.dll를 참조하였으나, TLS v1.1를 지원하지 않은 다는 의미입니다. 이는 일반적으로 인텔 iCls소프트웨어때문에 발생합니다. 해결법은 `_msys2디렉토리_/mingw32/bin` 폴더를 충돌 전의 경로로 이동시키는 것입니다. 만약 충돌하는 경로가 system PATH에 있고, 사용자계정이 관리자권한이 없다면, `_msys2디렉토리/mingw32/bin`의 ssleay32.dll파일을 복사해 실행파일이 있는 폴더로 붙여넣습니다.

- "저는 프록시를 사용하여 회사 네트워크를 사용하고 있습니다. pacman으로 패키지를 다운받을수 없네요."

환경변수에 HTTP_PROXY와 HTTPS_PROXY를 설정해주어야 합니다.

    커맨드 프롬프트에 아래 명령어를 입력하세요 :    
    set http_proxy=http://your_proxy:your_port
    set http_proxy=http://username:password@your_proxy:your_port
    set https_proxy=https://your_proxy:your_port
    set https_proxy=https://username:password@your_proxy:your_port

패스워드에 포함된 특수문자가 있을경우 escape 처리하는것을 잊지 마세요..

 
오픈프레임웍스팀에게 많은 감사를!!

