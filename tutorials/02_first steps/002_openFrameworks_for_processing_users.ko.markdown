---
date: 2008/06/30 14:16:00
title: Processing 사용자들을 위한 openFrameworks
summary: 프로세싱 사용자를 위한 오픈프레임웍스 개요
author: Zach Gage
author_site: http://www.stfj.net 
---

## Contents

    
*   [1 프로세싱은 실제로 어떻게 동작하는가][3]
    
    *   [1.1 클래스 상속이란 무엇인가요? (부모 클래스 와 자식 클래스)][4]
    *   [1.2 그렇다면 Processing에서는 이러한 과정이 어떻게 동작하나요?][5]
        
    
*   [2 OpenFrameworks는 어떻게 동작하는가][6]
    
    *   [2.1 Main.cpp In-depth][7]
        
    
*   [3 Java 과 C++의 컴파일 과정][8]
*   [4 C++에서 클래스는 어떻게 동작하는가(두개의 파일!?)][9]
    
    *   [4.1 ofApp.h][10]
    *   [4.2 ofApp.cpp][11]
        
    
*   [5 아놔 \* 이게 대체 뭐람? (포인터에 대한 아주 기초적인 소개).][12]
    
    *   [5.1 값 vs. 참조 (Value vs. Reference)][13]
    *   [5.2 & and \*][14]
    *   [5.3 그래서 이걸 어디에 쓸수 있나요?][15]
    *   [5.4 기본 데이터형][16]
        
        *   [5.4.1 Processing에서의 문자열 예외][17]
            
        
        
    
*   [6 PImage, updatePixels() vs. ofTexture, pixels\[\]][18]
    
    *   [6.1 Color 오브젝트 없이 픽셀 값들은 어떻게 저장되나요?][19]
        
    
*   [7 C++에서의 일반적인 문제들 / 기타 주제들][20]
    
    *   [7.1 은연중에 데이터 형변환을 기대하시나요?][21]
    *   [7.2 윈도우 사이즈 변경하기][22]
    *   [7.3 Update() 와 Draw()?][23]
    *   [7.4 How in the world do I print to the console?][24]
        
        *   [7.4.1 printf][25]
        *   [7.4.2 iostream][26]
        
    *   [7.5 Smoothing은 채워진 도형들에 적용되지 않나요?][27]
    *   [7.6 ofSetColor와 관련한 비디오 재생에 관한 문제점/요점들 ][28]
    *   [7.7 Processing의 background() vs. OF의 ofBackground()][29]
    *   [7.8 ofFill() / ofNoFill() vs. processing의 fill() noFill()][30]
    *   [7.9 수학 함수들은 어디에서 왔나요? Math functions, and where they come from (no more Math.\*)][31]
        
        *   [7.9.1 cmath][32]
        *   [7.9.2 ofConstants][33]
        *   [7.9.3 ofMath][34]
        
    *   [7.10 구조체(Structs), 이것들은 무엇을 위한것이며, 어떻게 사용하나요?][35]
    *   [7.11 메모리 관리와 여러분 ][36]
    *   [7.12 기초적인 논리 문제들][37]
    *   [7.13 accidental breakpoints in Xcode and Why Having a Debugger Rocks][38]
            

## 프로세싱은 실제로 어떻게 동작하는가

<!--If you've been programming in processing for a while (and if you made it by the disclaimer), it's safe to assume that you've used classes before. One aspect of Java classes that you might not have used however, is polyMorphism (class extending). -->

만약 여러분이 한동안 Processing에서 프로그래밍을 해왔다면(그리고 별생각 없이 만들어 왔었다면), 이전에 클래스를 사용해봤었다라고 말해도 클린말은 아닙니다. 설령 여러분이 사용하지 않았다 할지도 모를 Java 클래스의 한 특징은 바로 polyMorphism(다형성)입니다. (클래스 상속)

### 클래스 상속이란 무엇인가요? (부모클래스와 자식클래스)

클래스 상속이란 이미 갖고 있는 하나의 클래스에 기능들을 더해 새로운 클래스를 만드는 것입니다.

예를 들어 여러분이 비디오케임을 만든다 가정해봅시다. 아마도 적캐릭터(Enemy)를 위한 클래스를 만들고, 그것들이 어떻게 생겼는지 이미지를 불러오고, 그리고 화면상에 자신의 위치를 중심으로 어떻게 움직이는지를 규정해주어야 할것입니다. 아마도 아래와 같이 말이죠:

~~~~{.cpp}
    class Enemy
    {
    	int x; //x 위치
    	int y; //y 위치
    	public void init(String pathToEnemyPicture, int startX, int startY)
    	{
    		// 하드드라이브상에서 적 캐릭터로 사용할 이미지를 불러온다.
    		// 시작위치를 지정해준다.
    	}
    	
    	public void move()
    	{
    		// 움직인다. 아마도 플레이어에게 총을 쏘겠지?
    	}
    	public void draw()
    	{
    		// 캐릭터를 화면의 적절한 위치에 그린다.
    	}
    }
~~~~

하지만 만약 여러분이 Enemy의 여러 타입을 만들고, 각각 그들을 다르게 보여주고 싶다면 어떻게 해야할까요? 바로 여기서 클래스 상속을 사용합니다. (역자 추가 : 클래스 상속을 사용하게 되면 부모클래스가 갖고 있는 변수/함수들을 모두 상속받게 됩니다. 다만 상속받는 함수중에 변경하고 싶은것만 재정의 하여 사용할 수 있습니다. 따라서..) 모든 캐릭터들은 여전히 자신만의 초기화 함수 init()과 움직임을 구현하는 move()함수를 가질 것입니다. 따라서 우리가 변화를 주어야 할것은 실제 Enemy를 그리는 draw()함수일 것입니다.

<!--We are now using the Enemy class as what is called a Base Class. A Base Class is a class that probably won't ever be instantiated, only inherited by other classes. Because the draw function is the only one we want to change, we don't need to write either the init() or move() functions. By declaring the draw() function again however, we are doing something called function re-definition. This is where you re-declare a function that has already been declared, in effect overwriting it for this subclass of Enemy.-->

여기서 Enemy 클래스를 부모 클래스로 사용할 것입니다. 부모 클래스는 아마도 절대 인스턴스화되지 않을것입니다. 대신에 상속받은 다른 클래스만 인스턴스화 됩니다. draw()만이 우리가 변경할 유일한 함수이기 때문에, init()이나 move()함수들은 새로 작성할 필요가 없습니다. draw()함수를 다시 작성할때 하는 작업을, **함수 재정의**라 합니다. Enemy클래스의 자식클래스에 이미 정의된 함수를 재정의 함으로써, 함수를 덮어씌우는 효과를 가져오는 것입니다.

Java에서의 예는 아래와 같습니다.

~~~~{.cpp}
    class DoubleEnemy extends Enemy
    {
    	public void draw()
    	{
    		// 자신을 두번 그린다
    	}
    }
~~~~

같은 기능으로써 C++의 예는 아래와 같습니다.

~~~~{.cpp}
    // "DoubleEnemy.h" 파일
    class DoubleEnemy: public Enemy // class[클래스 이름]:[privacy][부모 클래스 이름]{}
    {
    	// 여기서는 원형만 선언하고, 실제 코드의 내용은 "DoubleEnemy.cpp"에 작성합니다.
    	public void draw();
    	
    }; // 클래스 선언의 끝에는 항상 ";"을 추가해줘야 함을 잊지 마세요!
~~~~
    

DoubleEnemy는 추상적인 Enemy클래스를 상속받고 있기 때문에, Emeny클래스에 선언된 모든 함수와 변수들을 그대로 상속받습니다. 따라서, init()나 move()함수를 다시 새로 작성할 필요가 없는 것입니다. 이는 새로운 특별한 Enemy클래스를 만들때도 마찬가지 입니다:

~~~~{.cpp}
    // "TripleEnemy.h" 파일
    class TripleEnemy : public Enemy
    {
    	public void draw(); // 자신을 세번 그린다
    };
~~~~

자 이제 우리는 움직이면서 스스로를 초기화하지만, 각각 다른 모습으로 보여지는 두가지 타입의 Enemy를 가지게 되었습니다. 클래스 상속의 또다른 장점은 움직임이나 초기화과정을 변경하고 싶을때, 부모클래스에서 한번만 변경해주면 상속받은 모든 Enemy 타입이 동시에 적용된다는 점입니다. 

<!--Ok, so what does this have to do with Processing?-->

### 그렇다면 Processing에서는 이러한 과정이 어떻게 동작하나요?

<!--Although Processing hides it from you through their compiler, Processing is actually an engine running a Base Class (pApplet). Anything that you write, including classes, inside the Processing application automatically extends this base class that the Processing engine then runs. When you write draw() and setup() functions, you are actually re-defining the draw() and setup() functions that are in the processing base class.-->

