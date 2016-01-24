## -*- coding: utf-8 -*-
.. title: about

### 오픈프레임웍스는 실험적인 작업을 위해 단순하고 직관적인 프레임워크를 제공하여 창의적인 프로세스를 돕는  <a href="license.html">[오픈소스](license/)[C++](https://en.wikipedia.org/wiki/C%2B%2B) 툴킷입니다. 
</br>

<!--h1>about</h1-->
<div id="myslides">
<img src="/about/0.jpg" />
<img src="/about/1.jpg" />
<img src="/about/2.jpg" />
<img src="/about/3.jpg" />
<img src="/about/4.jpg" />
<img src="/about/5.jpg" />
<img src="/about/6.jpg" />
<img src="/about/7.jpg" />
<img src="/about/8.jpg" />
</div>
<br/>

오픈프레임웍스는 범용적인 "접착제"의 역할을 하도록 디자인되었으며, 아래에 나열된 공용 라이브러리들을 포함하고 있습니다 : 

* 그래픽 : [OpenGL](http://www.opengl.org/), [GLEW](http://glew.sourceforge.net/), [GLUT](http://www.opengl.org/resources/libraries/glut/), [libtess2](https://code.google.com/p/libtess2/) and [cairo](http://cairographics.org/)
* 오디오 입력, 출력 및 분석 : [rtAudio](http://www.music.mcgill.ca/~gary/rtaudio/), [PortAudio](http://www.portaudio.com/), [OpenAL](http://http://connect.creativelabs.com/openal) 그리고 [Kiss FFT](http://kissfft.sourceforge.net/) or [FMOD](http://www.fmod.org/)
* 폰트 : [FreeType](http://freetype.sourceforge.net/index2.html)
* 이미지 불러오기 및 저장 : [FreeImage](http://freeimage.sourceforge.net/) 
* 비디오 재생 및 웹캠 : [Quicktime](http://developer.apple.com/quicktime/), [GStreamer](http://gstreamer.freedesktop.org/) and [videoInput](https://github.com/ofTheo/videoInput)
* 다양한 유틸리티 : [Poco](http://pocoproject.org/)
* 컴퓨터 비전 : [OpenCV](http://opencv.org/)
* 3D 모델 불러오기 : [Assimp](http://assimp.sourceforge.net/) 

openFrameworks는 강력한 크로스플랫폼을 지원합니다. 현재만 하더라도 5개의 운영체제와(윈도우, 맥OSX, 리눅스, iOS, 안드로이드) 네 종류의 IDE(XCode, Code::Blocks, Visual Studio, Eclipse)를 지원합니다. API는 최소한으로, 그리고 쉽게 이해되도록 디자인 되었습니다.

openFrameworks는 [MIT 라이센스](license.html)에 따라 배포됩니다. 이 라이센스의 규정에 따라 openFrameworks는 누구나 사용이 가능하며 어떠한 목적으로도 사용이 가능합니다.(상업/비 상업적 용도, 공개 또는 개인의 용도, 오픈소스/비공개소스 등) 많은 openFrameworks 사용자들이 커뮤니티에 그들의 작업을 공유하지만, 그것이 꼭 의무는 아닙니다.

간단히 요약하자면, openFrameworks는 코드를 사용하여 쉽게 무언가를 제작할 수 있는 도구라고 할 수 있습니다. 저희에게 상당히 유용한 이 툴이 여러분들께도 도움이 되었으면 좋겠습니다.

----------------
디자인 철학
----------------

openFrameworks는 추구하는 몇가지의 목표가 있습니다. 그것은 협업적이어야하고, 사용가능하면서 단순하고, 일관성과 직관성을 가져야 하며, 크로스플랫폼을 지원하고, 강력하면서, 확장가능해야합니다.

**협업가능**

openFrameworks의 개발은 [포럼](http://forum.openframeworks.cc/)과 [애드온](http://ofxaddons.com/),
[프로젝트](../gallery)에 참여하는 [수많은 분들](https://github.com/openframeworks/openFrameworks/contributors)의 노력하에 진행되고 있습니다. 우리는 참여하는 분들로 하여금 openFrameworks가 자신의 것이 되도록 하면서, 이러한 생태계에 공헌할 수 있도록 권장하고 있습니다.

**단순함**

openFrameworks는 사용성과 단순함의 균형을 유지하려고 노력합니다. openFrameworks의 초기 버전들은 C++과 openGL 을 가르치기 위한 도구로 사용되었습니다만, 시간이 지남에 따라 코어가 고급 기능들의 장점을 가지게 됨으로써, 예제소스들이 가장 효율적인 방법이 되었습니다. 그래서 우리는 openFrameworks와 함께 제공될 많은 예제소스들을 제작하였습니다. 이것들은 우리의 목적인 단순함을 추구할 뿐만 아니라, 실험적인 것들을 위한 코드 해킹의 시작점이 될 것입니다. 

우리는 openFramerowk가 가능한 한 단순해지길 원합니다. 특히나 다른 프로그래밍 언어와 환경들에서 온 사람들을 위해서요. 아마도 같은 C++언어를 가지고도 전혀 다른 코드를 작성할 수 있을만큼 C++는 "거대한" 언어입니다. 서점에 가보시면, 아마도 수백권의 C++ 책들을 찾아볼 수 있을 것입니다. 우리는 당신이 한두권의 서적들을 살지언정, 전문가가 될 필요가 없게 끔 단순하고, 직관적인 라이브러리들을 작성하기를 원합니다. 특히나 우리는 Processin과 같은 목적을 가지고 있습니다. 많은 함수들의 이름은 비슷하고, 그리하야 다른 프레임워크에서 스위칭이 가능케 하는것입니다. 

**일관성과 직관성**

openFrameworks는 일관적이고 직관적입니다. 최소한의 인지 철학위에서 동작해야만 합니다. 즉 openFrameworks의 한 부분에서 배울수 있는 것은 다른 부분에도 쉽게 적용이 가능합니다. 초보자에게 있어는 기본적인 프로그래밍 패턴에 대해 배울 수 있을것이며, 고급 사용자에게 있어서는 다른 언어와 툴킷에서의 경험을 openFrameworks에 적용시킬 수 있을 것입니다.

학생은 첫 번째 모토입니다. openFrameworks를 이끄는 많은 생각들이 있습니다. what would I would have liked in a tool 5 or 10 years ago? 프로그래밍 코드작성의 패턴은 단순해야 하고, 그러기 위해서 가능한 한 타이핑하기 쉬워야 합니다. 가령 비디오플레이어의 함수명이 "play"와 "stop"와 같이 자기 자신을 설명하는 것처럼요. 또한 변수명들도 직관적이어야 합니다. 코드작성이 가능한한 수월하도록 하기 위해 이러한 직관성에 대해 많은 의논이 있었습니다. 여러분은 자동완성의 도움을 받기 보다는 직접 코딩을 타이핑하면서 익혀야 합니다.

**크로스 플랫폼**

openFrameworks는 크로스플랫폼 저작도구입니다. openFrameworks는 가능한한 다양한 개발환경과 운영체제를 지원합니다. openFrameworks를 다운로드할때, 원하는 플랫폼(운영체제)와 개발환경을 선택할 수 있고, 각각의 플랫폼과 개발환경에 맞는 프로젝트파일들과 예제코드들이 담겨있습니다. 코드의 이식이 어려운 부분들은 코어에서 제외하는 대신, addon의 방식을 사용하고 있습니다.

openFrameworks는 다양한 플랫폼에서 동작하도록 디자인되었습니다. 맥킨토시 OS X, 윈도우즈, 리눅스, iOS, 안드로이드, 임베디드 ARM기반 리눅스 시스템뿐만 아니라, BlackBerry playbook과 같은 실험적인 플랫폼들입니다. openFrameworks 개발자들은 Android의 Java나 iOS에서의 오브젝티브-C와 같은 언어들과 연결될수 있는 방법들을 구상해왔습니다.

크로스플랫폼 라이브러리의 즐거움은 플랫폼에서 플랫폼으로 아이디어를 전환하는것이 쉽다는데 있습니다. 노트북에서 작성하면 휴대폰에서 바로 돌아갑니다. 이는 플랫폼간에서 생기는 문제점에 대해 고민에 빠지는것 보다 아이디어가 우선시되는 것을 가능케 합니다.

**강력함**

openFrameworks는 강력합니다: OpenCV와 같은 고급 라이브러리를 활용할 수 있게 하고, 그래픽카드와 같은 하드웨어를 효율적으로 사용합니다. 또한 카메라및 다양한 주변장치들도 연결할 수 있습니다.

우리가 C++를 선택한것은 C++언어가 충분히 로우 레벨의 언어이면서도, 여전히 고급레벨의 프로그래밍이 가능하기 떄문입니다. 이는 C++언어가 로우레벨의 프로그래밍이 가능한 C언어를 기반으로 확장된 언어이므로 가능한 것입니다. 우리는 openFrameworks에서 단순하고, 명료하고, 지금까지 없어왔던 강력한 방법으로 코딩할 수 있도록 노력합니다.

openFrameworks는 본질적으로 openGL, Cairo, FreeType, FreeImage, OpenCV와 같은 다른 라이브러리들의 집합체(wrap)입니다. 따라서 openFrameworks는 사용자의 코드(실제로 사용자가 작성한 코드)와 이러한 라이브러리를 연결하는 레이러라고 생각할 수 있습니다. 이러한 라이브러리들은 각각 다른 스타일, 어법, 접근법등을 가지고 있습니다. 그리고 우리의 역할은 이러한 것들을 지속적이고 직관적으로 사용할 수 있도록 wrapping 하는 것입니다.

이것들을 wrap하는것은 또한, 그것들을 더욱 일관적이고 직관적이도록 만드는 방법입니다.

**확장가능함**

openFrameworks는 확장가능합니다. 만약 openFrameworks에 뭔가 빠져있다 생각이 든다면, addon을 만들어 아주 쉽게 확장할 수 있습니다. 오픈프레임웍스의 핵심 addon들은 직접 문제를 해결하는 방법을 대체할 여러 라이브러리들의 집합입니다. 그리하여 openFrameworks가 라이브러리를 포함한다는것은, 이러한 라이브러리들을 개조할수 있도록 남겨두었다는 의미이기도 합니다.

openFrameworks는 건축할때의 발판재료나 건물이 완성되기까지 지탱해주는 비계의 개념입니다. 필요한 것들을 모두 집어넣어 두기 보다는, "addon" 시스템을 사용하여 추가적인 코드, 라이브러리, 방향성등을 사용자와 짜여지는 프로젝트간에 공유하여 "core"를 최대한 가볍게 하도록 하고 있습니다.

openFrameworks 애드온은 간단한 조각 코드가 될 수도 있고, OpenNI, Tesseract, Box2d와 같이 엄청나게 복잡한 라이브러리들이 될 수도 있습니다. Addon의 이름은 일반적으로 "ofx"라는 단어로 시작하는데, 이는 "core"라이브러리인지 아닌지를 쉽게 구별하기 위해서입니다. 추가적으로 우리는 "core addon"에 모든사람들에게 꼭 필요하지 않지만, 대체로 많은사람들이 아마도 쓰기 원할것 같은(가령 ofxOpenCv와 같이) addon들을 포함시켜두었습니다.

우리는 [http://ofxaddons.com](http://ofxaddons.com/) 웹사이트를 통해, 개발된 OF addon들을 관리하고 지원하려고 노력하고 있습니다. 이곳에 보이는 addon은 GitHub에서 "ofx"의 이름을 가진 저장소들을 자동으로 검색하여 수집된 것들입니다. 지금 당장만 해도 1,500개 이상의 addon들이 있습니다.

**남들과 함게 하세요 - Do it with others (DIWO)**

openFrameworks의 배후에는 "남들과 함께하라(do it with others:DIWO)"라는 운영철학이 있습니다. 우리는 instructable이나 make와 같이 크게 성장해온 사이트에서 장려되고 추진되는 내가 스스로 한다(do it yourself:DIY)" 문화를 사랑합니다. 하지만 또한 우리는 "making socially" ("with others")에 대해서도 열광합니다. 우리는 DIWO철학을 워크샵이나, 개발자 컨퍼런스, 해커톤/연구실, 소규모 모임, 개인적 만남, 메일링 리스트를 통한 온라인 모임, 포럼 등등을 통해 시도해봤습니다. 우리는 소속감이 있습니다. 만약 당신이 그룹에 가입하면, 소속감을 가져야 합니다. 우리가 당신에게 스트레스를 주고 싶은 가장 중요한 것은, 당신은 혼자가 아니고, 우리에겐 코드의 영역에서  배우고, 가르치고, 해킹하고, 만들고 탐구하고, 창조하는 훌륭한 사람들의 그룹들이 있다는 것입니다.

아직도 우리 그룹의 일원이 아니라면, 환영합니다!

----------------
faq
----------------

**기존의 많은 라이브러리들이 존재하는데, 왜 또 다른 c++ 라이브러리를 제작하였나요?**

이미 손쉬운 소프트웨어 제작을 위한 많은 라이브러리들이 존재합니다. OpenGL을 예를들자면, ogre, irrlicht, JUCE, DSL, wxWindows들이 있습니다.

본래, openFrameworks는 "베어본"의 대체를 제공하기 위함이었습니다. 우리는 C++을 통해 오디오-비주얼 작업을 함에 있어서 최소한의 필요 라이브러리를 작성하길 원했습니다.

시간이 지남에 따라, openFrameworks는 보다 강력한 호환가능 제작 도구로 진화하였습니다. 현재에 이르러, 가장 큰 차이는 바로 사용자입니다. 우리의 잠재적 사용자들은 컴퓨터를 통한 창조적인 행위와 예술적 표현을 원하며, 미디어의 데이터에 로우-레벨로 접근하여 그것을 조작하고, 분석하고, 연구하고자 하는 사람들입니다.

**어쨰서 이러한 라이브러리들을 포함하기로 결정하였나요?**

우리의 경험상 가장 깔끔하고 단순한 API들을 제공하하는 라이브러리들을 선택하기로 하였습니다. 또한 가장 관대한 라이센스와, 통합이 쉬운 API들이기도 합니다.

예를들어 우리는 윈도우기반에서 동작하도록 하는 라이브러리로써 GLUT을 선택하였습니다. 일단, 완벽하게 유니버셜하고 당연하게도 관대한 라이센스를 갖고 있으며, 호환불가능 컴파일러나 플랫폼을 찾기가 힘들었기 때문입니다. 물론 우리는 다른 윈도우 라이브러리들(glfw라든가 wxWindows등) 또한 오픈프레임워크에 적용시켜보았습니다만, 최종적으로 후보중에 가장 쉬운 방법을 택하기로 하였습니다.

**최신버전의 openFrameworks는 어디에서 구할 수 있나요?**

최종 릴리즈는 [downloads](../downloads) 페이지에서 구할 수 있고, [github](https://github.com/openframeworks/openFrameworks/)페이지에서도 다운받을 수 있습니다. 가장 최신의 버전은 [develop branch](https://github.com/openframeworks/openFrameworks/tree/develop)에 위치해 있습니다. Github에서 OF 빌드에 관한 정보는 [readme](https://github.com/openframeworks/openFrameworks/blob/master/readme.txt)를 참고해 주십시오. Github을 통한 공헌에 관한 정보를 원하시면, [this document](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)를 참고해주십시오.

**제가 도울 수 있는 방법은 없나요?**

addon을 제작하거나, 문서를 작성하는것을 돕는 방법도 있습니다. 하지만 가장 중요한것은 튜토리얼을 만드는것입니다. 만약 당신이 흥미로운 뭔가를 만들때 OF를 사용한다면, 많은 소스와 정보, 그리고 아이이어를 가능한 한 많이 작성해 주십시오. 만약 당신이 초보자라면, 무엇이 어려웠었는지를 메모해놓았다가 저희 포럼에 질문을 올리고, 다른사람들이 어떻게 생각하고 해결하는지 확인하십시오.

**openFrameworks는 왜 바이너리가 아니라 소스의 형태로 배포되나요?**

몇가지 이유가 있습니다. &mdash; 첫째로, 실용적입니다. openFrameworks는 여전히 개발중이기 떄문에, 우리가 추구하는 방향으로 변화해 나갈 것입니다. 코드를 보여주는 방식을 유지함으로써, 이러한 우리의 의도는 훨씬 손쉬워 질것이며, 또한 발생하는 문제점에 관하여 보다 나은 피드백을 받을 수 있습니다. 두번때로, 교육적입니다. 이러한 방법은 C++ 라이브러리 논쟁에 관해 배울 수 있는 좋은 시작점이 될 것입니다. 세번째로, 이것은 openFrameworks를 변화하고 싶거나, 각자의 입맛대로 라이브러리를 수정하고 재구성하는 사람들에게 오픈되어 있기 때문입니다.

**C++언어는 어떻게 배우죠?**

사실 우리는 openFrameworks가 C++을 가르치는 도구가 될 필요는 없지만, C++을 가지고 취미삼아 뭔가를 해보는데 관심이 있는 사람들에게 '첫 발걸음'이 될지도 모르겠다고 생각했습니다. 우리는 [forum](http://forum.openframeworks.cc/)에 커뮤니티가 활성되길 원합니다. 따라서 이곳에 몇가지 질문을 올리시길 권장합니다. 또한 아래 페이지들도 추천합니다:

* [C and C++ in 5 days][6] Philip Machanick 제공, 아마도 우리가 봐왔던 C++ 공부하기에 관하여 최고중 하나입니다. (더도 말고 5일이면 된대요!).
* [프로세싱 유저를 위한 openFrameworks][7] Zach Gage 제공, 프로세싱에서 넘어오기
* [C언어 사용자를 위한 C++ 튜토리얼][12] C에서 넘어오기
* [Programming Interactivity][8] Joshua Noble 제공, 프로세싱과 아두이노 뿐만 아니라 openFrameworks 0.62버전을 포함합니다.
* [StackOverflow][11]는 일반적인 혹은 난해한 질문을 할 수 있는 훌륭한 커뮤니티입니다.
* [C++ FAQ](http://www.parashift.com/c++-faq-lite/index.html) Marshall Cline 제공, 그리고 [C++ FQA Lite](http://yosefk.com/c++fqa/index.html) Yossi Kreinin 제공.
* [cppreference.com/wiki/][15] 표준 템플릿 라이브러리 레퍼런스
* [cplusplus.com](http://cplusplus.com) 는 훌륭한 [언어튜토리얼][9] 과 [레퍼런스][10]를 제공합니다.
* [cprogramming.com][13]는 많은 튜토리얼을 갖고 있습니다.

[0]: http://wiki.openframeworks.cc/index.php?title=Svn
[1]: http://vimeo.com/tag:openFrameworks
[2]: http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t
[3]: http://www.youtube.com/results?search_query=openFrameworks&search=tag&search_sort=video_date_uploaded
[4]: http://search.twitter.com/search?q=openFrameworks
[5]: http://www.creativeapplications.net/?cat=261
[6]: http://www.itee.uq.edu.au/~comp3300/Resources/C_C++_notes.pdf
[7]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users
[8]: http://oreilly.com/catalog/9780596154141/
[9]: http://www.cplusplus.com/doc/tutorial/
[10]: http://www.cplusplus.com/reference/
[11]: http://stackoverflow.com/
[12]: http://www.4p8.com/eric.brasseur/cppcen.html
[13]: http://cprogramming.com/
[14]: http://yosefk.com/C++fqa/
[15]: http://www.cppreference.com/wiki/


----------------
도움을 주신 분들과 후원자들
----------------

오픈프레임웍스는 개발자의 <a href="/development/#contributors">소수 핵심 팀</a>과 거대한 참여자들의 모임간 협력하에 활발히 개발되고 있으며, 책임감을 갖고 오픈프레임웍스의 하부섹션을 관리(rotating basis의 규칙을 따름)하는 <a href="../development/#contributors">섹션 리더</a>들에 의해 관리되고 있습니다.

아래는 openFrameworks를 위해 지원금, 후원금, 국제 개발자 컨퍼런스 주최 등 주요 지원을 제공해주신 기관들입니다. 이러한 이벤트들은 수 일간 전세계에서 참여자들을 한 국가에 모이게하기 위해 종종 상당한 자원을 필요로 합니다.

<span class="sponsors">
  <a href="http://amt.parsons.edu"><img alt="sponsor_logo" src="/about/logo-parsons.png" style="display: block; height: 58px;padding-bottom: 3px;"></a>
  <a href="http://www.ycam.jp/en/"><img alt="sponsor_logo" src="/about/logo-ycam.png" style="display: block; height: 69px; /* padding-bottom: 8px; */"></a>
  <a href="http://eyebeam.org/"><img alt="sponsor_logo" src="/about/logo-eyebeam.png" style="display: block; height: 30px; padding-bottom: 18px;"></a>
  <a href="http://studioforcreativeinquiry.org/"><img alt="sponsor_logo" src="/about/logo-sfci.png" style="display: block; height: 69px;"></a>
  <a href="http://www.aec.at/"><img alt="sponsor_logo" src="/about/logo-ars.png" style="display: block; height: 41px; padding-bottom: 14px;"></a>
  <a href="http://www.fordfoundation.org/"><img alt="sponsor_logo" src="/about/logo-fordfoundation.png" style="display: block; height: 42px; padding-bottom: 13px;"></a>
</span>


**[Ars Electronica Festival and Futurelab](http://www.aec.at/)**

2008년 Ars Electronica 에서 OF Lab 이벤트를 지원해주신 것에 대하여 [Ars Electronica Festival and Futurelab](http://www.aec.at/)에 감사드립니다.

**[Eyebeam](http://eyebeam.org/)**

**[Ford Foundation](http://www.fordfoundation.org/)**

두번째 openFrameworks 개발자 컨퍼런스에 스폰서를 제공해 주신것에 대해 [Ford Foundation](http://www.fordfoundation.org/)에 감사드립니다.

**[Parsons the New School for Design](http://amt.parsons.edu)**

**[Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)**

첫 openFrameworks 개발자 컨퍼런스를 주최해주신 것 뿐만 아니라, 소정의 지원금과 openFrameworks 개발자들에 대한 지원을 해주신 것에 대하여 [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org/)에 감사의 말씀을 드립니다. 

**[Yamaguchi Center for Arts and Media](http://www.ycam.jp/en/)**

OF에 대한 지속적인 지원을 해준 [YCAM](http://www.ycam.jp/en/)에게 감사의 말씀을 드립니다. 2008년 YCAM은 아시아에서는 처음으로 [OF workshop](http://wiki.openframeworks.cc/index.php?title=OfYcam)을 주최하였고, 이후에도 EyeWrtier를 연구해보는 [LabACT series](http://interlab.ycam.jp/en/projects/labact/eye-tracking-study), "오픈소스 예술 공학 도구"를 개발하고 있는 주목받는 개발자들을 초청하는 [Guest Research Projects](http://interlab.ycam.jp/en/projects/guestresearch) ([ofxTimeline](http://interlab.ycam.jp/en/projects/guestresearch/vol2), [mapamok](http://interlab.ycam.jp/en/projects/guestresearch/vol1))등 OF관련 이벤트를 주최해 주었습니다. 또한 최근에는 [세번째 openFrameworks 개발자 컨퍼런스](http://interlab.ycam.jp/en/projects/of-devcon2013)를 주최 해주었습니다.

우리는 아래 기관과 협회등에서 주최된 수 일간의 교육 워크샵, 그리고 "OF Lab"이벤트가 있었다는 사실을 알려드림에 있어 영광스럽게 생각합니다.([the wiki](http://wiki.openframeworks.cc/index.php?title=Education)페이지를 확인해주세요) :


* [Art && Code Festival](http://artandcode.com/)
* [Eyeo festival](http://eyeofestival.com/)
* [Fabrica: The Benetton Group Communications Research Center](http://www.fabrica.it/)
* [Graphic Design Festival Breda](http://www.graphicdesignfestival.nl/en/)
* [iMAL Center for for Digital Cultures and Technology](http://www.imal.org/)
* [MediaLab Prado](http://medialab-prado.es/)
* [New York University Interactive Telecommunication Program](http://itp.nyu.edu/itp/) (ITP)
* [Pratersauna Digital LAB](https://vimeo.com/psdl)
* [Resonate.io Festival](http://resonate.io/)
* [Victoria and Albert Museum](http://www.vam.ac.uk/)
