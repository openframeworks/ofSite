---
date: 2008/03/20 20:18:00
title: 웁쓰! = 객체지향프로그래밍 + 클래스
summary: 이 튜토리얼은 오픈프레임웍스에서의 객체지향 프로그래밍에 관한 간단한 소개와 자신만의 클래스를 작성하는 가이드를 담고 있습니다.
author: Rux
author_site:
---

## Contents

*   [1 Overview][2]
*   [2 What is OOP][3]
*   [3 How to build your own Classes][4]
*   [4 make objects from your own Classes][5]
*   [5 make objects from your own Classes - part 2][6]
*   [6 make objects from your own Classes - part 2.1][7]
*   [7 make objects from your own Classes - part 3][8]
*   [8 make objects from your own Classes - part 4][9]


<!-- <h2 id="overview">Overview</h2> -->
<h2 id="overview">개요</h2>


<!-- This tutorial is an quick introduction to Object Oriented Programming in OpenFrameworks and a how-to guide to build and use your own classes. -->

이 튜토리얼은 오픈프레임웍스에서의 객체지향 프로그래밍에 관한 간단한 소개와 자신만의 클래스를 작성하는 가이드를 담고 있습니다.

사용된 예제들은 Mikkel Koser의 ofBall 클래스를 기반으로 하였습니다. [포럼의 글타래를 읽어보세요][11]

<h2 id="oop">OOP란</h2>

OOP는 Object Oriented Programming의 약자로, 객체와 객체간의 상호작용을 기반으로 하는 프로그래밍 패러다임을 의미합니다.

몇가지 정의를 살펴보죠:

<!-- -a Class defines the characteristics of a thing - the object - and its behaviors; it defines not only its properties and attributes but also what it can do. -->
- 클래스란 무언가(객체)의 성격과 그것의 행위를 정의하는것이다. 이것은 자신의 프로퍼티와 어트리뷰트들 뿐만 아니라, 자신이 할 수 있는 것들또한 정의한다.

<!-- -an Object is an instance of a class. -->
- 객체는 클래스의 인스턴스이다.

<!-- -the Methods are the objects abilities and how we can call them. -->
- 메소드는 객체의 능력들을 의미하며, 호출하는 방법이기도 하다.

A recurring analogy is to see a Class as a the cookie cutter and the cookies as the Objects.



<!-- <h2 id="classes">How to build your own Classes</h2> -->
<h2 id="classes">나만의 클래스 작성하기</h2>

<!-- Classes and objects are similar to the concepts of movie clips and instances in Flash and are also a fundamental part of Java programming. -->
<!-- If you have a background in Java and/or Processing this other tutorial will be useful. [OF\_for\_P5\_users][14] -->

클래스와 객체는 플래시에서의 MovieClip과 인스턴스 관계와 개념이 비슷합니다. 이는 또한 자바 프로그래밍의 핵심이기도 합니다. 만약 여러분이 Java 또는 Processing의 경험이 있으시다면, [프로세싱 사용자를 위한 오픈프레임웍스][14] 튜토리얼이 유용할 것입니다.

<!-- This is how you declare a Class -\> in the header file (\*.h), otherwise known as the declarations file. In this case, the file name should be ofBall.h -->
[![Image:ex1-ball_h.jpg](003_images/Ex1-ball_h.jpg)][15]

클래스를 선언하려면 -\> 헤더파일 (\*.h)에 작성하면 됩니다. 헤더파일은 또한 선언 파일이라고 하기도 합니다. 우리의 경우, 파일명은 ofBall.h가 되어야 합니다. [![Image:ex1-ball_h.jpg](003_images/Ex1-ball_h.jpg)][15]