비록 Processing에서 이러한 것들이 컴파일러를 통해 숨겨져 있지만, Processing은 사실 부모클래스(pApplet)상에서 동작하는 엔진입니다. Processing 프로그램 내에서는 작성하는 클래스들을 포함한 어떠한 것이든 자동적으로 프로세싱 엔진인 부모클래스를 기반으로 동작합니다. draw()나 setup()함수를 작성할 때, 실제로는 Processing의 부모클래스에 있는 draw()와 setup()을 재정의해서 사용하고 있었던 것입니다.

## OpenFrameworks에서는 어떻게 동작하는가

OpenFrameworks도 Processing과 거의 비슷한 방법으로 만들어졌습니다. 단지 이러한 복잡한것을 숨기지 않았을 뿐입니다. ofApp.h파일을 열어서 \#include "ofMain.h" 의 바로 밑 라인을 확인해보시면 아마도 이런 코드를 보실 수 있을것입니다: 
"class ofApp: public ofSimpleApp{".

이 코드의 의미는, "ofApp클래스는 ofSimpleApp 클래스를 상속받겠다" 라는 뜻입니다. Processing과 마찬가지로요. "public:"의 아래를 보시면 ofApp의 모든 함수들이 나열되어있는데 이것 또한 ofSimpleApp에서 상속받은 것입니다. 우리가 재정의 해서 사용하면 되는 것이지요. 프로세싱과 마찬가지로요.

모든 C++프로그램은 프로그램이 실행될 때 int main()이라는 함수가 호출되도록 디자인 되어있습니다. Java도 마찬가지입니다만, Processing은 이러한 것들을 숨겨두었습니다.

C++은 반드시 int main()으로 시작해야 합니다. 이를 "entry point"라고 하는데, 프로그램의 시작점을 의미합니다.

main.cpp는 이 main()함수를 포함합니다. 또한 이 함수 안에는 창의 크기라든가, 실제 프로그램이 동작할 무한루프 속으로 넘겨주는 코드들이 담겨있습니다. 만약 여러분이 좀 더 이해하고 싶다면 섹션 2.1을 읽어보시기 바랍니다. 하지만 꼭 필요한것은 아니에요. 어쩌면 더 혼란스러울수도 있습니다.

### <!--Main.cpp In-depth-->Main.cpp 의 계층구조

OF의 예제들을 살펴보시면 main.cpp안에 두 \#include 구문이 상단에 있음을 보실 수 있습니다. 이는 processing에서 동작하는것과 같은 역할을 합니다.

첫번째는 아래와 같습니다,

~~~~{.cpp}
    #include "ofMain.h"
~~~~

위 코드는 OpenFrameworks의 모든 라이브러리를 main.cpp 클래스에 추가합니다. 이렇게 함으로써 클래스에서 두가지의 중요한 oF함수를 사용할 수 있습니다. 여러분의 프로그램을 표시할 윈도우를 생성해주는 ofSetupOpenGL()과, 실제 여러분의 프로그램이 동작할 ofRunApp()입니다.

잘 보시면, ofRunApp()은 parameter를 전달하고 있습니다, 

~~~~{.cpp}
    new ofApp()
~~~~

