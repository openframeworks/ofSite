## -*- coding: utf-8 -*-
.. title: linux eclipse

리눅스 이클립스
=============

리눅스에서 오픈프레임웍스를 사용할려면 우선 몇가지 설치 스크립트를 실행해주어야 합니다. 아직 설치하지 않으셨다면 [이곳](../linux-install/)의 지시를 따라주십시오.

**노트**: 만약 문제가 발생할 경우 페이지 하단의 [FAQ](#faq)를 살펴보세요.

<!-- This guide describes how to get started with openframeworks using Eclipse as IDE. Eclipse is very powerful, however it is a complex and somewhat resource heavy environment. Since version 0.9.0 Qt Creator is the recomended IDE. -->
이 가이드는 오픈프레임웍스를 IDE로 Eclipse를 사용하는 방법에 대해서 설명합니다. 이클립스는 아주 강력하지만, 복잡하고 리소스를 많이 사용하므로 무겁습니다.0.9.0부터는 Qt Creator를 IDE로 추천해 드립니다.

<!-- This guide was tested on Ubuntu 15.10 64 bit installation with Eclipse Mars and the openFrameworks version 0.9.0 for 64bit. -->
이 가이드는 Ubuntu 15.10 64비트 배포판에서 테스트 되었으며, Elipse Mars와 오픈프레임웍스 0.9.0 64비트를 사용했습니다.

<!-- To use it you will need Eclipse for C++ and openframeworks. -->
사용하기 위해 Eclipse for C++와 오픈프레임웍스가 필요합니다.

요약
-------
주요 과정은 아래와 같습니다:

- 이클립스를 설치한다.
- 오픈프레임웍스를 다운로드페이지에서 다운로드하거나, git에서 복제한다.
- 이클립스용 오픈프레임웍스 플러그인을 설치한다.
- 이클립에서 오픈프레임웍스 프로젝트를 import한다.
- 새 프로젝트를 생성한다.
- 애드온을 추가한다.
- 새 프로젝트에 코드를 작성해 코드가 잘 동작하는지 확인한다.
- 새 프로젝트를 디버그하여 디버그 빌드가 잘 동작하는지 확인한다.

설치하기
------------

**a) 이클립스**: [이클립스 웹사이트의 다운로드 섹션][11]에서 여러분의 플랫폼용 C/C++ 에디션을 다운받습니다.

![이클립스 다운로드][01downloadEclipse]

이 가이드는 이클립스 Mars를 사용하는 가이드입니다.

[이클립스 사이트][1]에 직접 제공하는 설치 가이드가 있습니다. 여기서는 오라클의 Java와 이클립스를 사용하도록 권장하고 있습니다. 하지만 사이트에서 제공되는 우분투를 위한 자바 [설치가이드][12]는 오래된 정보입니다. 우분투에 한해 이클립스를 설치하는 것에 관한 정보는 이 [질문/답변][13] 페이지와, [실행가능한 파일을 두는 곳 및 런처 아이콘 만들기][14] 가이드를 살펴봐 주시기 바랍니다.


**b) 리눅스 패키지를 위한 오픈프레임웍스**: [오픈프레임웍스 다운로드 페이지][4]에서 다운받으세요.

또한 [Github (master 브랜치)][9] 역시 확인해보시기 바랍니다.

- 오픈프레임웍스 패키지의 scripts/linux 폴더안을 보시면 여러분이 사용하고 있는 패포판에 관한 디렉토리를 찾으실 수 있습니다. 디렉토리 안에는 install_dependencies.sh와 install_codecs.sh 두개의 스크립트가 있습니다. 적어도 install_dependencies.sh는 꼭 실행해주셔야 하며, install_codecs.sh 스크립트를 실행해 h264나 mp3와 같은 포맷을 지원하는 코덱을 설치할 수 있습니다. 만약 문제가 발생 경우, 문제가 발생하지 않을떄까지 여러번 실행할 수 있습니다. 만약 오픈프레임웍스를 새 버전으로 업그레이드 할려면, install_dependencies.sh 스크립트를 다시 실행해주면 됩니다. 만약 tar-zipped로 오픈프레임웍스를 다운받으셨을 경우, 명령어 모드에서 makefile을 사용하여 예제들을 빌드할 수 있습니다. 만약 GitHub 버전을 사용하고 있다면, projectGenerator를 사용하여 예제프로젝트를 생성하거나, template에서 MakeFile과 config.make를 복사하여 실행할 수 있습니다.

우분투의 경우, 정확한 과정은 다음과 같습니다:

__Ubuntu:__ 

