## 윈도우를 생성하여, OF 어플리케이션을 구동하고, 어플리케이션의 상태정보를 확인하기

The main classes in this module are windows for each platform and settings classes that can be passed to openFrameworks when creating the window. In most projects you don't even need to use them explicitly as openFrameworks will use them under the hood, select the correct one in each case and start and end the infinite loop.
이 모듈의 메인 클래스는 윈도우를 생성할 때, 각 플랫폼을 위한 윈도우와 오픈프레임웍스로 전달되는 세팅 클래스를 포함하고 있습니다. 일반적으로는 오픈프레임웍스가 알아서 해주기 때문에 여러분이 직접 다룰 필요가 없으므로,. 필요에 따라 사용하시기 바랍니다.


이곳에서 다루는 내용들은 대부분의 경우 어플리케이션의 main.cpp에서 작성됩니다. 모든 예제프로그램에서 어떻게 동작하는지 직접 확인하실 수 있습니다:

가끔 생성할 윈도우의 세팅을 직접 지정하고 싶을 때가 있습니다, 예를들어 사용할 openGL의 버전을 지정하려면, main.cpp의 내용은 아래와 같습니다:


```cpp
#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){
	ofGLWindowSettings settings;
	settings.setGLVersion(3,2);
	ofCreateWindow(settings);

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());

}
```

위는 특별하게 openGL 3.2버전을 사용하여 윈도우를 생성하겠다는 내용입니다.

또한, 하나의 프로그램에서 여러 윈도우를 생성하려면, 서로 다른 윈도우 세팅 클래스를 사용할 수 있습니다.

[ofWindowSettings](ofWindowSettings/)에서 구동시 특정 크기의 윈도우 및 전체화면 설정과 같은 기본적인 설정이 가능합니다.

openGL기반 어플리케이션(윈도우를 사용하지 않는 앱을 제외한 모든 어플리케이션)을 위한, GL 윈도우 세팅 클래스가 있습니다. 일반적인 openGL 을 위한[ofGLWindowSettings](ofGLWindowSettings/)과, 모바일 또는 라즈베리파이와 같은 리눅스 arm보드에서 자주 사용되는 openGL ES를 위한 [ofGLESWindowSettings](ofGLESWindowSettings/) 가 있습니다.

데스크탑에서는, GLFW가 기본적인 윈도우 시스템을 담당하기 때문에, [ofGLFWWindowSettings](ofGLFWWindowSettings/)를 사용하여 어플리케이션이 구동될 때 아이콘화 및, 테스크탑에서 윈도우의 위치 등을 지정할 수 있습니다.  


이러한 모든 클래스들의 사용방법은 동일합니다. 일단 인스턴스를 생성하고, 필드를 세팅한 뒤 윈도우를 생성하는 [ofCreateWindow](ofAppRunner/#ofCreateWindow)로 전달하면 됩니다. 해당 윈도우를 변수에 담고 있으려면 아래와 같이 작성하면 됩니다:
```cpp
auto window = ofCreateWindow(settings);
```

만약 어플리케이션의 윈도우가 하나라면, 위의 과정을 무시할 수도 있습니다. `examples/events` 폴더에 multiwindow 어플리케이션 예제가 있으니 살펴보시기 바랍니다.