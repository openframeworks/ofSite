## -*- coding: utf-8 -*-
.. title: emscripten

emscripten 셋업
===========

오픈프레임웍스로 프로젝트를 만들어 보셨다면 "끝내주네! 이걸 온라인 포트폴리오로 올리고 싶군!"이라고 생각해보신적 있으실겁니다. 아마도 비디오나 스크린샷으로 기록하여 만들수 있겠지만, 프로젝트의 UI요소들은 어떻게 해야할까요? 어떻게 여러분이 만든 마우스 효과를 방문자들이 볼 수 있을까요? Emscripten을 사용해보십시오. Emscripten은 몇 분만에 C++코드를 자바스크립트로변환해 줍니다! 즉 여러분의 끝내주는 오픈프레임웍스 프로젝트를 "온라인"에 업로드할 수 있습니다.

아래의 가이드들은 오픈프레임웍스 배포판의 예제 프로젝트를 어떻게 컴파일하는지를 보여줄 것입니다. 그리고 언제든지 오픈프레임웍스 스케치를 웹페이지로 재변환할 수 있습니다. 오픈프레임웍스 0.9를 다운받아 사용하고 있다면(이 기능은 오픈프레임웍스 0.9이상의 버전에서 지원됩니다)emscripten을 설치하고 프로젝트를 이것으로 컴파일하면 됩니다. 이를 위해서는 아래의 단계를 하나하나 따라주시면 됩니다.

Emscripten 설치
------------------

Emscripten설치는 git을 사용하여 Emscripten 저장소를 통해 직접 설치하는 것을 추천드립니다.

emsdk가 설치될 위치에서 터미널을 열고 아래의 명령어를 입력하시기 바랍니다:

```bash
git clone https://github.com/emscripten-core/emsdk
cd emsdk
./emsdk install latest
./emsdk activate latest
source ./emsdk_env.sh
```

_주의: 현재의 `emsdk` 스크립트가 Python2를 사용하기 때문에, 여러문의 컴퓨터에서 `python`이 Python3의 alias라면 에러가 발생할 수 있습니다. 이 경우, 명시적으로 Python2를 사용하여 위 명령을 실행해주세요 : `python2 ./emsdk update`._

설치과정에 약간의 시간이 소요됩니다. 설치가 끝나면, `source ./emsdk_env.sh`를 입력하여 활성화된 Emscripten의 시스템 경로를 설정해줍니다. 이 명령의 출력을 복사하여 `.profile`파일에 추가할 수 있습니다. 이렇게 하여 저장된 변수는 다음 세션에서도 자동으로 적용됩니다.

_주의 : 만약 이전에 이미 설치된 emscripten가 있다면, OF_FOLDER내의 컴파일된 코드들을 삭제해야 합니다. 컴파일을 시도하기 전에 `OF_FOLDER/libs/openFrameworksCompiled/lib/emscripten/`내 모든 파일 또는 `obj`폴더와, 여러분의 프로젝트 폴더들의 모든 `obj/`폴더를 삭제해주세요_

emscripten을 사용하여 오픈프레임웍스 프로젝트 컴파일하기
--------------------------------------

터미널을 열어 예제 `examples/3d/3DPrimitivesExample`과 같이 특정프로젝트의 폴더로 이동합니다. 그리고 나서 아래의 명령어를 사용하여 프로젝트를 컴파일합니다.

```bash
emmake make
```

컴파일 과정이 끝나면, `examples/3d/3DPrimitivesExample/bin` 폴더에 `3DPrimitivesExample.html`이라는 새로운 파일이 생성됩니다. 아래의 명령어로 이 파일을 엽니다:

```bash
emrun bin/3DPrimitivesExample.html
```

만약 동작하지 않는다면, 해당 파일이 사파리 브라우저에서 열렸기 떄문일 수 있습니다. 사파리 브라우저는 WebGL을 지원하지 않습니다. 크롬과 같은 다른 브라우저로 시도해보시기 바랍니다.

```bash
emrun --browser chrome bin/3DPrimitivesExample.html
```
모든것이 잘 동작한다면, 아래와 같은 이미지가 보일것입니다.

![](/setup/emscripten/3dprimitives.png)

이 튜토리얼은 Regine Flores Mir의 [블로그 포스트](http://www.reginafloresmir.com/blog/2015/5/14/openframeworks-on-the-line)에서 가져왔습니다.