<!-- ofRunApp() is passing an instance of the ofApp class, which happens to be the second thing included up at the top of main.cpp. ( \#include "ofApp.h" ) -->

ofRunApp()은 ofApp 클래스의 인스턴스를 전달하고 있습니다. 이것이 바로 \#include "ofApp.h" 구문에 의해 실행되는 두번째 입니다.

<!-- ofRunApp requires the passed parameter to be a type of ofSimpleApp, which is why when we looked at ofApp.h earlier, we noticed it extended ofSimpleApp.-->

ofRunApp은 ofSimple타입의 parameter를 전달받아야 할 필요가 있습니다.  우리가 ofApp.h을 앞서서 살펴보아야 한다고 말씀드린 이유입니다. 이것이 바로 ofSimpleApp가 상속을 받는 과정입니다.

다시 정리하자면, main.cpp는 ofMain과 ofApp 두가지를 포함하고 있습니다.

<!-- *   It includes ofMain to set the screenSize and to call ofRunApp -->

*	ofMain은 윈도우 사이즈를 지정하고 ofRunApp을 호출합니다.

ofApp은 ofRunApp을 전달받는 클래스를 가지고 있습니다.
또한 ofApp은 ofMain을 포함하고 있습니다
*   It includes ofMain so that any code you write in ofApp can benefit from the OpenFrameworks Library.
    
여러분이 자신만의 클래스를 작성하기 전에, ofApp.cpp 와 ofApp.h에 이해하는것은 Processing의 메인 윈도우를 이해하는데 도움이 많이 될 것입니다. 이 두가지 파일에 코드를 작성하는것이 익숙해질때까지는 Xcode의 다른 부분들에 대해서 알 필요가 없습니다.

## Java 과 C++의 컴파일 과정

<!-- Java and C++ have vastly different compiling processes. It is important to understand the C++ compilation process as each stage of it can produce different types of errors. Knowing what stage produces what type of errors can go a long way towards debugging your project.-->

Java와 C\++의 컴파일 처리과정은 상당히 다릅니다. c\++의 컴파일 처리과정을 이해하는 것은 매우 중요합니다. 컴파일 처리의 각 단계는 다른 타입의 에러를 생성하기 때문입니다. 어떤 단계가 어떠한 타입의 에러를 내는지를 이해하면, 여러분의 프로젝트를 디버깅하는데 많은 도움이 될 것입니다.

<!-- In Java, every time you compile, your entire program is run through and changed into byte code. Then when you run your program, a Java interpreter does runtime compilation to make your program work.  -->

Java는 컴파일을 할 때마다, 프로그램 전체가 byte코드로 변경된 채로 동작합니다. 그리고 나서 프로그램을 실행할 때, 프로그램이 동작할 수 있도록 자바 해석기가 런타임 컴파일을 합니다.

c++은 조금 더 복잡합니다.

*	첫째로, 컴파일러는 프로그램을 전처리합니다. 전처리 과정에서는 모든 코드에서 \#include 문을 읽어 코드 조각들을 복사하고 붙여넣어 거대한 하나의 파일로 만듭니다. (\# 심벌로 시작되는 구문들은 전처리기에서 읽도록 되어있습니다.)

*	두번째로, 컴파일러는 코드전체를 해석(parse)하여 코드들이 문법에 맞는지 확인하고, 어셈블리어(상당히 낮은 수준의 언어)로 해석하기 위해 코드를 쪼개 해석트리(parse-tree)에 집어넣습니다.

*   세번째로, 어셈블리어는 기계가 이해할 수 있는 언어로 해석되어 object파일로 변환됩니다.

*   마지막으로, object파일은 실행파일인 .exe나 .app파일과 연결(link)됩니다.
    
C++의 컴파일 스타일의 한가지 장점은 OpenFrameworks와 같은 거대한 프로그램들을 컴파일할 때 두드러집니다. 코드의 변경없이 컴파일을 하면 다시 컴파일을 하지 않습니다. 처음으로 컴파일을 시도하면 아마도 30초에서 1분의 시간이 걸릴것입니다. 그 다음 ofApp.cpp의 일부를 변경하고 컴파일을 다시 해보면, 컴파일은 엄청 빨라집니다. 이는 xCode가 openFrameworks라이브러리 전체를 컴파일할 필요 없이, 코드의 변경된 부분만 컴파일 하기 떄문입니다.

_**역자 주 : 좀 더 자세한 사항을 알고 싶으시면 [이 문서](http://ko.wikipedia.org/wiki/자바와_C++의_비교#.EB.9F.B0.ED.83.80.EC.9E.84)의 런타임 부분을 읽어보세요.**_

## C++에서 클래스는 어떻게 동작하나요? (파일이 두개!?)

C++ 클래스는 두개의 파일로 이루어져 있습니다.
It helps to think of these two classes as a recipe. 

헤더파일 (.h)은 내용물의 리스트와 같으며 아래와 같은것들을 포함하고 있습니다:

*   헤더파일이 여러번 참조되는 상황을 방지하하기 위한 전처리 구문
*   다른 클래스를 읽는 include 구문
*   클래스 상속 구문
*   클래스의 로컬 변수들
*   클래스에 포함될 함수들의 원형
*   함수들과 변수들에 대한 보안 세팅 (public, private, protected )
    
바디 파일(.cpp)은 내용물의 리스트에 관한 상세 설명과 같으며 아래와 같은 내용들을 포함합니다:

*   참조할 헤더파일을 알려주는 include 구문
*   모든 함수 원형에 관한 실제 동작 코드들
    
더 알고 싶으시면, ofApp.cpp와 ofApp.h파일을 열어보시기 바랍니다.

### ofApp.h

ofApp.h의 모든 코드는 \#ifndef라는 if 조건문으로 둘러싸여 있습니다. 이 구문은 컴파일의 전처리 단계를 위한 명시(explicitly)로 디자인 된 것입니다. 기본적으로 컴파일을 하기 전, 컴파일러는 전처리 단계에서 코드를 훑으면서 include 구문에 따라 코드를 복사하고 붙이는 과정을 거칩니다. 만약 여러 위치에서 같은 .h파일(헤더파일)을 여러번 include 하게 되면, 컴파일 과정에서 문제가 발생하게 됩니다. \#ifndef는 컴파일러에게 **"변수명을 뭐라고 정했건 간에(예제에서는 \_OF\_APP) 코드의 다른 부분에서 이미 선언되어 있다면, 다시 중복해서 선언하지 마"** 라고 말하는 것과 같습니다. 사실 이것은 코드를 관리하는데 편리함을 제공하는 방법이기도 합니다. 또한 이것은 또한 여러분이 만들 클래스를 include하는데 있어서 좋은 예제이기도 합니다(당연히 다른 변수명을 사용해야겠지요).

이후에는 OpenFrameworks의 모든 기능들을 가져오도록 \#include 구문이 사용되었습니다.

그리고 나서, "class ofApp : public ofSimpleApp{"가 보입니다. 이는 Java의 클래스 선언 구문과 아주 비슷합니다. 둘을 한번 비교해볼까요?

C++  :
class \[className\] : \[privacy\] \[extendedClass\]

JAVA/P5:
\[privacy\] class \[className\] extends \[extendedClass\]

이어지는 클래스 정의는 .h파일 자체를 의미합니다. 바로 클래스 자신이지요. 클래스는 privacy 블럭으로 쪼개집니다. 여기서는, public: 블럭밖에 없네요. 하지만 원하신다면 private이나 protected 블럭을 추가할 수도 있습니다. Java에서는 public이나 private 함수및 변수들을 어떠한 순서로 정의해도 됩니다만, C++에서는 블럭으로 묶어주어야 합니다.

C++에서는 클래스를 사용하기 전에 반드시 헤더에 클래스를 정의해야 합니다. 아주 중요한 사항입니다. (클래스 로컬 변수처럼 말이죠) 이것을 프로토타이핑이라고 부릅니다. 처음에는 상당히 귀찮지만, 모든 함수와 변수들을 헤더파일에 정의하면 헤더파일은 마치 클래스에 대한 문서가 되어 읽기 쉬워지기 때문에, 결국에는 다른사람이 작성한 클래스나 openFrameworks라이브러리들을 파악할 때 상당히 유용합니다.

클래스의 끝이 "};", 즉 curly bracket과 세미콜론으로 끝나다는 것은 매우 중요합니다. "}"로만 끝나는것이 아니에요! 또한 .h파일의 최상단이 \#ifndef으로 시작된것과 마찬가지로 파일의 끝이 \#endif로 끝난다는 것도 역시 중요합니다.

C++의 클래스에 관한 추가 정보는 아래에서 확인하실 수 있습니다:
[http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html][48]

### ofApp.cpp

이 파일이 바로 실제 클래스를 위한 코드들이 작성되는 곳입니다. 클래스 함수를 작성하는 문법은 Processing과 살짝 다릅니다.

C++  :
\[ReturnType\] \[class\] :: \[functionName\] ( \[type\]\[variableName\]..etc )
\[리턴형\] \[클래스명\] :: \[함수명\] ( \[변수형\]\[변수명\]..등등 )

JAVA/P5:
\[ReturnType\] \[functionName\] ( \[type\]\[variableName\]..etc )
\[리턴형\] \[함수명\] ( \[변수형\]\[변수명\]..등등 )

## 아놔 \* 이게 대체 뭐람? (포인터에 대한 아주 기초적인 소개).

포인터는 정말로 애매모호하고 C++에서 가장 골치아프면서 어려운 부분입니다.
저는 여기서 포인터에 대해 아주 기본적인 설명을 하고자 합니다. 이것들이 대충 어떠한 녀석들인지 이해하기엔 충분할 것이고, 또 Java와는 어떤 관계가 있는지도 알 수 있을 것입니다. 하지만 만약 여러분들 중에 포인터가 어떻게 동작하고 어떻게 쓰여지는지 완벽하게 알고 싶으신 분이 계시다면, 훌륭하고 방대한 아래 튜토리얼을 정독해 보실것을 추천해 드립니다:

[http://www.cplusplus.com/doc/tutorial/pointers.html][51]

One of the largest differences between C\+\+ and Java is that in Java, except for the basic data-types (byte, short, int, long, float, double, boolean, and char), all values are passed by reference. One important note is that Processing copies Strings by value, whereas C++ copies them by reference like all other classes.

<!-- C++과 Java의 가장 큰 차이점 중 하나는 바로, 자바에서는 기본 데이터형(byte, short, int, long, float, double, boolean, char)중 하나가 없다는 것입니다. 이것이 바로 참조에 의한 전달인데요. Processing에서는 String(문자열을) 복사하지만, C++에서는 참조에 의해 복사한다는것입니다. 마치 모든 클래스를 다루듯이 말이죠.  -->

### 값 vs. 참조 (Value vs. Reference)

값과 참조의 차이점을 이해하려면, 우선 컴퓨터가 어떻게 RAM(메모리)에 변수들을 저장하는지를 이해해야 합니다.  

아래와 같이 코드를 작성하면:

~~~~{.cpp}
    int num = 5;
~~~~

<!--What the computer does is it goes to the place in its memory that is set up to store integers, picks an empty spot with the right number of bytes to store an integer, places the number 5 in that spot, and then sends the address of that spot to your program which stores it in the "num" variable.-->

컴퓨터는 우선 컴퓨터의 메모리에 정수형 변수를 저장할 위치를 찾아, int를 저장하기에 알맞은 byte의 크기만큼의 빈 위치를 지정한 다음, 해당 위치에 정수 5를 위치시킵니다. 그 다음 저장 변수 num이 가질 정수 5가 실제로 저장된 위치의 "메모리주소"를 프로그램에게 알려줍니다.

<!--It might be easier to think of the spot in memory that num references as a box containing the number 5:-->

변수 num가 참조하는(reference) 메모리의 위치를 숫자 5가 저장되어있는 상자라고 생각하시면 아마 훨씬 이해가 빠를 겁니다.

number 5:
5
// 값이 저장됨

2591
// 메모리의 주소

  
<!--and as num as knowing the address this box-->

그리고 변수 num은 이 상자의 주소를 알고 있는 것이지요.

num:
2591
// 메모리의 주소

<!-- Because Processing knows you're using an int and knows to pass it by value, when you ask for what num is with the line print(num), it prints the value of the address that num is referencing.-->

Processing은 여러분이 int형을 사용하고 그것을 값으로 전달하는 것을 알고 있기 떄문에, 'print(num)' 명령으로 num이 무엇이냐고 물어보면, 변수 num이 참조하고 있는 메모리에 담긴 실제 값을 출력합니다.

아래 코드를 Processing에서 작성하고 실행해보세요:

~~~~{.cpp}
    void setup()
    {
    	int num = 1;
    	addOne(num);
    	print(num);
    }
    
    void addOne(int num)
    {
        num++;
    }
~~~~

<!-- Unsurprisingly, the program prints "1". We know that this is because when you pass num to a function, the function makes a copy of num and doesn't modify the original. This is called passing by value. -->

놀랄것도 없이, 프로그램은 당연히 "1"을 출력합니다. 함수에 변수 num을 전달했기 때문에 이렇게 동작할 것이라 당연히 예상할 수 있습니다. 함수는 num를 복사하고, 원본을 수정하지 않습니다. 이것을 값에 의한 전달이라고 합니다.

  
<!-- Lets look at another example. Here, instead of passing an integer, we will try passing a class containing an integer. Try typing this code into Processing: -->

다른 예제를 한번 살펴보죠. 정수를 전달하는 대신에, 정수형을 포함하고 있는 클래스를 한번 전달해볼려고 합니다. 아래 코드를 Processing에서 작성하고 실행해 보세요:

~~~~{.cpp}
    class Test
    {
        int num=0;
    }
    
    void setup()
    {
        Test test = new Test();
        test.num=1;
        addOne(test);
        print(test.num);
    }
    
    void addOne(Test test)
    {
     	test.num++;
    }
~~~~

  
<!-- This time it printed "2". What's going on here? -->

이번에는 이상하게 "2"를 출력합니다. 대체 어떻게 된걸까요?

<!--What happened is that because we created a class Test, Processing recognized that it was not a basic data-type (even though the class contained an int which IS a basic data-type), and passed it to the function by reference. Reference means that instead of passing a copy of the entire Test object to the addOne function, it sent only the address in memory of where the class was stored. 
-->

여기서는 앞의 예제와 다르게 Test클래스를 생성했기 때문에, (설령 클래스가 int라는 일반적인 데이터형을 포함하고 있다 하더라도)Processing은 이것을 일반적인 데이터형으로 인식하지 않습니다. 그리고 이것을 함수에 참조형(Reference)으로 전달하였습니다. 여기서 참조(Reference)란, addOne() 함수에 Test 오브젝트 전체의 복사본으로 전달하는 대신, 클래스가 저장되어있는 메모리의 주소만 전달했다는 의미입니다.

<!-- Let's look at boxes again.-->

박스를 한번 더 살펴보죠
test:
52498
// 메모리의 주소

52498:
1
// test.num

<!-- So when test is passed through addOne(), really just 52498, or whatever the actual memory address of test's data is passed. Because of that, when test's num is incremented, it is actually changed. No copy is ever made.-->

따라서 text는 addOne()에 전달될 때, 실제로는 52398(실제 text의 데이터가 들어있는 메모리 주소)로 전달되었던 것입니다. 이러한 이유로 test의 num이 증가할때, 실제 값이 변경되었던 것이지요. 복사본으로 전달될때는 이렇지 않습니다.

<!-- Java does this because if it were to pass entire objects around constantly everything would slow to a crawl. The basic data-types are small enough to get passed by value, but everything else is passed by reference. -->

Java가 이렇게 동작하는 이유는, 만약 오브젝트 전체를 복사본으로 전달하게 되면 성능저하가 있기 때문입니다. 기본적인 데이터형은 크기가 작기 때문에 값에 의해 전달되지만, 다른것들은 참조형으로 전달됩니다.

### & 와 \*

<!--C++ differs from Java in that you need to explicitly state whether you are passing something by value or by reference. You can also define when a variable will behave as if it contains actual data and when a variable will only contain a pointer to data. You can even make an int that behaves like the Test class did above. This is all done with the & (referencing) and \* (dereferencing) symbols.-->

C++은 Java와 다르게 값으로 전달할건지, 참조로 전달할것인지를 확실하게 명시할 필요가 있습니다. 이 뿐만 아니라 변수를 정의할 때 실제 데이터를 저장하게 할것인지 아니면 데이터를 가리키는 포인터를 담을 것인지 정할 수도 있습니다. 심지어 int형이지만 위 예제에서의 Test클래스를 가리키게 할수도 있습니다. 이러한 모든 것들이 &(참조,레퍼런스 / referencing) 과 \*(포인터, 디레퍼런스 / dereferencing) 심벌로 가능합니다.

<!-- the & symbol is used to acquire the memory address of a variable or function, so for example: -->

& 심벌은 변수나 함수의 메모리 주소를 얻어올 때 사용합니다. 아례의 예와 같이요 :
~~~~{.cpp}
    b=1;
    a = &b;
~~~~

means, a is now equal to (or points to) the memory address of b, (and not the value of b). At this point, 
a는 b의 메모리 주소를 의미합니다.(하지만 실제로 b의 값을 가지는 것이 아닙니다.) 다른말로 b를 가리킨다고(pointing) 하죠. 
자 여기서,

~~~~{.cpp}
    a++;
~~~~

<!-- would make a equal to the next memory address after b.-->

이렇게 코드를 입력하면, a는 b의 다음 메모리 주소값을 갖게 됩니다. (b의 메모리 주소 + 1)

<!-- the \* symbol is used to acquire the value stored in an address. So, -->

\* 심벌은 메모리주소에 담긴 값을 얻어올때 사용합니다. 따라서,
~~~~{.cpp}
    *a++;
~~~~

<!-- would increment the value stored in a, and therefore, b would now equal 2\.-->

는 a에 담긴(즉 b) 값이 증가하게 되므로, b는 2가 됩니다.

<!-- But how do I declare a variable to point to an address?
To do this, you use the \* symbol. This variable is called a pointer. Because different types of variables take on specific numbers of bytes, it is important to declare pointers of the same type as what they are pointing to, e.g. integer pointers for integers, float pointers for floats, etc. -->

하지만 어떻게 주소를 가리키는 변수를 선언할수 있냐고요?
그러기 위해 \*를 사용합니다. 이러한 변수를 '포인터'라고 합니다. 변수형마다 메모리를 사용하는 byte의 크기가 다르기 때문에, 포인터를 선언할때, 포인터 변수가 가리키는 메모리에 들어있는 실제 데이터형을 표기하는것은 매우 중요합니다. int를 위한 포인터는 int형 포인터를, float를 위한 포인터는 float형 포인터가 되는것이지요.

다음은 포인터를 사용하는 예제입니다:

~~~~{.cpp}
    int x;
    int *ptr;
    
    x=5;
    ptr = &x;
    *ptr = 10;
    
    // 이제 x는 10과 같습니다.
~~~~

### 이걸 어디에 쓸수 있나요?

<!-- Initially, you will use pointers to pass arrays back and forth through functions. This can be seen in the movieGrabberExample, where a pointer is used to access the pixels from the video grabber. -->

기본적으로, 함수에 배열을 전달할때 사용하게 됩니다. 이는 movieGrabberExample 예제에서 보실 수 있는데, video grabber에서 픽셀에 접근할때 아래와 같이 포인터를 사용합니다.
~~~~{.cpp}
    ( unsigned char * 	videoInverted;)
~~~~

<!-- This works because when you refer to an array in C++ without the \[\]'s you are actually referring to an address in memory. The \[ \]'s work as a dereferencing operator, or, a "\*". -->

이는 c++에서 배열을 참조하여 사용할때, \[ \]없이도 메모리의 주소를 참조하기 떄문에 가능합니다. \[ \]는 디레퍼런스 연산자로 동작하는데, 이는 "\*"와 같은 의미입니다.

At runtime, your processor multiplies the number inside of the \[\]'s (your index) by the number of bytes your data-type takes up in memory to figure out how far it must jump in memory to reach that index of your array.

<!-- So to pass an array in C++ you must pass it without the \[\]'s, and the receiving function must be aware it is receiving a pointer: -->

따라서 C++에서 배열을 전달할때는, \[ \]없이 전달해야하며, 전달받는 함수는 반드시 포인터로 전달받아야 합니다 :

    [functionName] ( [variable type] * [varName]){
    }
    

<!-- To learn more about the infinite complexities of pointers, I recommend visiting the site I referenced at the top of this section. -->

포인터는 정말로 복잡한 녀석입니다. 좀더 공부하고 싶으신 분들은, 상위 섹션에서도 한번 소개해드렸지만, 아래 사이트를 한번 방분해보시길 권장합니다. 
( [http://www.cplusplus.com/doc/tutorial/pointers.html][51] )

### 기초적인 데이터 형

Java와 C++은 대부분의 기본적인 데이터형을 공유하고 있습니다:
byte, short, int, long, float, double, and char. 
(Boolean형은 C++에도 있고, processing과 마찬가지로 똑같이 동작합니다만, 단지 'bool'이라고 불립니다 )

하지만 C++은 unsigned라는 추가적인 데이터형 세트를 갖고 있습니다.
unsigned byte, unsigned short, unsigned int, unsigned long, unsigned float, unsigned double, unsigned char.

<!-- Unsigned means that instead of running positive and negative, (e.g. char can be set to any value between -128 and 127), these variables have no sign. (e.g. unsigned char can be set to any value 0-255).-->

Unsigned란, 양수와 음수를 사용하는 대신에 (참고로 char형은 -128 ~ 127사이의 값을 갖습니다), 부호를 갖지 않는 다는 의미입니다 (unsigned char형은 0 ~ 255의 값을 갖습니다).

#### Processing에서의 문자열 예외

<!-- One major difference in the basic data-types is that Processing's string type is "String" while C\+\+ uses a lowercase "string". But more importantly, C\+\+\'s string type, when set equal to another string type refers to it by reference (does not make a copy).-->

기본적인 데이터형에서 가장 큰차이점은 Processing에서의 문자열 타입은 "String"이고, C++에서는 앞글자가 소문자인 "string"이라는 것입니다. 하지만 더 중요한 사실은, C++의 문자열형은 = (assign) 연산자를 사용할때 값에 의한 전달이 아니라 참조에 의한 전달을 한다는 것입니다. (복사를 하는것이 아니에요!)

_**메모 : (theo) 이게 사실인지는 잘 모르겠어. 내생각엔 C++ 역시 복사인것 같아. 그래서 이 예제는 어쩌면 틀린걸지도 몰라. **_

_**메모 : (nathan) 내가 테스트해봤어. 이건 분명히 잘못되었어. 출력은 "yes"였어. 또한 a.c\_str(a)가 아니라 a.c|_str()이어야 돼**_

_**역자 주 : 문서 제작 과정중에 개발자들이 테스트를 해 봤나 봅니다. 코멘트가 달려있네요. 참고해주시기 바랍니다**_


<!-- So, in processing: -->

따라서 Processing에서는 :

~~~~{.java}
    String a = "yes";
    String b = a;
    b = "no";
    
    print(a);
~~~~

<!-- will print "yes" -->

"yes"를 출력하지만,

C++에서는,

~~~~{.cpp}
    string a = "yes";
    string b = a;
    b = "no";
    printf("%s \n", a.c_str(a));   // 콘솔에 출력하는 방법은, "6.3.3 콘솔에 출력하려면 어떻게 해야하나요?"" 를 읽어주세요
~~~~
    

<!-- will print "no".-->

"no"를 출력할 것입니다.

## PImage, updatePixels() 과 ofTexture, pixels\[\]

<!-- When you draw in openGL (OF draws using the GLUT library, which in turn uses openGL, Processing draws to openGL optionally, if you decide to when declaring your window size), any pixel data that you want to put on the screen must be preloaded into your RAM before you can draw it. Loading pixel (bitmap) data to RAM is called loading your image into a texture.-->

openGL에서 그림을 그릴 때(oF는 openGL을 사용하게 해주는 GLUT라이브러리를 사용하여 그립니다. Processing은 그림을 그릴때 openGL을 옴션으로 두고 있는데, 윈도우의 사이즈를 지정할 떄 결정할 수 있습니다), 화면상에 뿌려질 모든 픽셀 데이터는, 실제로 그려지기 전에 반드시 RAM(메모리)에 미리 로드되어 있어야 합니다. 픽셀(bitmap)데이터를 RAM에 불러오는것을 가리켜, "여러분의 이미지를 텍스쳐로 불러온다" 라고 합니다.

<!-- Processing has a number of ways to solve this texture problem that hide what you are actually doing from you.-->

Processing에서는 위에서 언급한 실제 동작들을 숨김으로써, 이러한 텍스쳐 관련 문제들을 해결하는 몇가지 해결책을 가지고 있습니다.

<!-- The first is the PImage object. A PImage is a texture object that has a built in color array that holds pixel values so that you can access the individual pixels of the image that you have loaded in. Images cannot draw themselves exactly, but they can be drawn by the image() function.-->

첫번째는 바로 PImage 오브젝트입니다. PImage는 픽셀 값을 갖고 있는 color 배열로 만들어진 텍스쳐 오브젝트입니다. 그렇기 때문에 불러온 이미지의 개별 픽셀에 대해 접근이 가능한 것입니다. 실제로는 이미지 스스로가 자신을 그려낼 방법이 없고, image() 함수에 의해 그려집니다.

~~~~{.java}
    PImage myPImage; // 변수를 위한 공간 할당 (allocate space for variable)
    myPImage = loadImage("sample.jpg"); // ram상에 픽셀들을 위한 공간을 할당하고,  sample.jpg를 디코드하여 해석된 픽셀데이터를 불러온다. 
    image(myPImage,100,100); //스크린의 100, 100 위치에 텍스쳐를 그린다.
~~~~
    

<!-- _I should note that its possible that the image() function actually loads the pixels into the ram instead of the PImage, but I dont know enough about the tech behind Processing to say for sure if this is the case or not._ -->

_필자는 여기서 PImage 오브젝트가 아닌 image()함수가 실제로 픽셀을 메모리에 불러온다는 것을 강조하고 싶습니다만, 사실 Processing의 기술적인 배경에 대해선 충분히 알고 있지 않기 때문에 이것이 확실한것인지 아닌지는 확신할 수 없습니다._

<!-- If you want to access the individual pixels of the screen itself, however, you use a different function altogether. You first call loadPixels(), make your pixel changes, and then call updatePixels() to make your changes appear.  -->

하지만, 만약 화면 스스로의 픽셀값들에 대해 접근하고 싶다면, 다른 함수를 함께 사용해야만 합니다. 우선 loadPixels()함수를 호출하고, 픽셀을 변경한 다음, updatePixels()를 호출해야 변경된 것들이 적용됩니다.

<!-- This is slightly confusing, because what is actually happening here is the same as what happened above with the PImage: Processing is loading your pixels from the screen into a texture, essentially a PImage, and then drawing that texture to the screen after you update it. For some reason, however, they chose not to use the same function for both. -->

이건 살짝 혼란스럽습니다. 실제 수행하는 일이 위에서 언급한 PImage와 같기 때문입니다: Processing은 스크린에서 픽셀을 불러와 텍스쳐로 불러오고, 업데이트 한 이후에 스크린에 텍스쳐를 그리는 것입니다. 그러나 어떠한 이유로, 같은 함수를 사용하지 않기로 한것입니다.

<!-- OpenFrameworks handles this a little differently (and a little bit better in my opinion). Instead of having two different methods, the ofImage object loads images from files, _and_ images from the screen. Additionally, ofImage can draw itself and needs no separate function to do this. -->

openFrameworks는 이것을 약간 다른 방식으로 다룹니다(그리고 제 생각에는 좀더 나은 방식인 것 같네요). 서로 다른 두 메서드 대신, ofImage 오브젝트는 파일에서 이미지를 불러올 수도 있고, 화면에서도 이미지를 불러옵니다. 이 둘은 별도의 함수로 분리되지 않고 자신 스스로를 그릴 수 있습니다.

<!-- The OF code for the example above with myPImage looks like:-->

위에 언급한 myPImage 예제를 위한 oF의 코드는 아래와 같습니다 :
~~~~{.cpp}
    ofImage myImage; // 변수를 위한 공간 할당
    myImage.loadImage("sample.jpg"); // 메모리에 공간을 할당하고, jpg를 디코드하여 픽셀을 불러온다
    myImage.draw(100,100);	
~~~~

<!-- If you wanted to change the pixels on the screen, you would also use an ofImage.-->

화면상에 픽셀을 변경하고 싶다면, 역시 ofImage를 사용하면 됩니다.

~~~~{.cpp}
    ofImage theScreen; // 변수 선언
    theScreen.grabScreen(0,0,1024,768); // 화면의 0, 0부터 1024, 768까지의 사각영역을 픽셀로 불러온다. 이는 loadPixels()와 같은 역할을 한다.
    // 화면에서 픽셀을 편집한다.
    theScreen.draw(0,0); // updatePixels()와 같음 
~~~~

<!-- But how do I edit the pixels of something that is in the ram you may ask? The short answer is you cannot. Once something is in the RAM (in an ofTexture), you cannot access it anymore.  -->

하지만 여러분중에는 "어떻게 메모리상에 있는 무언가의 픽셀을 수정할 수 있나요?" 라고 질문하시는 분도 있을겁니다. 간단히 대답하자면 불가능합니다. 한번 메모리에 올라가면 (ofTexture안에 있지요), 더이상 접근할 수 없습니다.

<!-- You can edit the pixels of an ofImage because ofImages contain two data structures. One of these is an array of Unsigned Characters which represent all of the colors of every pixel, and the other is an ofTexture, which is used to upload those pixels into the ram after changes. -->

ofImage는 두가지 데이터 구조를 가지고 있기 떄문에 ofImage의 픽셀은 수정이 가능합니다. 하나는 모든 픽셀의 컬러값을 의미하는 Unsigned Char형 배열이고, 다른 하나는 변경된 이후 메모리에 이 픽셀들을 업로드하는데 사용되는 ofTexture입니다.

<!-- You can actually turn off this texture in an ofImage to save RAM if you know you won't ever have to draw what you are loading to the screen. This could be useful if you only need to load an image to access pixel color values in it, or if you are taking a screenshot that you will save to your hard drive but never draw.  -->

만약 불러온 이미지를 사실상 화면상에 그릴 일이 없다면 메모리를 절약하기 위해 ofImage의 텍스쳐를 끌 수도 있습니다. 이는 이미지의 픽셀값에만 접근하기위해 파일을 불러올 때나, 혹은 화면을 캡쳐해 하드드라이브에 저장만 하지 화면에 그려낼 필요가 없을때 유용합니다.

이 문서를 한번 읽어보세요: [http://www.openframeworks.cc/documentation\#ofImage-setUseTexture][58]

### Color 오브젝트 없이 어떻게 픽셀값들이 저장되나요?

<!-- Pixel values are stored as a series of Unsigned Characters. An Unsigned Character is a fancy way of saying a byte value between 0 and 255 inclusive. Every object in OF that can return a pixel array ( getPixels() ), will return you an array of unsigned characters. Because it takes three unsigned characters to denote a color (one for each of the red, green, blue, channels), this array's length will be three times the number of pixels inside of it and structured like: -->

픽셀 값들은 unsigned char 시리즈로 저장됩니다. unsigned char는 byte값을 0에서 255 사이의 값으로 저장할 수 있는 아주 편리한 방법입니다. oF의 모든 오브젝트들은 픽셀 배열로 리턴이 가능한데(getPixels()), 이때 unsigned char의 배열이 리턴됩니다. 세 unsigned char로 color을 표기할 수 있기 때문에(각각 red, green, blue 채널을 나타냅니다), 배열의 길이는 "총 픽셀 갯수 x 3"이 됩니다. 배열의 내부 구조는 아래와 같습니다 :

~~~~{.cpp}
    {pixel_1_Red, pixel_1_Green, pixel_1_Blue, pixel_2_Red, pixel_2_Green, pixel_2_Blue....}
~~~~

<!-- To access a color of a specific pixel:-->

특정 픽셀의 컬러에 접근하기 위해서는 아래와 같이 작성하면 됩니다.:

~~~~{.cpp}
    unsigned char *	myPixels; // unsigned char형 포인터를 생성한다 
    myPixels = myOFImage.getPixels(); // 포인터를 픽셀 배열의 시작점을 가리키도록 한다.
    int colorIndex = y*(myOFImage.width*3)+x*3; // yPos * width * 3 + xPos * 3 = red 채널의 위치
    ofSetColor(myPixels[colorIndex],myPixels[colorIndex+1],myPixels[colorIndex+2]); 
    //sets the color of each channel by going to the successive two values in the array after that of the red channel. 
~~~~

## C++의 일반적인 문제점 / 기타 주제 

### 암묵적인 데이터 형변환을 기대하시나요?

<!-- One big surprise that comes with C++ is that it doesn't do implicit data conversion.
A good example of this is trying to print an integer. -->

C++에서 발견할 수 있는 놀라운 사실중 하나는 암묵적 데이터 형변환이 불가능하다는 점입니다.
int형 변수를 출력하는 좋은 예제입니다.

~~~~{.cpp}
    int num = 5;
    printf(num +"\n");
~~~~

<!-- will yield an error.-->

위 코드는 에러를 발생합니다.

<!-- This is because printf only prints strings and chars, and num is neither one of these.
To convert any non-string or non-char to a string, use the ofToString() function.-->

이는 printf 함수가 오직 문자열과 문자형만을 출력할 수 있기 떄문입니다. num변수는 둘중 어느 하나도 아니죠.
비 문자열 또는 비 문자형 데이터를 문자열로 변환하기 위해서는 ofToString()함수를 사용합니다.

### 윈도우 사이즈 변경하기 

<!-- Window size is set intuitively in main.cpp. If you open it up, the comments will show you clearly how to change the size or go to fullscreen mode. -->

윈도우 사이즈는 main.cpp에서 세팅할 수 있습니다. 파일을 직접 열어보시면, 윈도우 사이즈를 어떻게 변경할것인지, 또는 전체화면으로 변경할지를 알려주는 주석을 보실 수 있을것입니다.

### Update() 와 Draw()?

Unlike Processing, OF contains two methods that are run every loop through of your program, Update() and Draw(). 

Processing과 다르게, openFrameworks는 프로그램이 실행되는동안 두가지 함수가 매번 반복해서 동작합니다. update()와 draw() 두 함수입니다.

<!-- It is good practice to do all of your calculations in the Update() function and reserve Draw() for simply showing results on the screen. This prevents any large slowdowns that might occur during a draw function that could be too complicated. Instead of getting halves of images drawn or screen-tearing, you simply get a low framerate. -->

update()함수에서 모든 계산처리를 하도록 맡겨두고, draw()는 단순히 화면상에 결과를 보여주는 역할만 하도록 지정 해 주는것입니다. 이는 자칫 draw()가 복잡해짐으로써 발생할 수 있는 속도 하락을 방지합니다. 이렇게 함으로써, 화면출력의 절반만 건진다거나, 화면의 일그러짐 없이, 낮은 framerate를 유지할 수 있습니다.

<!-- Additionally, I should mention that if you do any heavy lifting in your project (e.g. loading in images, or loading anything at all from a file really), you should do it in your setup() function if possible. Update() and Draw() run in a loop, and because of that you should only include code in them that has to run every frame. If something only has to run once, it should probably be in Setup(). -->

추가적으로, 만약 프로젝트에 무언가 엄청나게 무거운 작업(이미지를 불러온다거나, 파일에서 실제로 무언가를 불러오는것 등)을 할때에는, 가능한 한 반드시 setup()함수내에 작성하라고 말씀드리고 싶습니다. update()와 draw()함수는 프로그램이 종료될때까지 무한반복해서 동작하기 때문에, 매 프레임 동작하지 않는 곳에 코드를 작성해야 할것입니다. 한번만 동작하는 코드를 작성할 때 역시, setup()에 작성해야 합니다.

### 콘솔에 출력하려면 어떻게 해야하나요?

<!-- For printing to the console, you have two options. The first is printf, which is robust but a bit complicated, and is included by default in openframeworks. -->

콘솔에 출력하는 방법은 두가지가 있습니다. 하나는 조금 복잡하지만 견고한 printf입니다. 이는 openframeworks에 디폴트로 포함되어있습니다.

<!-- The second is iostream, which is simpler, but less robust, and not included by default. -->

두번째는 더 단순한하고 유연한 iostream이지만, 기본적으로 포함되어있지 않습니다.

#### printf

<!-- If you want to use printf to print to the console, this is a good tutorial on how it works:-->

콘솔에 출력하기 위해 printf를 사용하길 원하신다면, 아래 링크를 확인해주시기 바랍니다. printf가 어떻게 동작하는지 알려주는 훌륭한 튜토리얼입니다 :
[http://www.cplusplus.com/reference/clibrary/cstdio/printf.html][66]

  
#### iostream

<!-- Another option for printing to the console is iostream. This is a very old c++ library that lets you print to the console very easily and will implicitly convert many variable types for you so you don't have to use ofToString().  -->

콘솔에 출력하는 다른 옵션으로, iostream이 있습니다. 이것은 아주 오래된 C++라이브러리로써, 콘솔에 아주 쉽게 출력하게 해줄 뿐만 아니라, ofToString()의 사용없이도 다양한 데이터형에 대해 암묵적인 형변환을 제공합니다.

<!-- To use iostream you first need to include it at the top of your .cpp file -->

iostream을 사용하기 위해서 해야할 젓번째 일은 .cpp파일 최상단에 아래 코드를 삽입하는 것입니다.

~~~~{.cpp}
    #include <iostream>
~~~~

_** 역자 주 : 2008년도에 만들어진 문서라서 그런지 이부분은 현재 버전과 조금 다릅니다. xCode상에서는 iostream 을 include하지 않더라도 동작합니다 **_

<!-- Note that in some compilers, specifically very old ones, you will need to include <iostream.h\> instead of just <iostream\>. This is due to updates in the c++ standard language library (std) in recent years. A more detailed explanation can be found at: -->

어떠한 컴파일러에서는, 특히 오래된 컴파일러에서, <iostream\>대신 <iostream.h\> 를 include해야 합니다. 이는 근래의 c++의 표준언어라이브러리(STL : standard language library) 업데이트 때문입니다. 보다 자세한 설명은 아래 링크에서 확인하실 수 있습니다.:
[http://members.gamedev.net/sicrane/articles/iostream.html][68]

<!-- Actually using iostream is extraordinarily easy.-->

사실 iostream의 사용은 너무나도 엄청나게 쉽습니다.

Processing에서 콘솔에 출력하는 코드는 아마도 아래와 같을 것입니다:

~~~~{.java}
    int i = 10;
    String s = "Hello!";
    boolean b = false;
    
    println(i+" "+s+" "+b); // 변수를 출력하고, 줄바꿈을 한다.
    print(i+" "+s+" "+b); // 변수를 출력하지만, 줄바꿈을 하지 않는다.
~~~~

콘솔에서의 출력은 아래와 같을 것입니다.

~~~~{.java}
    10 Hello! false
    10 Hello! false
~~~~

iostream을 사용한 같은 역할을 하는 C++ 코드는 아래와 같습니다:

~~~~{.cpp}
    int i = 10;
    string s = "Hello!";
    bool b = false;

    cout<<i<<" "<<s<<" "<<b<<endl; // 변수를 출력하고, 줄바꿈을 한다.
    cout<<i<<" "<<s<<" "<<b;       // 변수를 출력하지만, 줄바꿈을 하지 않는다.
~~~~


콘솔에서의 출력은 아래와 같을 것입니다.

~~~~{.cpp}
    10 Hello! 0
    10 Hello! 0
~~~~

<!-- Note that with iostream, unlike in processing, a false boolean is represented by a '0' and not "false", and a true boolean is represented by a '1'. -->

출력 결과를 잘 살펴보면, Processing과 다르게, false boolean값이 'false'가 아니라 '0'으로 나타납니다. 반대로 true boolean값은 '1'로 나타납니다.

<!-- Also note that in Java, ending or not ending the line after you print is accomplished by which function you pick, print() or println(), whereas in c++ with iostream, it is controlled by whether or not you put the 'endl' keyword at the end of your cout statement. -->

Java에서는 줄바꿈으로 끝나느냐 아니냐의 결정이 print(), println() 중 어떤 함수를 선택하느냐에 따라 달라짐을 알 수 있습니다. C++은 iostream에서는 cout 구문의 끝에 'endl' 키워드를 넣느냐에 따라 달라집니다.

### Smoothing not working on filled shapes?

<!--If you are drawing a filled shape, e.g. with ofBeginShape(), even if you have called ofEnableSmoothing(), you will notice that the edges of the shape have not been smoothed. This is because GLUT, the library that OF uses for openGL management, doesn't have support for true full-screen graphics, and therefor can't run full-screen anti-aliasing, which is what would smooth your shapes. -->

가령 ofBeginShape()함수를 사용하여 채워진 도형을 그릴때에는, ofEnableSmoothing()함수를 이미 호출하였다 하더라도 도형의 경계가 매끄럽지 않습니다. 이는 oF에서 openGL을 관리하는 GLUT떄문입니다. GLUT은 풀스크린 그래픽을 완벽하게 지원하지 않습니다.

<!-- An easy workaround for this is to simply draw your shapes twice, the first time filled, and the second time not filled, so that OF draws lines, which it software anti-aliases.-->

이문제를 해결할 가장 단순한 방법은 도형을 두번 그리는겁니다. 한번은 채워진 도형을, 그리고 윤곽선만을 그리는겁니다. 윤곽선 라인은 oF가 그리는 것이고, 이것은 안티앨리어싱을 지원합니다.

~~~~{.cpp}
    ofFill();
    
    ofBeginShape(); //shape
    	ofVertex( 1,1 );
    	ofVertex( 5,5 );
    	ofVertex( 1,10 );
    	ofVertex( 1,1 );
    ofEndShape();
    
    
    ofNoFill();
    
    ofBeginShape(); //smoothed edges
    	ofVertex( 1,1 );
    	ofVertex( 5,5 );
    	ofVertex( 1,10 );
    	ofVertex( 1,1 );
    ofEndShape();
~~~~

### ofSetColor과 관련한 비디오 재생 문제점 및 기능

<!-- Although this is a problem/feature affecting any object that uses an ofTexture draw itself to the screen, I first encountered it with the videoGrabber, and I think that may be the case for many people, so I'm listing it as the video problem/feature.-->

비록 이 문제가 ofTexture를 사용하는 오브젝트가 화면에 그려질 때 발생하고, 저는 videoGrabber를 사용할때 처음 발견했습니다만, 아마도 많은 사람들에게 발생할 수 있다고 생각했기 때문에 비디오 문제 및 해결리스트를 문서에 추가 하였습니다.

<!-- Basically, ofTextures are constructed so that they can be tinted by the ofSetColor() call. This is great as long as you know it's going to happen, but if it catches you by surprise it can be really confusing, especially if your background is black and you have just called  -->

기본적으로, ofTexture들은 조립되는 것들이므로 ofSetColor()의 영향을 받습니다. 이렇게 될 것이라는걸 이미 알고 있다면야 멋지겠지만, 우연히 발견하게 된다면 상당히 혼란스러워 할것입니다. 아래와 같이 배경색을 검은색으로 설정하고 그린다면 말이죠. 

~~~~{.cpp}
    ofSetColor(0,0,0);
~~~~

<!-- which would make whatever ofTexture you're telling to draw not show up at all.-->

위 코드를 작성하고 나면, 어떠한 ofTexture라도 그려봐야 아무것도 보여지지 않습니다.

<!-- The solution to this is easy, just make sure that right before you tell any ofTextures to draw, you call ofSetColor() and set it to white, or whatever tint you want to use. -->

이 문제에 대한 해결책은 쉽습니다. ofTexture를 그리기 바로 직전에 ofSetColor()를 사용하여 흰색으로 적용하거나, tint를 적용할 색을 사용하면 됩니다.

### Processing의 background() vs. oF의 ofBackground()

<!-- In Processing, making the background() call automatically tells Processing to set the background to be set every frame to the color you specified in your function call.-->

Processing에서는, background()를 호출하면 Processing이 자동으로 매 프레임마다 지정한 색으로 배경색을 지정해줍니다.

<!-- Of can make it auto-refresh every frame, there is a separate function to call:-->

oF에서는 매 프레임 자동으로 배경색을 지정해 주기 위한 함수가 별도로 마련되어 있습니다:
~~~~{.cpp}
    ofSetBackgroundAuto(true);
~~~~

<!-- This function will make the background autorefresh with the last ofBackground() call, without having to re-call it each time inside draw().
If you don't want to redraw, but make a cumulative image, use: -->

이 함수를 사용하면 draw()안에서의 재호출 없이, 호출된 마지막의 ofBackground()를 사용하여 자동으로 배경색을 갱신해줍니다.
만약 배경을 다시 그리기를 원하지 않고(배경으로 덮어씌우지 않고), 그려지는 이미지들을 누적하여 그려내고 싶다면 아래와 같이 사용하세요:

~~~~{.cpp}
    ofSetBackgroundAuto(false);
~~~~
    

<!-- Because by default OF redraws the screen every frame.-->

왜냐하면, oF에서는 디폴트설정으로 배경을 자동으로 매프레임 다시 그리도록 되어있기 때문입니다.

### ofFill() / ofNoFill() vs. processing fill() noFill()

<!-- In processing, you can toggle fills and strokes:-->

Processing에서는, 색 채우기 및 외곽선그리기를 토글할 수 있습니다:

fill(), noFill().
stroke(), noStroke().

<!-- In Openframeworks, it's one or the other.-->

OpenFrameworks에서는, 한번에 쓰거나 다른 옵션을 추가로 사용할 수 있습니다.

C++  :
JAVA/P5:

ofFill();
fill(); noStroke();

ofNoFill();
noFill(); stroke(1);

<!-- additionally, there is no way to change the stroke width built into openFrameworks.
A way around this is to change the stroke size with an openGL call, but it doesn't look that great. -->

추가적으로 말씀드리면, openFrameworks에서는 선의 굵기값을 바꿀 방법은 없습니다.
openGL 함수를 호출하여 선의 굵기 값을 바꾸는 방법도 있지만, 결과물이 깔끔하지는 않습니다.

~~~~{.cpp}
    glLineWidth(STROKE_SIZE);
~~~~

  
### Math functions, and where they come from (no more Math.\*)

<!--Math functions in OpenFrameworks actually come from three separate files -->

openFrameworks의 수학 관련 함수들은 실질적으로 3개의 분리된 파일에서 옵니다.

#### cmath

<!--Complex math functions (trigonometric, hyperbolic, exponential, logarithmic, power, rounding, absolute value and remainder functions) come from the cmath library (math.h), and are included by default in OF.-->

복잡한 수학 함수들(삼각함수, hyperbolic, 지수함수, 로그함수, 제곱, 반올림, 절대값, remainder 관련 함수들)은 cmath 라이브러리(math.h)에 들어있고, openFrameworks에 기본적으로 include 되어있습니다.

<!-- A list of these functions is available at:-->

사용가능한 함수리스트는 아래에서 확인하실 수 있습니다:
[http://www.cplusplus.com/reference/clibrary/cmath/][75]

#### ofConstants

<!-- Other basic math functions are provided by the ofConstants file.-->

다른 기본 수학함수들은 ofConstants(of상수) 파일에서 제공됩니다.

<!-- These include:-->

이러한 것들이 포함됩니다 :

<!--Constants: -->

상수들 : 
*   PI;
*   TWO\_PI;
*   M\_TWO\_PI;
*   FOUR\_PI;
*   HALF\_PI;
    

<!-- and Functions: -->

그리고 함수들 :

*   DEG\_TO\_RAD();
*   RAD\_TO\_DEG();
*   MIN(x,y);
*   MAX(x,y);
*   CLAMP(val,min,max);
*   ABS(\[math functions you want to get the absolute value of\]);
    

#### ofMath

<!-- additionally ofMath() provides functions for getting random values. -->

추가적으로 ofMath()는 난수를 얻기위한 함수들을 제공합니다

[http://www.openframeworks.cc/documentation\#ofMath-about][78]

<!--### Structs, what are they for, and how can we use them?-->

### 구조체는 무엇을 위한 것이며, 어떻게 사용할 수 있나요? 

<!--Structs are like miniature classes except they don't have methods. Basically they're custom data objects.-->

구조체는 클래스의 미니어처와 같지만, 메서드(함수)를 갖고 있지 않습니다. 쉽게 말하면 커스텀된 데이터 오브젝트라고 할 수 있습니다.

<!--They're very convenient because they don't have to be created externally from your class files (although technically neither do classes..) -->

이것은 외부파일로 클래스를 만들 필요가 없기 떄문에 정말로 편리합니다.(비록 기술적으로 클래스와는 다르지만)

<!-- Primarily they're used for implementing linked lists (similar to ArrayLists in java). Although linked lists are probably my favorite data structure, I'm not going to write a tutorial here because they can be very complicated at first.-->

기본적으로 구조체는 연결 리스트(linked list)를 구현하는데 사용합니다(연결리스트는 Java의 "배열리스트 - ArrayList"와 비슷합니다). 비록 연결리스트가 제가 가장 좋아하는 데이터 구조지만, 처음 사용할때 상당히 까다롭기 때문에 튜토리얼을 작성하려 합니다.

<!-- A very inclusive tutorial on linked lists can be found here:-->

연결리스트의 튜토리얼은 여기서 확인할 수 있습니다:
[http://richardbowles.tripod.com/cpp/linklist/linklist.htm][80]

<!-- Anyway, the general format of a struct is :-->

여하튼, 구조체의 일반적인 포맷은 아래와 같습니다:

    struct [name]
    {
    	[varType] varName;
    	[varType] varName;
    	[varType] varName;
    	[etc...]
    };
    

<!-- ### Memory Management and You-->

### 메모리 관리

<!-- In Java/p5 the way garbage collection works is that every few cycles the interpreter sweeps the ram looking for any used objects that have no pointers referencing them, and deletes them.-->

Java/Processing에서는 가비지 컬렉션(garbage collection)이 메모리 관리를 해줍니다. 가비지 컬렉션은 매 싸이클마다 메모리를 모니터링 하고 있다가 포인터가 없거나 참고되지 않는 사용된 오브젝트가 있을경우 자동으로 삭제해줍니다.

<!-- That means if you were to declare-->

만약 아래와 같이 선언을 하면
~~~~{.cpp}
    myCustomDataType temp = new myCustomDataType();
    temp = null;
~~~~

<!-- temp was set to reference a newly created myCustomDataType. temp was then set equal to null. This did not actually clear the new myCustomDataType from ram, but whenever java's garbage collection runs it would notice that the new myCustomDataType has no references and would delete it. -->

temp는 새로 생성된 myCustomDataType를 참조하도록 세팅이 됩니다. 그리고 나서 temp는 null로 세팅됩니다. 이러한 과정에서는 실제 메모리에서 myCustomDataType이 소거되지는 않고, Java의 가비지 컬렉션이 동작할 떄, 새로 생성된 myCustomDataType이 참조할 값이 없기 떄문에 지워야한다 라는것을 수행합니다.

<!-- Unlike java/p5 however, c++ does not have automated garbage collection. This means that if you have declared object and you want to get rid of it, you will have to delete it yourself. Setting a pointer to NULL is not good enough.- -->

Java/Processing과는 다르게, C++에는 자동으로 수행되는 가비지 컬렉이 없습니다. 만약 오브젝트를 선언하고나서 삭제하고 싶다면, 직접 삭제해줘야 합니다. 포인터를 NULL로 세팅하는것만으로는 부족합니다.

<!-- calling the comparable code in c++ would result in an empty pointer and some memory that had been allocated in the ram but now is lost forever. This is called a memory leak. Although it might not affect you right off the bat, memory leaks can lead to your program eating up all of its available memory and crashing. These can be very frustrating to debug because they happen over time and don't give you a specific line that's crashing your program. -->

C++에서 Java의 방법에서와 같이 코드를 작성하게 되면, 빈 포인터와 메모리상에 할당된 메모리는 영원히 잊혀지게 됩니다. 이것을 메모리 누수라고 부릅니다. 설령 메모리 누수가 지금 당장 아무 영향을 미치지 않는다 하더라도, 결국에는 여러분의 프로그램이 메모리를 계속 잡아먹게 될것이고, 결국 크래시를 일으킬 것입니다. 이것은 디버거에서 문제의 발생요인이 정확히 코드의 몇번째 줄에서 발생하는지 상세히 알려주지 않기 때문에, 디버깅하기 상당히 어렵습니다.

<!-- Fortunately, they're easy to avoid as long as you plan your programs carefully. The proper way to delete an object after you have created it is to use the delete keyword-->

다행히도, 프로그램 기획시 신중을 기하면, 이러한 문제를 피하는것은 그리 어렵지 않습니다. 생성한 오브젝트를 삭제하는 적절한 방법은 delete키워드를 사용하는 것입니다.

~~~~{.cpp}
    delete temp;
~~~~

<!-- ### Basic Logic Problems -->

### 기초적인 논리 문제 

<!--Zach Lieberman asked me to include a bit on conditional logic errors so here goes.-->

Zach Lieberman님이 제게 약간의 조건문 논리 오류에 대해서 질문했기 떄문에 이것에 대해 답변해 드립니다.

<!--A very common conditional logic error is forgetting to restate your entire argument inside an if statement with an && (and) or || (or) operator.-->

조건문에서 범할 수 있는 아주 흔한 논리오류는 if 구문에서 &&(and) 또는 ||(or) 조건 연산자를 사용할 떄 입니다.

<!-- For example:-->

예를 들어 :

~~~~{.cpp}
    int x = 5;
    if(x < 0 || > 10)
    {
        return true;
    }
    else
    {
        return false;
    }
~~~~

<!--will always return true because ( \> 10) is always true. The proper way to write this would be:-->

위 예제에서 (\> 10)은 항상 참이기 때문에, if는 항상 참을 리턴합니다. 올바른 코드는 아래와 같아야 합니다.

~~~~{.cpp}
    int x = 5;
    
    if(x < 0 ||x > 10)
    {
        return true;
    }
    else
    {
        return false;
    }
~~~~
    
<!-- note how the entire argument is restated. Instead of asking:
is x less than 0 or greater than 10
you need to ask:
is x less than 0 or **is x** greater than 10 -->

if문의 조건문 코드가 어떻게 수정되었는지 유심히 살펴보시기 바랍니다.

"x가 0보다 작거나 또는 10보다 클 경우" 가 아니라
"x가 0보다 작거나 또는 **x가** 10보다 클 경우" 라고 물어봐야 합니다.


### xCode의 breakpoint, 정말 편리한 디버거!
[![Image:BkPt.jpg](002_images/BkPt.jpg)][84]

<!-- Breakpoints are something that you can put in by clicking on the far left column of the editing window. If you're compiling in debug mode:-->

편집창의 좌측 끝을 열을 클릭함으로써, breakpoint를 세팅할 수 있습니다. 만약 여러분이 디버그 모드에서 컴파일을 수행하면 :
[![Image:BuildConf.jpg](002_images/BuildConf.jpg)][85]

<!-- your program will stop running whenever it comes across one of these breakpoints and bring up the debugging console which lets you look at variable contents and the current running processes and things like that.--> 

breakpoint를 지나ㄹ때 프로그램이 멈추면서 디버깅 콘솔을 보여줍니다. 이 콘솔에는 현재 수행중인 프로세스의 변수들과 같은 정보들을 출력해줍니다.
[![Image:HilightedVar.jpg](002_images/HilightedVar.jpg)][86]

  
<!-- They're extremely convenient for debugging programs, but they can be confusing if you don't know what they are and they keep stopping your program. -->

이것은 프로그램을 디버깅하는데 있어서 정말로 편리합니다. 하지만 이게 뭔지 모른다면 혼란에 빠지게 되겠지요. 또한 프로그램이 왜 멈추는지도 모를것입니다.

<!-- To remove a debug point just click on it and drag it out of the window. You'll get a friendly poof of smoke and it'll be gone. -->

breaking point(debug point)를 제거하려면, 그냥 해당 포인트를 클릭하여 윈도우의 바깥으로 드래그하면 됩니다. 

[0]: #column-one
[1]: #searchInput
[2]: #An-overview-of-OpenFrameworks-for-processing-junkies.
[3]: #how-processing-actually-works
[4]: #what-is-class-extending-base-and-sub-classes
[5]: #ok-so-what-does-this-have-to-do-with-processing
[6]: #how-openframeworks-works
[7]: #maincpp-in-depth
[8]: #java-vs-c-compile-processes
[9]: #how-classes-work-in-c-two-files
[10]: #testapph
[11]: #testappcpp
[12]: #what-the-fu42-a-very-basic-introduction-to-pointers
[13]: #value-vs-reference
[14]: #and-42
[15]: #so-where-do-i-use-this
[16]: #basic-data-types
[17]: #the-processing-string-exception
[18]: #pimage-updatepixels-vs-oftexture-pixels9193
[19]: #how-are-pixel-values-stored-without-a-color-object
[20]: #common-problems-with-c-misc-topic
[21]: #expecting-implicit-data-conversion
[22]: #changing-window-size
[23]: #update-and-draw
[24]: #how-in-the-world-do-i-print-to-the-console
[25]: #printf
[26]: #iostream
[27]: #smoothing-not-working-on-filled-shapes
[28]: #displaying-video-problemfeature-related-to-ofsetcolor
[29]: #processing-background-vs-of-ofbackground
[30]: #offill-ofnofill-vs-processing-fill-nofill
[31]: #math-functions-and-where-they-come-from-no-more-math42
[32]: #cmath
[33]: #ofconstants
[34]: #ofmath
[35]: #structs-what-are-they-for-and-how-can-we-use-them
[36]: #memory-management-and-you
[37]: #basic-logic-problems
[38]: #accidental-breakpoints-in-xcode-and-why-having-a-debugger-rocks
[48]: http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html "http://pages.cs.wisc.edu/~hasti/cs368/CppTutorial/NOTES/CLASSES-INTRO.html"
[51]: http://www.cplusplus.com/doc/tutorial/pointers.html "http://www.cplusplus.com/doc/tutorial/pointers.html"
[58]: http://www.openframeworks.cc/documentation#ofImage-setUseTexture "http://www.openframeworks.cc/documentation#ofImage-setUseTexture"
[66]: http://www.cplusplus.com/reference/clibrary/cstdio/printf.html "http://www.cplusplus.com/reference/clibrary/cstdio/printf.html"
[68]: http://members.gamedev.net/sicrane/articles/iostream.html "http://members.gamedev.net/sicrane/articles/iostream.html"
[75]: http://www.cplusplus.com/reference/clibrary/cmath/ "http://www.cplusplus.com/reference/clibrary/cmath/"
[78]: http://www.openframeworks.cc/documentation#ofMath-about "http://www.openframeworks.cc/documentation#ofMath-about"
[80]: http://richardbowles.tripod.com/cpp/linklist/linklist.htm "http://richardbowles.tripod.com/cpp/linklist/linklist.htm"


