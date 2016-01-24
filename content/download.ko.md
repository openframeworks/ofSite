## -*- coding: utf-8 -*-
<%inherit file="/_templates/slideshow_wide.mako" />

<!--h1>다운로드</h1-->


<div id="download-latest-header">

	<h2>${bf.config.currentVersion}</h2>
	% if bf.config.breaking:
	    <h3>은 가장 최근에 릴리즈된 버전입니다. 새 버젼은 상당한 새로운 기능과, 새 인터페이스, 그리고 몇가지의 중단된 변경이 있는데, 이는 ${bf.config.currentVersion}이 이전 프로젝트와 100% 호환되지 않기 떄문입니다. <a href="https://raw.github.com/openframeworks/openFrameworks/${bf.config.currentVersion}/CHANGELOG.md">변경사항</a>을 읽어보시고 이전버전과의 변경사항을 살펴봐 주시기 바랍니다.</h3>
	% else:
	    <h3>은 가장 최근의 릴리즈 버전입니다. 이것은 마이너 버젼으로, 몇가지의 버그픽스를 포함합니다. 따라서 이는 ${bf.config.majorVersion}이나 새 버젼과 완벽하게 호환됩니다. <a href="https://raw.github.com/openframeworks/openFrameworks/${bf.config.currentVersion}/CHANGELOG.md">변경사항</a>을 읽어보시고, 변경사항을 살펴봐 주시기 바랍니다.</h3>
	% endif
	<p>오픈프레임웍스를 사용하기 위해서는 IDE가 필요하며, 여러분의 플랫폼을 위한 셋업가이드를 따라 주시면 됩니다. <a href="http://github.com/openframeworks/openFrameworks/issues">이슈</a>페이지에 발견된 버그들을 보고해주시길 바라며,  다른 질문들은 <a href="http://forum.openframeworks.cc">포럼</a>에 작성해주시기 바랍니다. 오픈프레임웍스는 <a href="../about/license.html">MIT 라이센스</a>를 따릅니다.</p>
</div>

<div id="download-bg-desktop">
    <div id="download-latest-platform">
	    <h2>맥 osx</h2>
	    <h3>오픈프레임웍스 <br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_osx_release.zip">맥 osx</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/xcode">xcode</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform">
	    <h2>리눅스</h2>
	    <h3>오픈프레임웍스<br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux_release.tar.gz">리눅스 32bit</a> / <a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linux64_release.tar.gz">리눅스 64bit</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/linux-install">리눅스 인스톨</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/linux-eclipse">eclipse</a></p>
	    <p><a href="../setup/emscripten">emscripten</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>윈도우즈</h2>
	    <h3>오픈프레임웍스<br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_vs_release.zip">visual studio (2015)</a></p>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_msys2_release.zip">qt creator / msys2</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/vs">visual studio</a></p>
	    <p><a href="../setup/qtcreator">qt creator</a></p>
	    <p><a href="../setup/msys2">msys2</a></p>
    </div>
</div>

<div id="download-bg-mobile">
    <div id="download-latest-platform-title">
	    <h2>모바일</h2>
	    <p><em>모바일용 오픈프레임웍스는 데스크톱 버전의 기능을 동일하게 제공하며 가속계, 나침반, gps 등의 모바일만의 기능을 추가로 제공합니다.</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>ios</h2>
	    <p><em>osx 전용</em></p><br/>
	    <h3>오픈프레임웍스 <br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_ios_release.zip">xcode</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/iphone">xcode</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>안드로이드</h2>
	    <h3>오픈프레임웍스<br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_android_release.tar.gz">안드로이드</a></p><br/>
	    <h3>IDE 셋업 가이드</h3>
	    <p><a href="../setup/android-eclipse">eclipse + ADT</a></p>
	    <p><a href="../setup/android-studio">android studio</a></p>
    </div>
</div>


<div id="download-bg-armlinux">
    <div id="download-latest-platform-title">
	    <h2>arm 리눅스</h2>
	    <p><em>라즈베리파이, 비글본(블랙), 판다보드, 비글보드, 등등의 arm프로세서 보드용 오픈프레임웍스입니다.</em></p>
	    <p><em>최신의 일반적인 보드를 위한 셋업 가이드를 제공하지만, armv6과 armv7을 사용하는 보드에 한정합니다.</em></p>
    </div>

    <div id="download-latest-platform">
	    <h2>armv6&nbsp; 리눅스</h2>
	    <h3>오픈프레임웍스 <br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv6l_release.tar.gz">armv6 리눅스</a></p><br/>
	    <h3>셋업 가이드</h3>
	    <p><a href="../setup/raspberrypi">라즈베리파이</a></p>
    </div>

    <div id="download-latest-platform-last">
	    <h2>armv7 &nbsp; 리눅스</h2>
	    <h3>오픈프레임웍스<br/>다운로드</h3>
	    <p><a href="http://www.openframeworks.cc/versions/v${bf.config.currentVersion}/of_v${bf.config.currentVersion}_linuxarmv7l_release.tar.gz">armv7 리눅스</a></p><br/>
	    <h3>셋업 가이드</h3>
		<p><a href="../setup/raspberrypi">라즈베리파이</a></p>
	    <p><a href="../setup/pandaboard">판다보드</a></p>
	    <p><a href="../setup/armv7">일반 armv7</a></p>
    </div>
</div>

<br class="clearboth"/>

저희는 오픈프레임웍스를 컴파일되지 않은 라이브러리로 배포하고 있습니다. openFrameworks를 다운받아 압축을 풀면, `addons/`, `apps/`, `libs/` 등등의 폴더를 보실 수 있습니다. 오픈프레임웍스가 이 폴더들을 모두 포함하고 있으므로, 여러 버전의 openFrameworks를 동시에 유지하고 싶다면, 그냥 폴더를 따로 갖고 있으면 됩니다. 예를들어 `of_v${bf.config.currentVersion}_osx_release/`폴더와 `of_v${bf.config.olderVersion}_osx_release/`폴더가 있다면, 각각은 자신만의 `apps/`폴더를 갖게 됩니다. 추후 새 버전의 openFrameworks가 릴리즈 되더라도, 여러분의 이전 앱들은 이전버전의 openFrameworks로 컴파일 할 수 있습니다.

예제폴더들은 좋은 출발점입니다. 예제폴더 내부에서 openFrameworks로 가능한 다양한 예제들을 살펴볼 수 있습니다. 폰트불러오기, 그래픽, 오디오 입출력, 사운드 재생 및 FFT분석, 웹캠 사용하기, 비디오 재생, 이미지를 불러오거나 저장하기, 이벤트 다루기, 시리얼 통신 등등을 볼 수 있습니다.
<br />

<div id="myslides">
<img src="0071_0.png" />
<img src="0071_1.png" />
<img src="0071_2.png" />
<img src="0071_3.png" />
</div>

-------------------------------

<iframe src="http://ci.openframeworks.cc/nightlybuilds.html" style="width:100%; height:370px; border: none" scrolling="no" seamless="seamless"></iframe>

-------------------------------

other releases  
--------------

이전 버전의 openFrameworks 릴리즈는 [이곳](older.html)에 저장되어 있습니다. 가장 최신의 openFrmaeworks는 이곳 [openFrameworks GitHub](https://bithub.com/openframeworks/openFrameworks/)에서 볼 수 있습니다. 여러분중에 openFrameworks의 공헌에 관심이 있으시다면, GitHub저장소를 fork하고 [openFrameworks GitHub workflow](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)의 가이드라인에 따라주시면 됩니다.
