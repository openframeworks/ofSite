## -*- coding: utf-8 -*-
.. title: visual studio

visual studio 셋업 가이드
=========================
Windows 운영체제에서 Visual Studio Comminuty 2015와 함께 오픈프레임웍스를 사용하기 위한 셋업 가이드입니다.

<!-- Download -->
다운로드
--------
> [Visual Studio Community 2015 다운받기][0]

설치
-------
인스톨러를 실행하고, 기본설정으로 설치합니다.

![](vs_install.png)

비디오 코덱
-------

오픈프레임웍스 0.9.0 배포판부터, 비디오플레이어는 QuickTime이 아닌 DirectShow를 사용합니다. QuickTime 비디오파일 및 MP4와 같은 파일을 위해, 여러분의 컴퓨터에 코덱을 설치해줄 필요가 있습니다. 저희는 무료로 사용이 가능하고, 다양한 비디오파일을 지원하는 [K-Lite Codec Pack - Version 12.1.0 Full April 18th 2016][1] 을 추천드립니다. 주의: 더 높은 버전의 K-Lite는 OF에서 필요로 하는 코덱을 포함하지 않을 수 있습니다.

비주얼 스튜디오용 오픈프레임웍스 플러그인
----------------------------------

비주얼 스튜디오에서 오픈프레임웍스를 사용하기 전에, 반드시 `Common Tools for Visual C++ 2017`가 설치되어 있어야 합니다. 그렇지 않을 경우 에러메시지를 보게 될 것입니다. 설치를 하려면 메뉴에서 `File > New > Project` 를 선택하고, 템플릿 섹션에서  Visual C++를 선택합니다. 이때 도구를 선택할 옵션이 주어질 것입니다. 만약 옵션이 주어지지 않는다면, 'OK'를 누르고, 단계에 따라 주시기 바랍니다.

비주얼 스튜디오에서, 메뉴 Tools > Extensions and Updates 를 선택한 뒤, online을 선택하고, openFrameworks를 검색하여 플러그인을 설치합니다.

이제부터 File > New > Project... 를 통해 새 오픈프레임웍스 프로젝트를 생성할 수 있으며, 나중에도 contextual 메뉴를 통해 애드온을 삭제하거나 추가할 수 있습니다.

[Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6)에서 보다 자세한 정보와 가이드 비디오를 보실 수 있습니다.


<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&rel=15
[1]: http://filehippo.com/download_klite_codec_pack/67445/
