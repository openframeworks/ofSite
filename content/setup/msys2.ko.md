## -*- coding: utf-8 -*-
.. title: msys2

[openFrameworks](/) | [Documentation table of contents](table_of_contents.md)

msys2
=====

msys2 설치
----------------

우선,[원클릭 인스톨러](https://msys2.github.io/)나 [코드 저장소](http://sourceforge.net/projects/msys2/files/Base/x86_64/)
에서 압축파일을 받아 압축을 직접 해제하여 MSYS2를 설치합니다.

만약 QtCreator를 사용할 예정이라면, msys2를 디폴트 경로인 c:\msys64에 설치하셔야 합니다.

**MSYS2 쉘** (`C:\msys64\msys2_shell.bat`)을 실행하고 시스템 패키지를 업데이트 합니다:

    pacman --noconfirm  --needed -Sy bash pacman pacman-mirrors msys2-runtime
	
쉘을 닫고, 새로 쉘을 연 다음 남아있는 패키지들을 업데이트 합니다:

    pacman --noconfirm -Su

이제 오픈프레임웍스를 설치할 준비가 되었습니다.


openFrameworks 설치하기
-------------------------

오픈프레임웍스의 qt **creator / msys2** 버전을 다운받아 압축을 해제합니다.

**MSYS shell** (`C:\msys64\msys2_shell.bat`)을 열고 오픈프레임웍스의 의존성 패키지를 설치합니다:
    cd your_oF_directory/scripts/msys2
    ./install_dependencies.sh`
	
**MINGW32**쉘을 열고 (`C:\msys64\ming32_shell.bat`을 실행), OF라이브러리들을 컴파일합니다:

    cd your_oF_directory/libs/openFrameworksCompiled/project
    make

병렬빌드를 사용하여 컴파일 속도를 높일려면 `make -j4` 명령을 사용합니다. 원하는 코어의 갯수를 수정할 수도 있습니다.


PATH 변수 세팅
-------------------------
MSYS2에서, 오픈프레임웍스는 MSYS2 패키지 매니저인 `pacman`에 의해 제공되는 dll파일들을 필요로 합니다. PATH 변수는 시스템에게 이러한 dll파일을 찾아야 할 위치를 알려줍니다. 윈도우즈운영체제에서는, 시스템이 구동되면 실행가능한 폴더들을 살펴보고, 이 폴더들을 시스템 PATH(system PATH)로 정의한 뒤, 최종적으로 사용자 PATH(user PATH)로 지정합니다.

윈도우즈에서 PATH를 세팅하는 방법은 이곳에서 살펴볼 수 있습니다: http://www.computerhope.com/issues/ch000549.htm

You'll need to add `c:\msys64\mingw32\bin` and `c:\msys64\usr\bin` to your PATH. There are two ways:
`c:\msys64\mingw32\bin` 와 `c:\msys64\usr\bin`를 여러분의 PATH에 추가해야 합니다. 이렇게 하기 위해서 두가지 방법이 있습니다:


1. Either add them via 'Environment Variables' from the Control Panel > System > Advanced System Settings.
2. Or you can also set the PATH from the command line: open a Windows cmd prompt and set you user PATH.

1. 제어판>시스템>고급 시스템 설정의  '환경변수'에 추가하거나
2. 또는 아래의 명령을 커맨드라인에서 사용해 PATH를 추가할 수 있습니다 : 윈도우 CMD 프롬프트를 열고 PATH를 지정합니다. 

```
setx PATH "c:\msys64\mingw32\bin;c:\msys64\usr\bin;%PATH%"
```

만약 관리자 권한이 있다면, system PATH에 직접 지정할 수 있으며, 모든 사용자가 영향을 받게 됩니다..

이게 전부입니다. 이제 _오픈프레임웍스 디렉토리_/examples 폴더로 이동하여 직접 가지고 놀아봅시다!

예제 실행하기
----------------
예제파일을 컴파일합니다 (여기서는 3DPrimitivesExample을 예시로 들었습니다)

    cd your_oF_directory/examples/3d/3DPrimitivesExample
    make


이제, `make run`혹은 exe파일을 직접 더블클릭하여 실행합니다.


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

실행파일이 ssleay32.dll와 libeay32.dll를 참조하였으나, TLS v1.1를 지원하지 않은 다는 의미입니다. 이는 일반적으로 인텔 iCls소프트웨어때문에 발생합니다. 해결법은 `_msys2디렉토리_/mingw32/bin` 폴더를 충돌 전의 경로로 이동시키는 것입니다. 만약 충돌하는 경로가 system PATH에 있고, 사용자계정이 관리자권한이 없다면, `_msys2디렉토리/mingw32/bin`의 ssleay32.dll파일을 복사해 실행파일이 있는 폴더로 붙여넣는 것입니다.

- "저는 프록시를 사용하여 회사 네트워크를 사용하고 있습니다. pacman으로 패키지를 다운받을수 없네요."

You may need to set HTTP_PROXY and HTTPS_PROXY environment variables.
환경변수에 HTTP_PROXY와 HTTPS_PROXY를 설정해주어야 합니다.

    커맨드 프롬프트에 아래 명령어를 입력하세요 :    
    set http_proxy=http://your_proxy:your_port
    set http_proxy=http://username:password@your_proxy:your_port
    set https_proxy=https://your_proxy:your_port
    set https_proxy=https://username:password@your_proxy:your_port
패스워드에 포함된 특수문자가 있을경우 escape 처리하는것을 잊지 마세요..

 
오픈프레임웍스팀에게 많은 감사를!!

