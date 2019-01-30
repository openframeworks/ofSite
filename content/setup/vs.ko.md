## -*- coding: utf-8 -*-
.. title: visual studio

visual studio 셋업 가이드
=========================
Windows 운영체제에서 Visual Studio Comminuty 2015와 함께 오픈프레임웍스를 사용하기 위한 셋업 가이드입니다.

<!-- Download -->
다운로드
--------
> [Visual Studio Community 2017 다운받기][0]

설치
-------
인스톨러를 실행하고, 기본설정으로 설치합니다.

![](vs_install.png)

비디오 코덱
-------

오픈프레임웍스 0.9.0 이후의 배포판부터는, 비디오플레이어는 더이상 QuickTime이 아닌 DirectShow를 사용합니다. QuickTime 비디오파일 및 MP4와 같은 비디 파일을 사용하기 위해서는, 여러분의 컴퓨터에 코덱을 설치해줄 필요가 있습니다. 저희는 무료로 사용이 가능하고, 다양한 비디오파일을 지원하는 [K-Lite Codec Pack - Version 12.1.0 Full April 18th 2016][1] 을 추천드립니다. 주의: 더 높은 버전의 K-Lite는 OF에서 필요로 하는 코덱을 포함하지 않을 수 있습니다.

자동으로 미리컴파일되는 헤더파일 비활성화하기
-------
비주얼스튜디오는 비주얼스튜디오 2015 기준으로 대략 ~10kB정도의 용량을 차지하는 ".vs" 라는 숨겨진 폴더를 생성합니다; 하지만, 이 폴더의 용량이 비주얼스튜디오 2017에서는 기본적으로 (코드 자동완성을 위한) 인텔리센스의 최적화과정을 이유로 한 프로젝트당 수백메가바이트까지 늘어났습니다. 이는 랩탑이나 타블렛과 같은 작은 스토리지를 사용하는 장치들에게는 이상적이지 못합니다. 인텔리센스의 속도저하를 감수하면서 이 용량을 줄일 수 있습니다. 메뉴의 `Tools > Option`에서 `Text Editor > C/C++ > Adcanced` 항목으로 가보면, 자동 프리컴파일 헤더 옵션을 끌 수 있습니다. (`Disable Automatic Precompiled Header -> true`)

비주얼 스튜디오용 오픈프레임웍스 플러그인
----------------------------------


비주얼 스튜디오에서 오픈프레임웍스를 사용하기 전에, 반드시 `Common Tools for Visual C++ 2017`가 설치되어 있어야 합니다. 그렇지 않을 경우 에러메시지를 보게 될 것입니다. 설치를 하기 위해서는 메뉴에서 `File > New > Project` 를 선택하고, 템플릿 섹션에서 `Visual C++`를 선택합니다. 이때 도구를 선택할 옵션이 주어질 것입니다. 만약 옵션이 주어지지 않는다면, 선택한 뒤, 'OK'를 누르고, 단계에 따라 주시기 바랍니다.

비주얼 스튜디오에서, 메뉴의 `Tools > Extensions and Updates` 를 선택한 뒤, `online`을 선택하고, `openFrameworks`를 검색하여 플러그인을 설치합니다.

이제부터 `File > New > Project...`를 통해 새 오픈프레임웍스 프로젝트를 생성할 수 있으며, 나중에도 contextual 메뉴를 통해 애드온을 삭제하거나 추가할 수 있습니다.

[Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6)에서 보다 자세한 정보와 가이드 비디오를 보실 수 있습니다.


<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&rel=15
[1]: http://filehippo.com/download_klite_codec_pack/67445/