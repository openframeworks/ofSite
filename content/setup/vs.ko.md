## -*- coding: utf-8 -*-
.. title: visual studio

visual studio 셋업 가이드
=========================
Visual Studio 2012 또는 Visual Studio 2012 Express for Windows Desktop에서 오픈프레임웍스를 사용하는 분들을 위한 셋업 가이드입니다.

<!-- Download -->
다운로드
--------
> [Visual Studio Community 2015 다운받기][0]

인스톨
-------
인스톨러를 실행하고, 기본설정으로 설치합니다.

![](/setup/vs/vs_install.png)

비디오 코덱
-------
오픈프레임웍스 0.9.0 배포판부터는 QuickTime이 아니라, DirectShow를 사용합니다. QuickTime 비디오 파일이나 mp4파일을 사용할려면 컴퓨터에 비디오 코덱을 설치해주어야 합니다. 저희는 [K-Lite Codec Pack][1]를 추천해드립니다. 무료로 다운받으실 수 있으며, 다양한 비디오 포맷을 지원합니다.

하지만 대부분의 코덱사이트들은 애드웨어가 포함되있습니다. 링크 [https://ninite.com/klitecodecs/][2]의 코덱팩은 오픈프레임웍스에서 테스트되었으며, 또한 다운받기 전에 자동으로 애드웨어를 삭제해줍니다.

Visual Studio를 위한 오픈프레임웍스 플러그인
---------------------------------------------------
비주얼 스튜디오에서, Tools > Extensions and Update로 이동한다음, online을 선택하고 openFrameworks를 검색해 플러그인을 설치합니다.

플러그인을 설치하면 File > New > Project 를 선택하여 오픈프레임웍스 프로젝트를 생성할 수 있으며, 추후 어떤 프로젝트에서도 애드온을 추가하거나 제거할 수 있습니다.

더 많은 정보들은 [Visual Studio Gallery page](https://visualstudiogallery.msdn.microsoft.com/77678909-81b8-494b-b75c-d97dd7a3eaa6)에서 찾거나 아래의 비디오에서 찾으실 수 있습니다.

<iframe src="https://player.vimeo.com/video/143111085" width="1000" height="562" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

[0]: https://go.microsoft.com/fwlink/?LinkId=532606&clcid=0x409
[1]: https://en.wikipedia.org/wiki/K-Lite_Codec_Pack
[2]: https://ninite.com/klitecodecs/