- 터미널을 엽니다. unity를 사용한다면, Dash 아이콘을 클릭하고 검색어를 입력하여 적절한 어플리케이션을 선택하시면 됩니다.

- 터미널에서, 오픈프레임웍스 패키지가 있는 디렉토리로 이동합니다.

- 예를 들어 여러분의 사용자명이 ofuser이고, 오픈프레임웍스가 데스크탑에 압축해제 되어 있다면 이와 같을 것입니다:

		cd /home/ofuser/Desktop/of_v0.9.0_linux64_release/scripts/linux/ubuntu

- 해당 디렉토리내에서 아래와 같이 스크립트를 실행합니다:

        sudo ./install_dependencies.sh

- 예제들이 make 파일과 동작하는것을 확인하기 위해, 예제 디렉토리로 이동하여 make라고 입력합니다.

- 예를 들어, 여러분의 사용자명이 ofuser이고, 오픈프레임웍스가 데스크탑에 압축해제되어있다면 이와 같을것입니다:

        cd /home/ofuser/Desktop/of_v0.9.0_linux64_release/examples/graphics/polygonExample
        make
        cd bin
        ./polygonExample
    

**c) 이클립스 시작하기**: 


터미널에서 이클립스를 설치한 곳으로 이동하여 명령어를 사용하거나, 또는 직접 만든 런처 아이콘을 클릭하여 시작할 수 있습니다. 명령어는 아래와 같을것입니다:

        cd /home/ofUser/apps/eclipse
        ./eclipse

실행하면 작업공간으로 어느 디렉토리를 사용할것인지 팝업으로 물어볼 것입니다. 오픈프레임웍스는 이 작업공간과 무관하기 떄문에 그냥 디폴트로 두시면 됩니다.
![workspace launcher][01workspaceLauncher]


**d) 이클립스에 오픈프레임웍스 임포트 하기:** 

File \> Import and select General \> Existing projects in the workspace로 이동하여...

![import projects 1][01importProjects]

`openFrameworks/libs/openFrameworks`를 임포트 합니다.


**e) 오픈프레임웍스 이클립스 플러그인 설치하기**

Help > Install New Software 에서, `Add`버튼을 눌러 새 저장소를 추가합니다. name에 openFrameworks plugin을, URL에 http://openframeworks.cc/plugins/eclipse을 입력합니다.

openFrameworks 플러그인을 선택하고, 라이센스 동의를 선택하고 인스톨합니다. 인스톨하는 과정중에 플러그인을 위해 디지털 시그니처 확인을 물을것입니다. 인스톨된 이후 이클립스를 재실행해주셔야 합니다.

**f) 테스트 프로젝트 생성하기**

File > New > Project 선택한 뒤 C/C++ > openFrameworks에서 openFrameworks application을 선택합니다.

이곳에서 새 오픈프레임웍스 어플리케이션을 생성하거나 이미 있는 프로젝트의 위치를 지정하여 프로젝트를 업데이트 할 수 있습니다. next를 클릭하여 프로젝트에 포함시킬 애드온을 선택할 수 있습니다. Finish를 누르면 프로젝트가 생성되고 컴파일합니다. 프로젝트가 컴파일 되면 이클립스가 컴파일러의 출력을 해석할 수 있으므로 자동완성이 훨씬 수월해집니다. 

**g) 새 프로젝트에 코드 추가하기**

프로젝트에 코드를 추가합니다. 이 단계에서 Ctrl-스페이스바 단축키로 코드 자동완성이 가능한지 테스트할 수 있습니다. 가령 ofL을 입력한 상태에서 Ctrl-Space를 눌렀을때 ofLog 메소드가 출력됩니다. 또한 F3이나 Ctrl+마우스 왼쪽버튼을 눌러 메소드의 선언부분을 확인할 수 있는 바로가기 기능을 사용할 수 있습니다. 망치 아이콘을 이용하여 코드를 컴파일 할 수 있습니다. 여기서는 예제로 ofApp.cpp 파일의 setup메소드에 로그 메시지를 추가하였습니다. 망치 아이콘의 화살표 다래에서 Debug 설정을 선택했는지 확인하세요.

![코드 추가 1][01addCode]
![코드 추가 2][02addCode]
![코드 추가 3][03addCode]

**h) 테스트 프로젝트 실행및 디버그하기**

코드 작성영역의 여백부분을 마우스 우측버튼을 클릭해 breakpoint를 설정하거나, 더블클릭하여 breakpoint설정을 토글할 수 있습니다. 녹색 버그 툴바아이콘을 클릭하여 디버그 모드에서 실행할 수 있습니다. 이때 지정한 breakpoint에서 디버거에 의해 멈출 것입니다. 디버그를 컨트롤하여 실행과정을 계속 진행하거나 코드의 다음 단계로 넘어갈 수 있습니다.