~~~~{.cpp}

    /* 아래 if문을 사용하여 클래스가 선언되지 않았을때만 클래스를 선언하도록 합니다.
       클래스가 여러번 호출되어 컴파일러를 혼동에 빠지지 않게 할 수 있습니다. */
    
    #ifndef _OF_BALL // if this class hasn't been defined, the program can define it. By using
    #define _OF_BALL // this if statement the class is only defined once.

    #include "ofMain.h"

    class ofBall {

        public: // 공용 함수,변수를 이곳에 선언합니다.

            // 함수, 혹은 클래스 오브젝트의 함수 
            void update();  // update 메소드는 매 프레임마다 객체의 프로퍼티를 새로고칠때 사용됩니다.
            void draw();    // draw 메소드. 객체를 그리는 곳입니다.

            // 변수들 
            float x;      // 위치
            float y;
            float speedY; // 속도와 방향
            float speedX;
            int dim;      // 크기




            ofBall(); // 생성자 - 전달된 프로퍼티가 없을 시에 객체를 초기화하는 곳입니다.
                      // 주로 초기값을 지정할 때 사용합니다. 

        private: // private 함수, 변수들을 선언하는곳입니다. 

    }; // 끝에 세미콜론을 잊지 마세요

    #endif
~~~~



<!-- We have declared the Ball class header filer (the list of ingredients) and now lets get to the cooking part -\> what to do with the ingredients! -->
<!-- Please notice the '\#include' tag, this is a way to tell the compiler which file to include for each implementation file. When the program is compiled these '\#include' tags will be replaced by the original file they're referring to. -->

Ball클래스의 헤더파일을 선언하였으니, 이제 요리를 해볼 시간이군요 -\> 바로 선언한 것들로 할 수 있는 것들 말입니다!

'\#include' 태그를 주의깊게 봐주세요. 이것은 컴파일러에게 구현 파일 각각에서 포함시켜야 할 파일을 알려주는 방법입니다. 코드가 컴파일될때 이 '\#include' 태그부분은 여기서 지정하고 있는 원래 파일들로 교체되어집니다.

The 'if statement' (\#ifndef) is a way to prevent the repetition of header files which could easily occur. Here's an example of how easily this could happen due to the recursive structure of the program:
Lets say we're building a Pool game, we'll have the ofApp class, dependent on this there will be the pool table class and also the pool stick class and as both of these will be needed for our balls collision detection function both will refer to the ball class individually. If we didn't use the '\#ifndef' 'if' statement the compiler would try to compile the ball class repeatedly and would find some conflicts.



[![Image:ex-ifndef.jpg](003_images/Ex-ifndef.jpg)][16]

<!-- Here's how you can write the class \*.cpp file, the implementation file: -->

아래는 \*.cpp 파일로 클래스를 작성하는 방법입니다. 구현 파일이라고도 불리웁니다 :

~~~~{.cpp}
    #include "ofBall.h"

    ofBall::ofBall()
    {
        x = ofRandom(0, ofGetWidth());      // give some random positioning
        y = ofRandom(0, ofGetHeight());

        speedX = ofRandom(-1, 1);           // and random speed and direction
        speedY = ofRandom(-1, 1);

        dim = 20;
    }

    void ofBall::update(){
        if(x < 0 ){
            x = 0;
            speedX *= -1;
        } else if(x > ofGetWidth()){
            x = ofGetWidth();
            speedX *= -1;
        }

        if(y < 0 ){
            y = 0;
            speedY *= -1;
        } else if(y > ofGetHeight()){
            y = ofGetHeight();
            speedY *= -1;
        }

        x+=speedX;
        y+=speedY;
    }

    void ofBall::draw(){
        // values for R, G, B
        ofSetColor(120,120,120);
        ofCircle(x, y, dim);
    }
~~~~

[![Image:ex1-ball_cpp.jpg](003_images/Ex1-ball_cpp.jpg)][17]

<!-- <h2 id="objects-part-1">make objects from your own Classes</h2> -->
<h2 id="objects-part-1">나만의 클래스로 오브젝트들을 만들기</h2>

<!-- now that we've created a class let's make the real object!
in your testapp.h (header file) we'll have to add declare a new object and get some free memory for it. this is how we do it:
 -->

클래스를 생성했으니, 실제 오브젝트를 만들어봅시다!
아래의 코드로 testapp.h파일(헤더파일)에서, 새 오브젝트 선언을 추가하고, 그것을 위한 메모리를 할당할 것입니다:

[![Image:ex1-h.jpg](003_images/Ex1-h.jpg)][19]

~~~~{.cpp}
    	ofBall myBall;
~~~~

<!-- and finally let's get that ball bouncing on screen! -->
<!-- go to your project testapp.cpp (implementation) file. now that we've created the object we just need to draw it and update its values by calling its methods. -->
<!-- in the update() function add: -->

이제 화면에 공을 튕겨 봅시다!
프로젝트의 testapp.cpp 파일 (구현파일)로 가서, 우리가 생성한 오브젝트를 그리고, 동시에 메소드를 호출하여 값들을 업데이트 시켜봅시다. 
update() 함수에 아래와 같이 추가해봅시다:

[![Image:ex1-cpp.jpg](003_images/Ex1-cpp.jpg)][20]

~~~~{.cpp}
      myBall.update();  // 오브젝트의 update메소드를 호출한다.
~~~~

<!-- and in the draw() function lets add: -->
그리고 draw()함수에 아래와 같이 추가합니다:

~~~~{.cpp}
      myBall.draw();  // 오브젝트를 그리기 위해 draw메소드를 호출한다.
~~~~

<!-- compile and run! -->
<!-- by now you must be seeing a bouncing ball on the screen! great! -->

컴파일하고 실행해봅시다!
통통퇴는 공이 화면에 보이죠?! 만세!

[소스코드 다운받기][21]

<!-- <h2 id="objects-part-2">make objects from your own Classes - part 2</h2> -->
<h2 id="objects-part-1">나만의 클래스로 오브젝트 만들기 - 파트 2</h2>

<!-- you're probably asking yourself now why did you have so much trouble just to create a bouncing ball. You could have done this (and you've probably done it!) without using classes. In fact one of the advantages of using classes is to be able to create multiple individual objects with the same characteristics.
So, lets do that now!
going back to your ofApp.h file we'll just need to create a couple of new objects:
 -->

