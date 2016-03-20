## -*- coding: utf-8 -*-
.. title: armv7

#일반적인 ARM7 아키텍쳐를 위한 리눅스 설치

판다보드, 비글보드, 비글본(블랙), 큐비보드 등등 ARM7 CPU를 사용하는 몇몇 보드들이 있습니다. 이러한 모든 보드들은 오픈프레임웍스와 호환되지만, 몇 가지 확인해야 할 사항들이 있습니다:

- armhf(hard float) 배포판을 사용해야합니다. 오픈프레임웍스는 hard float 플래그로 컴파일되었으므로, soft float으로 컴파일된 운영체제에서는 동작하지 않습니다
- 사용하고 있는 보드의 그래픽카드 드라이버를 찾아 설치해줘야 합니다. 이는 일반적으로 이러한 보드에 한정되어 제공되는 이유로 그래픽카드가 오픈소스화 되어있지 않기 때문에 매우 어렵습니다. 만약 드라이버를 찾지 못하면, headless(그래픽카드 출력없이)로 동작합니다. headless 앱을 세팅하는 방법은 아래에서 설명해드립니다.
- arm보드를 위한 우분투, 데비안, 페도라, 아키 리눅스용 오픈프레임웍스 설치 스크립트는 대부분 잘 동작합니다. 따라서 언급한 배포판을 사용하거나 데비안 변형 배포판을 사용하시는것이 좋습니다. 만약 install_dependencies 스크립트를 실행했을때 필요한 의존성 패키지들을 찾지 못하면 직접 스크립트를 직접 훑어가며 사용중인 배포판을 위한 것들을 설치하는 방법을 찾을 수 있습니다.
- 이 가이드에서 언급되지 않은, 다른 보드에서도 오픈프레임웍스를 구동하고 계신다면, 어떻게 했는지 저희에게 알려주십시오! [github 사이트 저장소](https://github.com/openframeworks/ofSite)를 통해 공헌하실 수 있습니다.

-------------------------------

## 오픈프레임웍스 설치하기

사용중인 보드에서 리눅스 배포판을 구동중이라면, 오픈프레임웍스의 armv7 버전을 다운받아, SD카드의 특정 폴더에 암축을 풀고 아래의 단계를 따라주십시오:

        cd OF_ROOT/scripts/linux/ubuntu
        sudo ./install_dependencies.sh
        sudo ./install_codecs.sh
        
`ubuntu` 를 여러분이 사용하고 있는 배포판으로 바꾸시면 됩니다. 만약 이 단계에서 에러가 발생하면 [github 사이트 저장소](http://github.com/openframeworks/openFrameworks/issues)의 이슈 섹션을 통해 저희에게 알려주십시오.

이제 어플리케이션을 컴파일 할 수 있습니다:

        cd OF_ROOT/examples/graphics/polygonExample
        make
        make run

-------------------------------

## Raspberry PI 2

라즈베리파이 2는 armv7 아키텍쳐를 사용하지만 공식적으로 지원되는 배포판은 armv6 세팅으로 컴파일된 Raspbian이므로, Raspbian을 사용하는것은 권장되지 않습니다. 아키리눅스와 armv7 플래그로 컴파일된 다른 배포판을 사용하면 잘 동작하지만 이는 현재로써는 공식적인 지원은 아닙니다. [라즈베리파이2에 아키리눅스와 armv7 오픈프레임웍스를 설치하기 가이드](../raspberrypi/raspberry-pi-getting-started-archlinux)가 있습니다만 사용자의 대부분으로부터 문제가 보고되어 왔습니다. 혹시 문제없이 사용하는 방법을 알고 계신다면 깃허브에 이슈로 알려주시거나 해결 방법을 pull reauest로 작성해주십시오. 

-------------------------------

## Headless applications

만약 그래픽카드 드라이버를 찾지 못하거나 비디오출력이 없는 경우(가령 dvi출력포트가 없는 비글보드의 경우), 혹은 그래픽 출력이 전혀 필요하지 않을 경우, ofAppNoWindow클래스를 사용하여 openGL없이 어플리케이션을 생성할 수 있습니다. 

이를 위해 아래와 같이 main.cpp를 작성하면 됩니다:

~~~~{.cpp}
    #include "ofMain.h"
    #include "ofApp.h"
    #include "ofAppNoWindow.h"

    //========================================================================
    int main( ){
        ofAppNoWindow w;
        ofSetupOpenGL(&w,1024,768, OF_WINDOW);
        ofRunApp( new ofApp());

    }
~~~~

그렇습니다. openGL 콘텍스트를 생성하지 않더라도, 오픈프레임웍스가 어떤 윈도우를 사용할것 인지 실제로 ofSetupOpenGL를 호출해 알려줘야 합니다.
