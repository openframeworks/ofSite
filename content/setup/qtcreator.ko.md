## -*- coding: utf-8 -*-
.. title: Qt creator

Qt Creator
==========

오픈프레임웍스 0.10.0는 Qt Creatoe 4.6.0과 4.6.1에서 테스트되었습니다. 4.6.1를 사용하시는것을 추천드립니다. 이후 버전에 대해서는 따라야할 과정이 다르거나, 기대하는대로 동작하지 않을 수 있습니다.

Qt Creator는 [http://download.qt.io/official_releases/qtcreator/](http://download.qt.io/official_releases/qtcreator/)에서 다운받으실 수 있습니다.

리눅스
-----

리눅스에서 오픈프레임웍스를 사용하기 전에, 몇가지 설치 스크립트를 실행해야합니다. 설치 과정을 거치지 않았다면, [이곳](../linux-install/)의 가이드를 따라 주시기 바랍니다.

리눅스에서 여러분이 사용하고 있는 배포판의 공식 저장소에서 Qt Creator를 설치할 수도 있지만, 대신에 자체 웹페이지에서 설치하는것을 추천해 드립니다. 배포판에 딸려오는 Qt Creator는 (적어도 우분투에서는) 뒤떨어진 버전일 수 있으며, Qt 웹페이지에서 다운받아 설치하면, 코드를 타입하는 동안 코드를 분석하고 에러를 마킹하는 기능인 qtcreator의 정적 분석기보다 훨씬 정확한 clang플러그인의 지원을 받을 수 있기 때문입니다. 

설치를 마치면 오픈프레임웍스를 다운받을때 함께 받아지는, 오픈프레임웍스를 위한 Qt Creator 플러그인을 설치할 수 있습니다. `scripts/qtcreator`폴더 에서 `install_template.sh` 스크립트를 실행하면 끝입니다.

윈도우즈
----

우선, msys2를 설치해야 합니다. [msys2를 위한 셋업 가이드](../msys2)를 따라 주십시오.

셋업을 마치면, Qt Create를 사용하기전에 컴퓨터를 재시동하시길 추천드립니다.

msys2에 의존하고 있는 빌드 시스템의 몇몇 부분들은 기본적으로: c:\msys64에 설치되며, 다른곳에 설치할 경우 프로젝트 파일의 수정이 필요할 수 있습니다.

QtCreator를 msys2와 함께 사용하려면, Tools > Options > Build and Run > Compilers 로 사셔서, MinGW 컴파일러가 설치된 msys2로 설정되어있는지를 확인하시기 바랍니다. 만약 비어있다면, install_dependencies 스크립트에 의해 PATH 환경변수가 제대로 설정되지 않았다는 뜻입니다. msys2 인스톨 가이드로 돌아가서 단계에 따라 주시기 바랍니다. 제대로 설정되어있다면, compiler에 c:\msys64\mingw32\bin를 추가해주시기 바랍니다.

이제 Tools > Options > Build and Run으로 가신 뒤 Kits탭에서 c/c++ 컴파일러와 debugger가 설치된 msys2를 사용하도록 Desktop Kit을 설정하시기 바랍니다.

Kit이 제대로 설정되면, 다운받은 OF에 이미 포함된 오픈프레임웍스용 Qt Creator 플러그인을 설치할 수 있습니다. 아래를 참고해주세요 :

- msys2 console 에서 다운받은 오픈프레임웍스 폴더내의 scripts/qtcreator 로 이동한다음, `./install_templates.sh`를 실행합니다.

또는

- 다운받은 오픈프레임웍스 폴더에서 `scripts/qtcreator/templates`의 템플릿들을 `c:\Qt\qtcreator-4.6.1\share\qtcreator\templates`로 복사합니다.


맥 OSX
----

Qtcreator를 설치하고 난 후 Qt Creator > Preferences > Build and Run으로 이동하신후 Desktop Kit에서 gcc 대신 clang을 사용하도록 설정하십시오. 만약 변경할 수 없다면, manager를 누르거나 Compilers 탭으로 가서 clang이 사용가능한지 확인해보십시오. 아마도 GCC 대신 clang을 활성화 할수 있도록 커스텀 설정을 추가해야 할 수도 있습니다.

설치를 마치면 다운로드받은 오픈프레임웍스에 이미 포함된, 오픈프레임웍스용 Qt Creator 플러그인을 설치할 수 있습니다. 터미널에서 scripts/qtcreator 폴더의 install_template.sh스크립트를 실행하면 끝입니다.

모든 플랫폼
-------------

추가적으로, 코드를 작성하는 동안 보다 에러를 정확하게 찾아주는 Clang 정적 분석기를 활성화 할 수 있지만, 가끔은 느리기도 합니다. 이것을 활성화 하려면 qt의 페이지에서는 아래와 같이 안내합니다:

Configuring Clang Code Model Plugin

  - Help > About Plugins > C++ > ClangCodeModel 을 선택하고 플러그인을 활성화 합니다.
  - 플러그인이 사용될 수 있도록 Qt Creator를 재시작합니다.
  
오픈프레임웍스 플러그인은 새로운 프로젝트를 생성하거나, 공식적인 애드온을 마법사로 추가할수 있게 해줍니다. 한번 프로젝트가 생성 이후에는, .qbs 프로젝트 파일에서, 추가할 애드온의 이름을 of.addon 배열에 추가하는것만으로 애드온을 쉽게 추가할 수 있습니다.

마법사에서 두번째 프로젝트 타입을 이용하면, 이미 존재하고있는 코드로부터 프로젝트를 생성할 수 있습니다.

프로젝트가 생성되면 애드온이 호환가능한 한 지원되는 플랫폼 어디서든 올바르게 동작할 것이며, 더이상 커스텀 C++ 플래그 등에 대해 걱정할 필요가 없습니다.

<iframe src="https://player.vimeo.com/video/142272907" width="1000" height="563" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>