아마도 지금쯤 여러분은 '튀는 공만드는데 이렇게 까다롭담ㅠㅠ' 이라고 생각할겁니다. 클래스 없이도 가능합니다(이미 해봤을거에요!). 사실 클래스를 사용하는 장점중 하나는 다양한 개별 오브젝트들을 같은 속성으로 만들수 있다는 점입니다.

그렇다면 한번 해보죠!

ofApp.h파일로 돌아가서 몇가지 새 오브젝트들을 만들면 됩니다:

~~~~{.cpp}
    	 ofBall myBall1;
    	 ofBall myBall2;
    	 ofBall myBall3;
~~~~

[![Image:ex2-h.jpg](003_images/Ex2-h.jpg)][23]

<!-- And in the implementation file (\*.cpp) just call the corresponding methods for each of the objects. -->
그리고 구현파일 (\*.cpp)에서 각각의 오브젝트에 대응하는 메소드들을 호출해주면 됩니다.

<!-- in the ofApp's update() function: -->
ofApp의 update()함수에 이렇게 추가합니다:

~~~~{.cpp}
    	myBall1.update();
    	myBall2.update();
    	myBall3.update();
~~~~

<!-- and also in the draw() function: -->
또한 draw()함수에는 이렇게 합니다:

~~~~{.cpp}
    	myBall1.draw();
    	myBall2.draw();
    	myBall3.draw();
~~~~

[![Image:ex2-cpp.jpg](003_images/Ex2-cpp.jpg)][24]

[![Image:ex2Ball.jpg](003_images/Ex2Ball.jpg)][25]

[소스코드 다운받기][26]

<h2 id="objects-part-2_1">나만의 클래스로 오브젝트 만들기 - 파트 2.1</h2>

