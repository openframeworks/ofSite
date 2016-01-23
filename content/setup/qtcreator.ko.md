## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

Qt Creator
==========

<!-- Since version 0.9.0 we have support for Qt Creator in Linux, Windows and OSX. This guide is based on Qt Creator 3.5.1 and a different version might have different steps to follow or not work as expected. -->
0.9.0버전 부터 리눅스, 윈도우즈, 맥 OSX에서 Qt Creator를 지원합니다. 이 가이드는 Qt Creator 3.5.1을 기준으로 하고 있으므로, 다른 버전의 경우 따라야할 단계가 다르거나 기대하는대로 동작하지 않을 수 있습니다.

<!-- You can download Qt Creator from: [http://www.qt.io/download-open-source/#section-6](http://www.qt.io/download-open-source/#section-6) -->
Qt Creator는 [http://www.qt.io/download-open-source/#section-6](http://www.qt.io/download-open-source/#section-6)에서 다운받으실 수 있습니다.

리눅스
-----

<!-- Before using OF in linux you need to run some install scripts, follow the instructions [here](../linux-install/) if you haven't done so yet. -->
리눅스에서 오픈프레임웍스를 사용하기 전에, 몇가지 설치 스크립트를 실행해야합니다. 설치 과정을 거치지 않았다면, [이곳](../linux-install/)의 가이드를 따라 주시기 바랍니다.

<!-- In linux even if Qt Creator is available in the official repositories for your distributions, it's recommended to install qtcreator from their webpage instead. The one that comes with the distribution (at least in ubuntu) might be outdated and installing the one from the webpage you'll get support for the clang plugin which analizes the code while you type marking any errors more accurately than the default qtcreator static analizer.  -->
리눅스에서 여러분의 배포판을 위한 공식 저장소에서 Qt Creator를 다운받을 수 있지만, 대신에 자체 웹페이지에서 설치하는것을 추천해 드립니다. 배포판에 딸려오는 Qt Creator는 (적어도 우분투에서는) 뒤떨어진 버전일 수 있으며, 웹페이지에서 다운받아 설치할경우, 코드를 타입하는 동안 코드를 분석하고 에러를 마킹하는 기능이 qtcreator의 정적 분석기보다 훨씬 정확한 clang플러그인의 지원을 받을 수 있기 때문입니다. 

<!-- Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, you can run the install_template.sh script in scripts/qtcreator and it'll install everything for you. -->
설치를 마치면 오픈프레임웍스를 다운받을때 함께 받아지는, 오픈프레임웍스를 위한 Qt Creator 플러그인을 설치할 수 있습니다. scripts/qtcreator폴더 에서 install_template.sh스크립트를 실행하면 끝입니다.

윈도우즈
----

<!-- First of all you'll need to install msys2. Follow the instructions in the [setup guide for msys2](../msys2) -->
우선, msys2를 설치해야 합니다. [msys2를 위한 셋업 가이드](../msys2)를 따라 주십시오.

<!-- Some parts of the build system rely on msys2 being installed in the default folder: c:\msys64 and installing it somewhere else might need modifications to the project files. -->
msys2에 의존하고 있는 빌드 시스템의 몇몇 부분들은 기본적으로: c:\msys64에 설치되며, 다른곳에 설치할 경우 프로젝트 파일의 수정이 필요할 수 있습니다.

<!-- To use QtCreator with msys2 go to Qt Creator > Preferences > Build and Run > Compilers and if it's not there add a compiler that points to c:\msys64\mingw32\bin then in the Kits tab configure the Desktop Kit to use gcc from msys2. -->
msys2와 함께 QtCreator를 사용하기 위해서는, Qt Creator > Preferences > Build and Run > Compiler로 가셔서 비어있는 경우 compiler에 c:\msys64\mingw32\bin을 추가 하십시오. Kits 탭에서 Desktop Kit부분에 msys2의 gcc를 사용하도록 설정해 주십시오.

<!-- Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download by copying the templates in scripts/qtcreator/templates to c:\Qt\qtcreator-3.5.1\share\qtcreator\templates. -->
설치를 마치면 오픈프레임웍스를 다운받을때 함께 받아지는, 오픈프레임웍스를 위한 Qt Creator 플러그인을 설치할 수 있습니다. scripts/qtcreator/templates폴더 내 스크립트들을 c:\Qt\qtcreator-3.5\share\qtcreator\templates폴더로 복사해주시면 됩니다.

맥 OSX
----

<!-- After installing QtCreator go to Qt Creator > Preferences > Build and Run and configure the Desktop Kit to use clang instead of gcc. If you can't change it from there, press manage or go to the Compilers tab and check that clang is available. You might need to add a custom config to be able to enable clang instead of GCC. -->
Qtcreator를 설치하고 난 후 Qt Creator > Preferences > Build and Run으로 이동하신후 Desktop Kit에서 gcc 대신 clang을 사용하도록 설정하십시오. 만약 변경할 수 없다면, manager를 누르거나 Compilers 탭으로 가서 clang이 사용가능한지 확인해보십시오. 아마도 GCC 대신 clang을 활성화 할수 있도록 커스텀 설정을 추가해야 할 수도 있습니다.

<!-- Once installed you can install the Qt Creator plugin for openFrameworks that comes with the OF download, you can run the install_template.sh script in scripts/qtcreator and it'll install everything for you. -->
설치를 마치면 오픈프레임웍스를 다운받을때 함께 받아지는, 오픈프레임웍스를 위한 Qt Creator 플러그인을 설치할 수 있습니다. scripts/qtcreator 폴더에서 install_template.sh스크립트를 실행하면 끝입니다.

모든 플랫폼
-------------

<!-- Optionally you can enabled the Clang static analizer which is more accurate finding errors in the code while you type but it's also sometimes slower. To enable it, from qt's page: -->
추가적으로, 코드를 작성하는 동안 보다 에러를 정확하게 찾아주는 Clang 정적 분석기를 활성화 할 수 있지만, 가끔은 느리기도 합니다. 이것을 활성화 하려면 qt의 페이지에서는 아래와 같이 안내합니다:

Configuring Clang Code Model Plugin

  - Help > About Plugins > C++ > ClangCodeModel 을 선택하고 플러그인을 활성화 한다.
  - 플러그인이 사용될 수 있도록 Qt Creator를 재시작합니다.
  - Tools > Options > C++ > Code Model으로 가서, 파일별로 사용될 수 있게 파서를 선택합니다. (Clang에 전부 선택하십시오)

<!-- The openFrameworks plugin allows to create new projects and add official addons through a wizard, once the project is created you can edit the .qbs project file to easily add any new addons just by adding their name in the of.addons array. -->
오픈프레임웍스 플러그인은 새로운 프로젝트를 생성하거나, 공식적인 애드온을 마법사로 추가할수 있게 해줍니다. 한번 프로젝트가 생성되면, .qbs 프로젝트 파일을 수정해해, 추가할 애드온의 이름을 of.addon 배열에 추가하는것만으로 애드온을 쉽게 추가할 수 있습니다.

<!-- There's a second project type in the wizard that allows to create a project from existing code. -->
마법사에서 두번째 프로젝트 타입을 이용하면, 이미 존재하고있는 코드로부터 프로젝트를 생성할 수 있습니다.

<!-- A project created in any platform will work right away in any of the other supported platforms -->
프로젝트가 생성되면 지원되는 플랫폼 어디서든 올바르게 동작할것입니다.

<iframe src="https://player.vimeo.com/video/142272907" width="1000" height="563" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
