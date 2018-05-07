## -*- coding: utf-8 -*-
.. title: android studio

안드로이드 스튜디오
================

Summary
-------

안드로이드 스튜디오에 오픈프레임웍스 환경을 세팅하는 방법은 꽤나 직관적입니다. 기본적인 단계는 아래와 같습니다:

- 안드로이드 스튜디오와 안드로이드 SDK 설치
- 안드로이드 NDK 설치 (실제로 테스트된 버전은 r15c입니다)
- 다운로드 페이지 혹은 깃에서 오픈프레임웍스 다운
- local.propertie의 (`ndk.dir`)에 NDK의 경로 지정
- 안드로이드 스튜디오에서 **File ➞ Open Project**를 이용하여 `examples/android`폴더에서 오픈프레임웍스의 예제를 선택하여 열기
- 빌드하고 실행

설치
---

<h3>안드로이드 스튜디오와 SDK 설치</h3>

[http://tools.android.com/download/studio/stable]() 에서 안드로이드 스튜디오를 다운받고 설치합니다.(안드로이드 스튜디오 1.0 또는 그 이상의 버전이 필요합니다). 이때 아마도 자동으로 최신의 SDK가 설치될것입니다. 물론 나중에 안드로이드 스튜디오에서 **Tools ➞ Android ➞ SDK Manager**메뉴를 사용하여 SDK버전을 별도로 선택할 수도 있습니다.

만약, SDK가 자동으로 설치되지 않는다면,  [http://developer.android.com/sdk/index.html]() 에서 설치할 수 있습니다. ("Get the SDK for an existing IDE").

<h3>안드로이드 NDK 설치</h3>

안드로이드를 위한 C/C++ 컴파일러, 헤더파일들, 라이브러리입니다. 오픈프레임웍스 0.10.0은 NDK r15c버전에서 테스트되었으므로, 그 이상의 버전에서는 어쩌면 동작할 수도 있지만, 장담할 수는 없습니다.

[https://developer.android.com/ndk/downloads/older_releases]()

- OS X: [https://dl.google.com/android/repository/android-ndk-r15c-darwin-x86_64.zip]()
- Linux 64: [https://dl.google.com/android/repository/android-ndk-r15c-linux-x86_64.zip]()
- Windows 32: [https://dl.google.com/android/repository/android-ndk-r15c-windows-x86.zip]()
- Windows 64: [https://dl.google.com/android/repository/android-ndk-r15c-windows-x86_64.zip]()

<h3>오픈프레임웍스 다운로드</h3>

[Download](/download) 에서 받을 수 있습니다.:


<h3>NDK 설정</h3>

텍스트 에디터로, `libs/openFrameworksCompiled/project/android/paths.make`파일을 열어, NDK 경로를 설정해줍니다:

    NDK_ROOT=/path/to/the/ndk

<h3>프로젝트 열기</h3>

안드로이드 스튜디오의 환영메시지창에서 **Open an Existing Android Studio Project**를 선택합니다.

![](open-existing-project.png)

이후, `examples/android` 내에 있는 안드로이드 예제를 아무거나 엽니다.

![Opening androidEmptyExample](androidEmptyExample.png)

프롬프트를 다 체크한 뒤, 안드로이드 스튜디오가 프로젝트를 구성하는동안 기다립니다.

여기서 약간 시간이 걸릴겁니다: 처음 진행되는 과정은 자동으로 오픈프레임웍스를 빌드하는 것입니다. 만약 제대로 되지 않는다면(Gradle sync가 계속 실패), 문제해결 란을 살펴보세요. 몇몇의 경우, 콘솔창의 에러를 클릭하여 문제해결방법을 찾을수 있을겁니다. (예를들어 안드로이드 SDK의 다른 버전을 설치하여 해결). 또한 몇몇의 경우, 비어있는 의존성패키지들을 반복적으로 설치하는 것으로 해결할 수 있습니다.

<h3>빌드 후 실행</h3>

툴바에 보이는 `androidEmptyExample` 옆의 재생버튼을 누릅니다. 운이 좋다면, 앱이 빌드되어 여러분의 안드로이드 기기에 앱이 일시적으로 실행될겁니다(적절한 에뮬레이터에 뜰 수도 있습니다). 만약 앱이 동작한다면 축하드립니다! 오픈프레임웍스 셋업이 끝났네요.

새 프로젝트 만들기
--------------------

새 프로젝트를 만들기 위해서는, 여러분이 사용하는 플랫폼의 project generator를 사용하면 됩니다. OF의 root폴더에 위치하고 있습니다. 리눅스라면, project generator를 실행하기 전에 아래 명령어를 실행하여 설치할 수 있습니다.

```sh
scripts/android/compileLinuxPG.sh
```

문제 해결
--------------

- 어쩌면 아래의 숫자들을 설치된 안드로이드와 안드로이드 SDK의 버전에 맞게 수정해야할 필요가 있습니다. 안드로이드 스튜디오는 빌드파일들을 열었을 때 이 값들을 수정할 발법을 제공합니다.

    - Gradle 버전을 `/build.gradle`에 명시
    - `compileSdkVersion`, `buildToolsVersion`, `minSdkVersion`, `targetSdkVersion` 값들을 
     `/addons/ofxAndroid/ofAndroidLib/build.gradle` 와`/apps/myApps/androidEmptyExample/build.gradle`에 명시

- 만약 이상한 링커에러가 발생하면, NDK의 버전이 15c버전인지 확인해보세요. 그 이상의 버전이라면 아마 동작하겠지만, 일반적으로 버전이 바뀌면 변경사항이 발생하므로, 새 NDK를 사용하려면 해당 변경사항들에 대해서 체크해봐야 합니다.

- 만약 gradle sync에서 아무런 설명 없이 make에러가 발생한다면, 터미널을 이용해 `chmod +x gradlew; ./gradlew`명령을 프로젝트 폴더에서 실행하여 프로젝트를 빌드해보시기 바랍니다. 좀 더 상세한 에러베시지를 얻을 수 있습니다.

- 만약 프로젝트 동기화를 처음 진행한다면, 의존성 패키지가 없어서 발생하는 문제들에 대해서는 콘솔메시지를 클릭하는 것으로 해결할 수는 없습니다(Android API 25와 같은 경우). 콘솔에서 sdk를 연 다음, 비어있는 API를 선택하고 설치하시기 바랍니다.