<!-- We've just created 3 objects but what if we wanted to created 10, 100 or may be 1000's of them?! hardcoding one by one would be a painful and long process that can be easily solved by automating the object creation and function calls. Just by using a couple for loops we'll be making this process way simpler and cleaner. -->

우리는 방븝 3개의 오브젝트를 만들었습니다만, 만약 10, 100개 또는 1000개를 만들고 싶다면 어찌해야 할까요 ?! 하나하나 일일히 코드로 작성하는것은 고통스럽고 정말 지루한 과정이겠지요. 단순히 몇몇 반복문들 사용하므로써 이러한 과정을 보다 단순하고 명확하게 할 수 있습니다.

<!-- Instead of declaring a list of objects one by one we'll just create an array of objects of type 'ofBall'. We'll also introduce another new element: a constant. Constants are defined after the \#includes as \#define CONSTANT\_NAME value. This is a way of defining a constant value that won't be ever changed in the program: -->

하나하나 오브젝트의 리스트를 선언하지 않고, 'ofBall'타입의 오브젝트의 배열을 생성합니다. 여기서 새로운 요소 : 상수 를 소개해야겠네요. 상수는 \#indclude들 뒤에 `\#define CONSTANT\ NAME 값`의 형태로 선언할 수 잇습니다. 이는 프로그램내에서 절때 바뀌지 않은 상수를 선언하는 방법입니다:

~~~~{.cpp}
    	#define NBALLS 5
~~~~

<!-- we'll now use the CONSTANT value to define the size of our array of objects: -->
이제 오브젝트의 배열의 길이를 이 상수를 이용하여 선언할 수 있습니다:

~~~~{.cpp}
    	ofBall myBall[NBALLS];
~~~~

[![Image:ex21h.jpg](003_images/Ex21h.jpg)][28]

<!-- back to our implementation file we'll just need to create an array of objects and call their methods through 'for' loops. -->
구현파일로 돌아와, 방금 만든 오브젝트의 배열안에 있는 메소드를 'for'방복문으로 호출합니다.

<!-- in the update() function: -->
update()함수에 이와같이 작성합니다:

~~~~{.cpp}
    	for(int i=0; i<NBALLS; i++)
    	{
          myBall[i].update();
    	}
~~~~

<!-- in the draw() function: -->
draw()함수에 이와같이 작성합니다:

~~~~{.cpp}
    	for(int i=0; i<NBALLS; i++)
    	{
          myBall[i].draw();
    	}
~~~~

[![Image:ex21cpp.jpg](003_images/Ex21cpp.jpg)][29]

[![Image:ex21Ball.jpg](003_images/Ex21Ball.jpg)][30]

[소스코드 다운받기][31]

<h2 id="objects-part-3">나만의 클래스로 오브젝트 만들기 - 파트 3</h2>

<!-- As we've seen each of the objects has a set of properties defined by its variables (position, speed and direction and dimension). -->
<!-- Another advantage of object oriented programming is that the objects created can have different values on each of its properties. -->
<!-- For us to be able to have better control of each object we can have a constructor which defines these characteristics and lets us access them. -->
<!-- In the ofBall definitions file (\*.h) we can change the constructor to include some of the objects properties (lets say position and dimension): -->

보시는 바와 같이, 각 오브젝트들은 변수에 의해 지정된 속성의 세트를 가지고 있습니다(위치, 속도, 방향, 크기).
객체지향프로그래밍의 또다른 장점은, 오브젝트들이 각각 서로 다른 속성들을 가질수 있다는 점입니다. 
지금 상황에서 이러한 속성들을 조절하는 보다 나은 방법은 이러한 속성들을 지정하고 접근할 수 있는 생성자를 만드는것입니다. 
ofBall의 선언파일(\*.h)에서, 오브젝트의 일부 속성들(위치, 크기)를 지정할 수 있는 생성자로 바꿔봅시다 :

~~~~{.cpp}
    	ofBall(float x, float y, int dim);
~~~~