![테스트 프로젝트 디버그하기][01debugTestProject]

**i) 프로젝트에 애드온 추가하기**

프로젝트의 메뉴를 통해 이미 존재하고 있는 프로젝트에 애드온을 추가할 수 있습니다. 오픈프레임웍스 프로젝트에서 마우스 우측버튼을 클릭하고, Properties > openFrameworks를 선택해 애드온을 추가하거나 삭제할 수 있습니다. 애드온을 추가한 후 프로젝트의 메뉴에서 Index > Rebuild를 선택해 재빌드를 해주시는것을 추천해드립니다.

<iframe src="https://player.vimeo.com/video/143111040" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> 

노트
-----

- 데이터 파일은 반드시 bin/data에 위치해야 합니다.

- 종종 버그처럼 인식되는 구불구불한 밑줄로 표시되는 심볼들이 나타나지만 프로젝트는 여전히 컴파일과 실행이 정상적으로 가능한 경우가 있습니다. 이는 이클립스가 어떤 심볼이 사용되어야 하는지 혼란스러워 하기 때문입니다.

- 컴파일러와 ofLog의 출력은 Console 탭에서 확인할 수 있습니다.

<a id="faq"></a>FAQ
---

- 디버그를 위해 녹색 버그 아이콘을 클릭했을때 아무변화가 없을 경우, 녹색 버그 아이콘의 화살표를 눌러 프로젝트 설정을 지정해줘야 할 필요가 있습니다.

- breakpoint를 설정할 수 없을경우, 여백을 잘 선택해 주셔야 합니다. 선택이 가능한 영역이 그리 크지 않습니다.

- 종종 심볼을 새로고침 해주기 위해 프로젝트에서 우측버튼을 클릭해 index \> Rebuild를 클릭해주셔야 합니다.

[1]: http://wiki.eclipse.org/Eclipse/Installation#Install_a_JVM
[2]: http://developer.android.com/sdk/index.html
[3]: http://developer.android.com/sdk/ndk/index.html
[4]: http://openframeworks.cc/download
[5]: http://ant.apache.org/bin/download.cgi
[6]: http://developer.android.com/sdk/eclipse-adt.html
[7]: http://developer.android.com/guide/developing/device.html
[8]: http://www.multigesture.net/articles/how-to-setup-openframeworks-for-android-on-windows/
[9]: http://github.com/openframeworks/openFrameworks
[10]: http://www.undef.ch/uploads/ofDoc/html/classof_log.html
[11]: http://www.eclipse.org/downloads/
[12]: http://www.ubuntugeek.com/how-to-install-oracle-java-7-in-ubuntu-12-04.html
[13]: http://askubuntu.com/questions/186299/eclipse-juno-need-root-access-everytime-i-change-the-configuration
[14]: https://help.ubuntu.com/community/EclipseIDE

[01downloadEclipse]: /setup/linux-eclipse/01downloadEclipse.png
[01workspaceLauncher]: /setup/linux-eclipse/01workspaceLauncher.png
[01importProjects]: /setup/linux-eclipse/01importProjects.png
[02importProjects]: 02importProjects.png
[01externalTool]: /setup/linux-eclipse/01externalTool.png
[02externalTool]: /setup/linux-eclipse/02externalTool.png
[03externalTool]: /setup/linux-eclipse/03externalTool.png
[01createTestProject]: /setup/linux-eclipse/01createTestProject.png
[01importTestProject]: /setup/linux-eclipse/01importTestProject.png
[02importTestProject]: /setup/linux-eclipse/02importTestProject.png
[01setReferences]: /setup/linux-eclipse/01setReferences.png
[01debugTarget]: /setup/linux-eclipse/01debugTarget.png
[02debugTarget]: /setup/linux-eclipse/02debugTarget.png
[03debugTarget]: /setup/linux-eclipse/03debugTarget.png
[04debugTarget]: /setup/linux-eclipse/04debugTarget.png
[05debugTarget]: /setup/linux-eclipse/05debugTarget.png
[06debugTarget]: /setup/linux-eclipse/06debugTarget.png
[01addCode]: /setup/linux-eclipse/01addCode.png
[02addCode]: /setup/linux-eclipse/02addCode.png
[03addCode]: /setup/linux-eclipse/03addCode.png
[01debugTestProject]: /setup/linux-eclipse/01debugTestProject.png


