## -*- coding: utf-8 -*-
.. title: xcode

Xcode 셋업 가이드
==================

첫 단계
----------

1. [OSX 앱스토어](https://itunes.apple.com/ca/app/xcode/id497799835?mt=12)에서 Xcode를 설치합니다.
2. Xcode's command line tools을 설치합니다.

command line tools를 인스톨하려면, 우선 Xcode설치를 마친 뒤 터미널(응용프로그램/유틸리티/터미널.app 에서 찾을 수 있습니다)을 연 다음, 아래 명령어를 입력하고 엔터를 칩니다:

```
xcode-select --install
```

위 명령어를 입력하면 command line tools를 입력하는 창이 뜰것입니다. "설치"버튼을 눌러 설치를 진행합니다.

![install dialog for the command line tools](/setup/xcode/install-dialog.png)

업데이트 서버오류 에러가 발생해도 걱정마세요! 이미 설치된 이전 버전이 있을경우 그렇습니다. 그럴경우 이미 설치된 것이므로 문제 없습니다!

![server error when installing command line tools](/setup/xcode/install-dialog-server-error.png) 

셋업 테스트 하기
------------------

여기서, OF 앱을 빌드하고 실행할것입니다! 오픈프레임웍스에 포함된 예제중의 하나를 열어 테스트를 해보도록 하죠.

우선, 여러분의 컴퓨터안의 편리한 곳에 저희 웹사이트에서 다운받은 압축파일을 받아 압축을 풀어둡니다. 이 폴더는 오픈프레임웍스의 최상위 폴더(OF_ROOT로 알려집니다)가 될 것입니다. 아래에 나열된 것들은 오픈프레임웍스의 최상위 폴더에 위치한 주요 서브폴더들입니다 :

- **apps** 폴더는 여러분의 앱들이 위치할 곳이며, 여기에서 작업하게 될것입니다.
- **examples** 폴더에는 비디오, 3D 그래픽, 사운드, 폰트 등등 특정 컨셉의 데모를 위한 미리 제작된 앱들이 담겨있습니다.
- **addons** 폴더는 [오픈프레임웍스 애드온](http://ofxaddons.com/)(community contributed extensions to the openFrameworks core)을 담아주는 곳입니다. 
- **projectGenerator_osx**폴더에는 프로젝트 생성기가 들어있습니다. 오픈프레임웍스의 새 앱을 생성할때 유용합니다. 

3DPrimitivesExample로 테스트를 해봅시다. **examples**폴더를 열고, 그안의 **3d**폴더에 들어가보면 **3DPrimitivesExample**폴더가 보입니다. 내부에 2개의 폴더와 몇몇의 파일들을 볼 수 있을것입니다.

![selecting the 3D primitives example](/setup/xcode/example-selecting.png)

아래는 오픈프레임웍스 앱의의 기본 구조입니다:

- **src** 폳더는 일반적으로 앱의 소스파일들이 담길 곳입니다. 
- **bin** 폴더는 컴파일되어 실행이 가능한 앱이 담기는 곳입니다. 이 폴더안의 **data**폴더는 이미지나 사운드파일과 같이 앱에서 불러올 외부파일들을 담아두는 곳입니다.

`.xcodeproj`확장자를 갖는 파일은 Xcode에서 열 수 있는 파일입니다. 열어보면, 아래 이미지와 비슷한 화면을 볼 수 있습니다. 아래 이미지에서 볼 수 있는것과 같이 프로젝트 내부의 좌측바를 확장하여 `ofApp.cpp`파일등 여러분이 열어보고싶은 파일을 선택하여 열어볼 수 있습니다.

이 문서가 작성된 시점에서는 Xcode 6버전이므로, 아마도 여러분이 미래에서 오셨다면 조금 다를수 있습니다.

![xcode showing an openframeworks example](/setup/xcode/example-open.png)

프로젝트 브라우저의 좌측 사이드바에서 상단의 폴더아이콘을 탭을 클릭하여, 프로젝트의 파일들을 볼 수 있습니다. 이 사이드바에서는 앱을 빌드(삼각형 화살표 아이콘 클릭)할때 발생한 에러들도 표시됩니다.
해상도가 낮은 장치에서 작업시 편리한 팁입니다 : cmd-0을 눌러 사이드바를 감추거나 표시할 수 있습니다. cmd-1, cmd-2 등등으로 다른 탭을 보여줄 수 있습니다.

중앙의 섹션이 메인 편집기입니다. 프로젝트 브라우저에서 선택한 파일을 편집할 수 있습니다. `.cpp`나 `.h`와 같은 소스파일을 위한 텍스트 에디터로 사용되는것이 보통이지만, 프로젝트파일의 상단에 위치한 프로젝트 세팅을 클릭해 변경하거나, 이미지/비디오/사운드파일들을 확인할 수도 있습니다/

우측은 보조사이드바로써, 오픈프레임웍스에서는 거의 필요가 없습니다. cmd-option-0 단축키 또는 우측상단의 파란 아이콘을 클릭해 숨길 수 있습니다.
상단은 툴바로써, 커다란 "실행"버튼(작성된 시점에서는 커다란 재생버튼처럼 보이네요)과 함께 프로젝트 빌드 시 어떤 프로젝트를 실행하도록 할 것인지 Xcode에게 알려주는 다이얼로그(Xcode에서는 "scheme"이라 불립니다)가 있습니다.

**기본적으로 잘못된 scheme이 선택되어있습니다.**. Xcode는 여러분의 앱 대신 "openFrameworks를 선택하는 경향이 있습니다. "openFrameworks"를 클릭해 드롭다운에서 여러분의 앱 이름을 선택합니다. 앱을 실행했으나 아무 변화가 없다면, 대부분의 이유는 바로 이것입니다.

![selecting the correct scheme in xcode](/setup/xcode/example-scheme.gif)

올바른 scheme을 선택했다면, 준비가 다 된것입니다! 좌측 상단의 실행버튼을 클릭(혹은 cmd-r)하여 예제를 빌드하고 실행합니다.

처음으로 오픈프레임웍스 프로젝트를 컴파일할때에는, 거의 1분정도가 걸리는데 이는 오픈프레임웍스를 컴파일 하기 때문입니다. 추후 오픈프레임웍스를 업데이트하거나 오픈프레임웍스 내부파일들을 편집하지 않는다면 이 과정은 한번만 필요합니다. 오픈프레임웍스 자체의 컴파일이 끝나면, Xcode는 예제파일을 컴파일 할것이고, "Build Succeeded" 메시지와 함께 예제 앱이 실행될 것입니다.. 

![example running in a window in front of xcode](/setup/xcode/example-running.png)

실행된 예제 앱의 창을 닫으면, 새로운 패널이 Xcode의 하단에 추가되어있음을 알 수 있습니다. 이것은 `ofLog`메세지가 출력되거나 디버깅을 위해 사용되는 콘솔 패널입니다. cmd-shift-y 단축키로 이 패널을 감추거나 표시할 수 있습니다.

불행이도 오픈프레임웍스가 컴파일될때 일반적으로 몇몇 경고들이 출력될것입니다만, 이는 완벽히 정상입니다.

새로운 프로젝트 생성하기
------------------------

자 이제 셋업이 잘 되었는지 확인되었습니다. 이제부턴 새 프로젝트로 시작해볼 단계입니다. **projectGenerator_osx**폴더에 들어가보면, 오픈프레임웍스의 앱을 쉽게 생성해주는 `projectGenerator.app`을 찾을 수 있습니다. firstSketch라는 이름으로 새 스케치를 설정하고, 기본세팅으로 둔뒤 generate버튼을 눌러봅시다.

이후, 프로젝트 생성기를 닫고, **apps/myApps/firstSketch** 폴더로 이동합니다. `firstSketch.xcodeproj`를 Xcode로 열어, 좌측의 프로젝트 탭에서  **src**폴더 안의 `ofApp.cpp`파일을 선택합니다.

자 이제 빈 `setup()`, `update()`, `darw()`함수들과 몇몇 빈 함수들이 작성된 기본 앱의 텝플릿을 볼 수 있습니다.

![blank openframeworks project template](/setup/xcode/generate-blank.png)

Let's make a simple app which draws some text in the top left corner of the window. In the `draw()` function, add the following code then hit cmd-r (or click the run button) to run your new app:
창의 좌측 상단에 텍스트를 그리는 간단한 앱을 만들어봅시다. `draw()`함수 안에 아래와 같은 코드를 작성하고 cmd-r을 눌러(혹은 실행버튼을 클릭하여) 여러분의 새 앱을 실행해봅시다.

```
ofDrawBitmapStringHighlight("Everything works!", 20, 20);
```

![filling in the draw function while showing xcode autocomplete](/setup/xcode/generate-text.gif)

코드를 타이핑할 때마다 , Xcode에서 제안하는 자동완성을 볼 수 있습니다. up또는 down 화살표키를 이용하여 변경한 뒤, 엔터키를 눌러 선택할 수 있습니다. 또한 각 매개변수들을 바로바로 편집할 수 있습니다.(두개의 20rhk "Everything works!"메시지)

혹 자동완성을 볼 수 없다면, Xcode의 속도를 높이기 위해 빠른 빌드를 해줘야 합니다. cmd-b를 사용하여 앱의 실행 없이 빌드를 해봅시다.

에러와 디버깅
--------------------

에러의 발생은 피할수 없습니다. 에러의 이유는 크게 두종류가 있습니다, 컴파일 에러와 런타임 에러입니다. 컴파일 에러는 주로 오타, 또는 빌드세팅이 잘못되었을때 발생되며, 앱이 전혀 컴파일되지 않습니다. 런타임에러는 앱이 컴파일되고 실행되는 도중에 발생하며, 보통 `EXE_BAD_ACCESS` 그리고 `SIGSEGV`와 같은 무시무시한 대문자가 출력되며 발생합니다.

오타로 인해 발생하는 컴파일에러는 운이 좋을경우 보통 에러가 발생한 곳의 특정 라인이나 특정 문자를 알려줍니다. Xcode는 빨간색으로 라인을 강조하여 알려주며, 이슈가 발생한곳이라고 추측되는 문자의 하단에 작은 삼각형을 표시해줍니다. 아래는, for문에 너무 많은 "+"문자가 있는 에러의 예입니다.

![compilation error in xcode](/setup/xcode/errors-compilation.png)

Xcode는 또한 런타임 에러가 발생한 곳을 추척하여 의심스러운 특정 라인을 알려줍니다만, 약간 까다롭습니다. 대체로 맞지만, 보통 여러분이 작성하지 않은 곳을 가리키므로, 혼란스러울 것입니다. 아래의 예에서, Xcode는 앱이 크래싱(잘못된 포인터를 사용하려고 하는것)된 라인을 정확히 알려주고 있습니다.

![runtime error in xcode](/setup/xcode/errors-runtime.png)

만약 Xcode가 문제랑 상관없는 곳을 가리킨다고 생각된다면, 좌측의 사이트바에 있는 다른 스택 프레임을 선택해보시기 바랍니다. (넘버링된 아이템의 리스트)

런타임에러는 일반적으로 변수가 여러분이 예상하지 못한 상태에 진입했을 때에 발생됩니다(가령 `int`가 여러분이 생각했던것보다 더 큰 숫자를 담고 있다거나, 여러분의 예상과 달리 포인터가 `NULL`을 가리킬때). Xcode는 아주 편리고 유용한 디버거를 제공하고 있어서, 여러분의 코드의 특정한 라인에서 일시정지를 하여 정지한 상황의 모든 변수의 상태를 체크할 수 있습니다. 

이를 위해, 여러분이 원하는 라인의 좌측 여백을 클릭하여 브레이크포인트를 지정할 수 있습니다. 파란색 화살표로 표시되며, 여백의 바깥으로 드래그하여 제거할 수 있습니다.

![setting breakpoints](/setup/xcode/errors-breakpoint.gif)

여러분의 앱이 브레이크포인트에 다다를때, 앱은 일시정지되고, 그 상태의 모든 변수의 상태가 Xcode창의 하단 디버깅 패널에 보여집니다. 이 스크린샷에서, 반복문이 끝났을 때의 `a`, `b`변수의 최종 값을 확인할 수 있습니다.

![triggering breakpoints](/setup/xcode/errors-breakpoint-triggered.png)

브레이크포인트의 다른 용도로는, 특정한 조건을 만족할 때에 사용할 수 있다는 것입니다. 아래에 보여지는 애니메이션 gif에서는, 브레이크포인트가 `a`가 50일 때에만 동작하게 되어있습니다.

![conditional breakpoint being triggered](/setup/xcode/errors-condition.gif)

재밌는 사실 : 앱이 브레이크포인트에 다다랐을때 앱이 멈추는 대신, 소리를 내게 할 수도 있습니다.

프로젝트에 파일 추가하기(애드온 등등)
---------------------------------------------

프로젝트의 덩치가 커지면, 아마도 새로운 파일을 추가하고 싶을 때가 있습니다. 이 파일들은 여러분의 프로젝트를 위해서만 작성되거나 혹은 애드온, 혹은 다른 사람이 작성한 외부 라이브러리가 될수도 있겠죠.

새 파일을 만드는것은 몇가지 방법이 있습니다. 한가지는 Xcode에서 "src"폴더에 우측버튼을 누르고, "New File.."을 선택하는 것입니다. 다른 방법은 메뉴에서 File > New > File..을 선택하는 것입니다.

다이얼로그가 뜨면, OS X > Source로 이동하여 C++ 파일을 선택합니다. Xcode는 `.cpp`와 `.h`을 세트로 하여 자동으로 생성해줍니다. 따라서 기본 이름 ("myNewClass")만 제공하면 됩니다. 다이얼로그에서 새 파일의 경로를 "src"폴더로 지정했는지 체크하시기 바랍니다.

오픈프레임웍스 애드온을 추가하는것은 약간 복잡합니다, 하지만 누구라도 할수 있는 방법이 있죠. 만약 애드온 안에 README파일이 있다면, 일반적으로 애드온을 추가하는 방법이 작성되어 있을것입니다. 만약 그렇지 않다면, 아래의 방법을 따르는 것이 좋습니다:

- 애드온을 오픈프레임웍스 루트 폴더의 **addon**폴더로 옮깁니다.
- Xcode안에서 프로젝트의 **addon** 폴더에서 우측버튼을 클릭합니다.
- "Add file to (프로젝트 이름)..."을 선택합니다.
- 애드온이 담긴 폴더로 이동한다음, 추가한 애드온 자체의 폴더 안으로 들어갑니다.
- **src**폴더와 **libs**폴더를 선택합니다(모든 애드온이 **libs**폴더를 포함하는것은 아닙니다)
- 아래의 스크린샷에 있는 보이는 세팅을 사용합니다 ("create groups", 그리고 모든 타킷박스를 선택해줍니다, copying은 여러분이 원하시는대로 하면 되지만, 꼭 필요하진 않습니다)

![adding src and libs folders for an addon](/setup/xcode/files-addons.png)

- "Add"를 클릭합니다
- Xcode 프로젝트에 방금 추가한 폴더를 선택하여, 우측버튼을 클릭하고 "New Group from Selection"을 선택합니다
- 새 그룹이름을 애드온의 이름으로 변경해줍니다.

![renaming addon group](/setup/xcode/files-new-group.gif)

여기서, 반드시 프로젝트를 빌드해보십시오. 성공한다면, 만세, 여러분이 해냈습니다! 만약 "file not fount"에러가 난다면, 아마도 애드온의 폴더를 header search path에 추가해줘야 할겁니다. 이 폴더들은 대부분 "include"라 불리우므로, 프로젝트의 **src**와 **libs**폴더를 그 안에서 찾아보시기 바랍니다. 

![finding the include folder in ofxjson](/setup/xcode/files-include-folder.png)

path를 알고 있다면, Xcode의 좌측 사이드바의 프로젝트파일을 선택해 프로젝트의 build setting을 연 다음, 상탄의 "Build Settings"탭을 선택하고 "header search paths"를 찾습니다.

![finding the build settings dialog](/setup/xcode/files-finding-build-settings.gif)

올바른 build setting을 찾으셨다면, 더블클릭하여 편집모드로 진입한 다음, + 버튼을 눌러 새 애드온의 "include"폴더 경로를 추가하고 엔터키를 입력합니다. 이러한 세팅에서 `$(OF_PATH)`는 오픈프레임웍스의 루트폴더를 의미하므로, 이부분에 대해서는 걱정할 필요가 없습니다.

![adding a header search path to a project](/setup/xcode/files-adding-header-path.gif)

만약 애드온이나 라이브러리가 여러개의 **include**폴더를 갖고 있다면, 이 과정을 다 추가할 때까지 반복해주시면 됩니다.