<!-- As we've changed the constructor we'll need to update the ofBall implementation (\*.cpp) file to reflect these. -->
앞에서 생성자를 변경했으므로, ofBall의 구현파일(\*.cpp)를 수정하여 이러한 변경을 반영해봅시다.


~~~~{.cpp}
    ofBall::ofBall(float _x, float _y, int _dim)
    {
        x = _x;
        y = _y;
        dim = _dim;

        speedX = ofRandom(-1, 1);
        speedY = ofRandom(-1, 1);
    }
~~~~

<!-- By implementing these changes we'll also need to create space in memory for these objects. We'll do this by creating a pointer (a reference in memory) for each object. -->
<!-- Back to the ofApp.h (definitions) file we'll declare a new object like this: -->

이와같이 구현파일을 변경했으므로, 우리는 이러한 오브젝트들을 위한 메모리영역을 생성할 필요가 있습니다. 각 오브젝트를 위한 포인터(메모리의 레퍼런스)를 생성하여 구현합니다.
ofApp.h(선언)파일로 돌아가, 새 오브젝트를 아래와 같이 선언합니다:

~~~~{.cpp}
    	ofBall *myBall;
~~~~

[![Image:ex3-h.jpg](003_images/Ex3-h.jpg)][33]

<!-- The star means it will be created in a reserved part of memory just for it. -->
별(*)은 예약된 메모리의 일부에 생성하겠다 라는 의미입니다. 

<!-- Now in the TestApp.cpp file we will need to create the object in the setup and we'll call the objects methods on the draw() and update() functions in a different way than we've been doing before. -->

이제 TestApp.cpp파일에서, setup안예 오브젝트를 생성하고 오브젝트의 메소드를 draw()와 update()함수 안에서 앞에서 했던 방법과 다른 방법으로 호출합니다.

in the setup() :

~~~~{.cpp}
                            // x-position,        y-position,           size
    myBall = new ofBall(ofRandom(300,400), ofRandom(200,300), ofRandom(10,40));
~~~~

<!-- As you see it is now possible to directly control the objects properties on its creation. -->
<!-- and now we'll just need to update and draw it. -->

보시다시피 오브젝트를 생성함과 동시에 오브젝트의 속성에 바로 접근이 가능합니다.
이제 update와 draw를 호출해야겠죠?

~~~~{.cpp}
    myBall->update();

    myBall->draw();
~~~~

[![Image:ex3-cpp.jpg](003_images/Ex3-cpp.jpg)][34]

[![Image:ex3Ball.jpg](003_images/Ex3Ball.jpg)][35]

[소스코드 다운받기][36]

<h2 id="objects-part-4">나만의 클래스로 오브젝트들을 만들기 - 파트 4</h2>

<!-- we're now at the last part of this how-to tutorial on classes and objects. this part will now demonstrate an automation process to create objects from our previously built class. We'll be creating objects through arrays as we did in part 2.1 with some minor changes: -->
자 이제 클래스와 오브젝트 튜토리얼의 마지막 파트가 되겠습니다. 이 파트에서는 앞서 우리가 설계한 클래스로부터 자동화 프로세스를 통해 오브젝트를 생헝하는 과정을 데모해볼 것입니다. 앞 2.1파트에 약간의 변화를 주어 오브젝트들을 배열을 통해 만들어 보겠습니다:

~~~~{.cpp}
    	ofBall** myBall;   // ofBall타입의 포인터의 배열
    	int nBalls;        // 공의 갯수를 위한 변수
~~~~

[![Image:ex4-h.jpg](003_images/Ex4-h.jpg)][38]

<!-- As we're creating an array of objects, instead of creating one pointer only we'll also have to create an array of pointers. -->
<!-- That's why we have two 'stars' and not one in the declarations(\*.h) file. We have created a pointer to an array of pointers. -->
<!-- Let's see how we'll create and call these objects in the implementation (\*.cpp) file: -->
오브젝트의 배열을 생헝하기 위해, 포인터하나를 생성하는 대신, 포인터의 배열을 만들것입니다.
선언파일(\*.h)에 두개의 '별'을 갖고 있는 이유입니다. 이제 우리는 포인터의 배열의 포인터를 만들었습니다.
구현파일(\*.cpp)에서 어떻게 생성하고 이 오브젝트들을 호출하는지 알아봅시다:


~~~~{.cpp}
    nBalls = 5; // 만들 오브젝트의 갯수

    myBall = new ofBall*[nBalls]; // 오브젝트의 포인터의 배열

    for (int i = 0; i < nBalls; i++){
        float x = 20+(100*i); // using the value of the counter variable(i) to differentiate them
        float y = 20+(100*i);
        int dim = 10+(i*10);

        myBall[i] = new ofBall(x,y,dim);  // 배열 내의 각 오브젝트를 생성한다
    }
~~~~

similarly when we want to draw and update the objects we've created we'll need 'for' loops to run through the array.
생성된 오브젝트들을 draw와 update에서 사용할려면 동일하게 'for'반복문으로 배열에 접근합니다.

~~~~{.cpp}
      for (int i = 0; i < nBalls; i++){
          myBall[i]->update();
      }

      for (int i = 0; i < nBalls; i++){
          myBall[i]->draw();
      }
~~~~

[![Image:ex4-cpp.jpg](003_images/Ex4-cpp.jpg)][39]

[![Image:ex4Ball.jpg](003_images/Ex4Ball.jpg)][40]

[소스코드 다운받기][41]

[2]: #overview "Overview"
[3]: #oop "What is OOP"
[4]: #classes "How to build your own Classes"
[5]: #objects-part-1 "Make objects from your own Classes - Part 1"
[6]: #objects-part-2 "Make objects from your own Classes - Part 2"
[7]: #objects-part-2_1 "Make objects from your own Classes - Part 2.1"
[8]: #objects-part-3 "Make objects from your own Classes - Part 3"
[9]: #objects-part-4 "Make objects from your own Classes - Part 4"

[11]: http://openframeworks.cc/forum/viewtopic.php?t=428 "http://openframeworks.cc/forum/viewtopic.php?t=428"

[14]: http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users "http://wiki.openframeworks.cc/index.php?title=OF_for_Processing_users"

[15]: 003_images/Ex1-ball_h.jpg "Image:ex1-ball_h.jpg"
[16]: 003_images/Ex-ifndef.jpg "Image:ex-ifndef.jpg"
[17]: 003_images/Ex1-ball_cpp.jpg "Image:ex1-ball_cpp.jpg"

[19]: 003_images/Ex1-h.jpg "Image:ex1-h.jpg"
[20]: 003_images/Ex1-cpp.jpg "Image:ex1-cpp.jpg"

[21]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example1.zip"

[23]: 003_images/Ex2-h.jpg "Image:ex2-h.jpg"
[24]: 003_images/Ex2-cpp.jpg "Image:ex2-cpp.jpg"
[25]: 003_images/Ex2Ball.jpg "Image:ex2Ball.jpg"

[26]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2.zip"

[28]: 003_images/Ex21h.jpg "Image:ex21h.jpg"
[29]: 003_images/Ex21cpp.jpg "Image:ex21cpp.jpg"
[30]: 003_images/Ex21Ball.jpg "Image:ex21Ball.jpg"

[31]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example2-1.zip"

[33]: 003_images/Ex3-h.jpg "Image:ex3-h.jpg"
[34]: 003_images/Ex3-cpp.jpg "Image:ex3-cpp.jpg"
[35]: 003_images/Ex3Ball.jpg "Image:ex3Ball.jpg"

[36]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example3.zip"

[38]: 003_images/Ex4-h.jpg "Image:ex4-h.jpg"
[39]: 003_images/Ex4-cpp.jpg "Image:ex4-cpp.jpg"
[40]: 003_images/Ex4Ball.jpg "Image:ex4Ball.jpg"

[41]: http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip "http://www.essaycollective.org/personal/rx/patcher/of-werx/object-ballclass_example4.zip"
