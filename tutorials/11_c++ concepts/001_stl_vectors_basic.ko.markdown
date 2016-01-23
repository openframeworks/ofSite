---
date: 2013/03/07 10:00:00
title: stl::vector의 기본
summary: 기본적인 vector사용법에 대하여 간략히 살펴봅시다.
author: Chris Sugrue
author_site: http://csugrue.com
---

<!-- A c++ vector is a type of container (like an array) that allows the storage of multiple elements (numbers, strings, objects etc.) in a format that can grow or shrink dynamically. Once a vector is created, new elements can be added, others erased and the entire vector can be sorted or shuffled. This tutorial is an overview of the basics of using vectors and is geared towards openFrameworks programmers that may be new or coming from other platforms and languages. It is not a comprehensive guide to all the functions of c++ vectors (additional resource links are provided below).  -->
C++ vector는 (배열과 같은)컨테이너의 타입으로, 다양한 요소들(숫자, 문자열, 오브젝트 등등)을 동적으로 늘리거나 줄이는게 가능하면서 저장이 가능합니다. 생성된  vector는 추가, 삭제, 또는 vector전체를 정렬하거나 섞을 수 있습니다. 본 튜토리얼은 vector의 기본적인 사용법에 대하여 간략히 살펴볼것이며, 다른 플랫폼이나 언어에서 넘어오신 분들 또는 새로 시작하시는 오픈프레임웍스 프로그래머분들을 대상으로 하고 있습니다. 하지만 C++ vector의 모든 함수들을 포괄적으로 다루는 가이드는 아닙니다(추가적인 자료들의 링크는 아래에 제공됩니다).

콘텐츠

* [Quick Review](#quick review)
* [선언(생성)](#declaring)
* [요소 추가](#adding)
* [요소 접근](#accessing)
* [요소 삭제](#erasing)
* [Iterators](#iterators)
* [정렬하기, 섞기](#sort)
* [오브젝트의 vector](#vectorsobjects)
* [오브젝트를 가리키는 포인터의 vector](#vectorspointers)
* [예약과 리사이징을 통한 최적화](#optimizing)
* [오픈프레임웍스 예제](#of)
* [추가 참고 자료](#more_resource)

추가적인 자료들:

<a href="http://www.cplusplus.com/reference/vector/vector/">C++ Vector 레퍼런스</a>

----------------------------------------------------------------------------------------------------------------------------
<a name="quick review"></a>
## Quick Review:

~~~~{.cpp}
    vector<float> nums;  // float의 빈 vector를 생성한다.
~~~~

~~~~{.cpp}
    nums.push_back(10.5); // float인 10.5값을 vector의 끝에 추가한다.
~~~~
~~~~{.cpp}
    cout << nums[0] << endl; // 위치 0 요소의 값을 출력한다.
~~~~
~~~~{.cpp}
    nums.erase( nums.begin() ); // vector의 첫번째 요소를 삭제한다.
~~~~
~~~~{.cpp}
    cout << nums.size() << endl; // vector의 요소 갯수를 출력한다.

    vector<float>:: iterator it = nums.begin(); // 첫번째 요소를 가리키는 vector를 위한 iterator를 생성한다.
    cout << *it << end; // iterator가 가리키고 있는 요소의 값을 출력한다.
~~~~
----------------------------------------------------------------------------------------------------------------------------
<a name="declaring"></a>
## vector를 선언한다

vector&#60; *type* &#62; *name*;

~~~~{.cpp}
    vector<float> measures;       
    vector<string> surnames;
    vector<Particle> particles;
~~~~
----------------------------------------------------------------------------------------------------------------------------
<a name="adding"></a>
## vector에 요소를 추가한다.

### push_back
*push_back* 은 vector의 끝에 새 요소를 추가한다.
~~~~{.cpp}
    vector<string> names; // 빈 vectror를 선언

    names.push_back("jane"); // 요소를 추가한다.
    names.push_back("joe"); // 다른 요소를 추가한다 - 이제 vector의 크기는 2가 되며 요소들은 다음과 같다 : "jane", "joe"
~~~~

<!-- *push_back* is a very common way to add elements and is useful when adding elements one at a time or only a few (adding objects when an event occurs for example). -->
*push_back*은 요소를 추가하는 가장 일반적인 방법이자, 한번에 하나의 요소 혹은 적은 갯수의 요소들을 추가할때 유용합니다(예를 들어 이벤트가 발생했을 때 오브젝트를 추가하는 경우).

### resize
<!-- *resize* allocates memory for the desired number of elements in the vector and adjusts its size accordingly.  -->
*resize*는 vector에서 원하는 갯수만큼 메모리를 할당하는 것이며, 지정한 사이즈만큼 조절합니다.

~~~~{.cpp}
    vector<int> nums; // vector를 선언

    nums.resize(100); // vector에 100개의 공간을 할당
 
    for(int i = 0; i < nums.size(); i++){
      nums[i] = i; // 인덱스를 사용하여 값을 지정한다
    }
~~~~

<!-- When adding many elements at the same time, using *resize* may be faster than *push_back*. This is because when a new element is added to the end of a vector there might not be enough space in memory at the current location. In this case, the entire vector is moved meaning that it will be copied and new memory allocated in a different location. This can be slow and may occur multiple times when using push_back in a loop. When using *resize* the move would only need to be performed once.   -->
동시에 많은 요소들을 추가할 때, *resize*를 사용하는것이 *push_back*을 사용하는것보다 훨씬 빠를 수 있습니다. 이는 vector의 끝에 새 요소를 추가할 때 현재 위치에 메모리의 여유공간이 충분치 않을 수 있기 때문입니다. 이러한 경우, vector전체가 복사되어 다른 메모리 공간에 옮겨집니다. 이러한 경우 느려질수 있으며, push_back 이 반복문 안에 쓰일 경우 여러번 발생할 수 있습니다. *resize*를 사용하면 옮겨지는 과정이 한번만 발생할 것입니다.

<!-- For more details on this refer to <a href="http://arturocastro.net/blog/2011/10/28/stl::vector/">Arturo Castro's tutorial</a>  -->
모다 자세한 내용은 <a href="http://arturocastro.net/blog/2011/10/28/stl::vector/">Arturo Castro의 튜토리얼</a>을 살펴봐주시기 바랍니다.

### 할당(assign)
<!-- *assign* can be used to create a vector of a given size and populate it with uniform values, or to copy part of an existing vector. It reinitializes the vector deleting any previous elements.  -->
*assign*은 주어진 사이즈의 벡터를 생성하여 동일한 값으로 채우거나, 이미 존재하고 있는 vector를 복사하기 위해 사용됩니다. 이럴경우 할단되는 vector의 이전 값들은 삭제되고 새 값으로 바뀝니다.

~~~~{.cpp}
    vector<float> vals; // vector를 선언
    vals.assign(100,0.0f); // 100개의 float값을 0.0의 값으로 모두 채운다
 
    vector<Particle> particles;
    particles.assign(10,Particle());
 
    vector<Particle> copyParticles;
    copyParticles.assign( particles.begin(), particles.begin()+5 );
~~~~

----------------------------------------------------------------------------------------------------------------------------
<a name="accessing"></a>
##  vector의 요소에 접근하기

### operator []
<!-- Elements can be accessed using the [] operator with an index in the same style as c arrays.  -->
요소들은 c의 배열과 마찬가지로 인덱스와 함께 [] 오퍼레이터를 사용하여 접근할 수 있습니다.

~~~~{.cpp}
    cout << names[0] << end; // ! 0번째 요소에 값이 없다면, 메모리 접근에러가 발생합니다.
 
    for( int i = 0; i < names.size(); i++){
      cout << names[i] << endl;
    }
~~~~


### at()
<!-- Vectors have a function *at()* that will return the value in the same way as the [] operator, however it is slightly slower than []. *at()* checks if the index is in bounds and if not, throws an exception. This can make it useful for debugging, however for clarity and speed [] is usually preferred. -->
vector 는 *at()*함수를 갖고 있는데, 이 함수는 [] operator와 마찬가지로 값을 리턴해줍니다. 하지만 이는 []보다 살짝 느립니다. *at()*은 인덱스가 유효한 범위에 있는지 체크하여 만약 유효하지 않을경우, 예외를 발생시킵니다. 이는 디버깅시에 아주 유용하지만, 속도 측면에서 명백히  []가 일반적으로 선호됩니다.

~~~~{.cpp}
    cout << names.at(0) << endl;
~~~~

----------------------------------------------------------------------------------------------------------------------------
<a name="erasing"></a>
## vector의 요소 삭제

### erase
<!-- An element can be removed from a vector using *erase*. This function takes in an iterator to the position in the vector not the index. The function *begin()* returns an iterator to the first element of the vector and can be added to to pass in subsequent positions. Note that erase does not check if the element exists or not, so be sure when erasing! -->
vector에서 *erase*를 사용하여 요소들을 삭제할 수 있습니다. 이 함수는 인덱스가 아닌 iterator를 사용하여 vector에 접근합니다. *begin()*함수는 vector의 첫번째 요소를 가리키는 iterator를 리턴하며, 이어지는 위치를 전달하기위해 더해질 수 있습니다. erase의 경우 요소의 존재유무를 확인하지 않음에 유의하시고, 삭제할때 신중해주세요!

~~~~{.cpp}
    particles.erase( particles.begin() ); // 첫번째 요소를 삭제
 
    particles.erase( particles.begin() + 3 ); // 세번째 요소를 삭제

    particles.erase( particles.begin(), particles.begin()+2 ); // 맨 처음부터 두개의 요소를 삭제
~~~~

### clear
<!-- *clear* removes all elements in the vector reducing its size to 0. -->
*clear*는 vector의 모든 요소들을 삭제하며, vector의 크기를 0으로 만듭니다.
~~~~{.cpp}
    particles.clear();
~~~~    
----------------------------------------------------------------------------------------------------------------------------
<a name="iterators"></a>
## Iterators
<!-- An iterator is a class of objects designed to help traverse through a sequence of elements (such as a vector). An iterator for a vector points to an individual element in the vector, and can be incremented to point to the next. As some vector functions take int or return iterators, it is useful to understand how they work.  -->
iterator는 연속된 요소들(가령 vector와 같은)을 훑는데 도움을 주도록 디자인된 오브젝트의 클래스입니다. vector에서 iterator는 vector의 개별 요소들을 가리키며, 다음 요소로 하나씩 증가될 수 있습니다. vector의 어떤 함수들은 정수를 취하거나 iterator를 리턴하는데, 이는 이것들이 어떻게 동작하는지 이해하기에 유용합니다.


<!-- Declaring an iterator for a vector: -->
vector를 위한 iterator를 선언해봅시다:

vector&#60; *type* &#62;::iterator it; // *it* 은 iterator의 이름이지만, 원하는 아무이름이나 사용할 수 있습니다.
~~~~{.cpp}
    vector<float>::iterator it = nums.begin();
    vector<Particle>::iterator itp = partices.begin();
~~~~
<!-- *begin()* returns an iterator to the first element of the vector and *end()* to one past the last element in the vector. -->
*begin()*은 vector의 첫 요소를 가리키는 iterator를 리턴하며, *end()*는 vector의 맨 마지막 요소를 가리키는 iterator를 리턴합니다.

<!-- To access the value of an element using an iterator, we have to dereference it as if it was a pointer. The iterator is pointing to the element in the array, but we want the value of element it is pointing to instead.  -->
iterator를 사용하여 요소의 값에 접근하기 위해서는, 마치 그것이 포인터인것처럼 이것을 역참조해야 합니다. iterator는 배열의 요소를 가리키고 있지만, 우리는 이것이 가리키고 있는것 대신 요소의 값을 원하기 때문이죠. 

~~~~{.cpp}
    vector<int>  nums;
    nums.push_back(10);
    vector<int>::iterator it = nums.begin();
    cout << *it << endl; // 10을 출력한다
    
    vector<Particle>::iterator itp = particles.begin(); // 첫번째 요소의 iterator을 얻는다
    float xpos = (*itp).pos.x; // 요소의 값/속성에 접근하기 위해 역참조 operator *를 사용한다
    particle.erase(itp); // iterator를 (erase와 같은)vector 함수로 전달한다 
~~~~

<!-- Looping through the vector using iterators: -->
iterator를 사용하여 vector를 훑으며 반복하기:
~~~~{.cpp} 
    vector<float>::iterator it = nums.begin();  // 첫번째 요소를 가리키는 iterator를 생성

    // 반복문을 돌면서, 끝에 다다를때까지 다음 요소로 증가한다.
    
    for(; it != nums.end(); ++it){ 
      cout << *it << end; // 역참조 operator를 사용하여 값을 출력한다.
    }

 
    for(vector<Particle>::iterator it = particles.begin(); it != particles.end(); ++it){ 
      cout << (*it).pos.x << end; 
    }
~~~~

<!-- Note that when using iterators we want to test that our iterator ( *it* in this case) is not equal to *end()* (it != particles.end()) rather than > test. *end()* signifies one element beyond the last. This is important because an iterator cannot be incremented beyond *end()* or bad things can happen. -->
iterator를 사용할 때, 우리의 iterator(지금의 경우 *it*)를 >가 아닌 *end()*와 같지 않다(it != particles.end())라고 했다는것을 기억하세요. *end()*는 마지막 너머의 요소를 의미합니다. 이는 매우 중요한데, iterator 는 *end()* 너머로 증가될 수 없기 때문입니다. 만약 너머로 증가할 경우 안좋은 상황이 발생합니다.

 
<!-- In a while loop the structure would be: -->
while 반복문 구조에서는 이렇게 사용됩니다:

~~~~{.cpp}
    vector<Particle>::iterator it = particles.begin();
 
    while( it != particles.end() ){
     cout << (*it).x << end; 
     ++it;
    }
~~~~

<!-- When erasing multiple elements with an iterator, it is important that the iterator gets a return value from the erased element so it does not become invalid. -->
iterator를 사용하여 여러 요소들을 삭제할 때, iterator가 삭제되는 요소로부터 리턴값을 가지므로 무효화 되지 않다는 사실이 중요합니다.
(원문 : When erasing multiple elements with an iterator, it is important that the iterator gets a return value from the erased element so it does not become invalid.)

~~~~{.cpp} 
    vector<float> iterator::it = nums.begin(); // iterator는 첫 요소를 가리킴
    
    for(; it != num.end();){
    	if( *it > 5.2 ) it = nums.erase(it); // 삭제할 때 iterator가 리턴하는것이 확실하므로, 유효합니다. 
                                             // (원문 : be sure to return the iterator when erasing so it is not invalidated)
    	else ++it;
    }
~~~~
<!-- With vectors there is no speed difference between iterators or array-style [] indexes. -->
vector에서는 iterator를 사용할때와  배열스타일의 [] 인덱스를 사용할때의 속도차이는 없습니다.

----------------------------------------------------------------------------------------------------------------------------
### std::remove_if 와 ofRemove

<!-- *remove_if* checks conditions defined in a boolean function to determine if each element of the vector should be deleted or not. It moves any that return true to the end of the vector and then returns the iterator to the first element that should be removed. It does not remove anything, but can be used together with *erase* to actually delete the undesired elements. This is useful when all elements in the vector need to be checked to see if they should be deleted or not (for example if a particle has gone off screen or its life timer has reached zero and so on). -->
*remove_if*은 vector의 각 요소가 삭제 되어야 할지 아닌지를 판단하기 위해 boolean함수에 의해 결정된 상태변수를 체크합니다. 이것은 vector의 끝까지 true를 리턴하는 어떠한 요소로 이동하여 삭제되어야 할 첫 요소의 iterator를 리턴합니다. 이것은 vector의 모든 요소에서 그것들 중에 삭제되어야 하는지 아닌지를 체크할 필요가 있을 때에  유용합니다(예를들어 파티클중 스크린을 벗어나거나 혹은 수명을 다했을때 등).

<!-- The first step is defining a  function that returns a bool and takes in as a parameter a reference to an element of the type the vector contains. -->
첫번째 단계는 vector가 갖고 있는 타입의 요소의 레퍼런스를 함수인자로 전달하여 bool을 리턴하는 함수를 정의하는 것입니다.

~~~~{.cpp}
    bool checkDead( Particle &p ){
    	return p.isDead;
    }

~~~~ 

<!-- Then call *erase* with the iterator returned from *remove_if*: -->
그리고나서, *remove_if*로부터 리턴되는 iterator로 *erase*를 호출합니다:

~~~~{.cpp}
    vector<Particle>::iterator it = particles.remove_if(particles.begin(),particles.end(),checkDead);
    particles.erase( it, particles.end() );

    // 또는 한줄로 작성할 수 있습니다
    particles.erase( particles.remove_if(particles.begin(),particles.end(),checkDead), particles.end() );
~~~~

<!-- OpenFrameworks has a function called *ofRemove* that performs similarly. Create the function and pass it with the vector to perform both the *remove_if* and *erase* at the same time. -->
오픈프레임웍스에서는 *ofRemove*라는 동일한 수행을 하는 함수를 제공하고 있습니다. 함수를 생성하고 *remove_if*와 *erase*를 동시에 수행하는 vector를 전달합니다.

~~~~{.cpp}
    ofRemove(particles,checkDead); // particles는 vector이고, checkDead는 boolean함수입니다.
~~~~ 

<!-- Be careful that this format is not used with a vector of pointers to objects (see below). -->
이 포맷은 오브젝트를 가리키는 vector에서 사용되지 않음에 주의하세요 (아래를 읽어보시기 바랍니다)

----------------------------------------------------------------------------------------------------------------------------
<a name="sort"></a>
<!-- ## Sorting and shuffling a vector -->
## vector 정렬/섞기

<!-- c++ has a number of < algorithm > functions that work with vectors and iterators ( *remove_if* is one of these for example). Two very useful functions are *sort* and *random_shuffle*. In openFrameworks they are implemented as *ofSort* and *ofRandomize*. -->
C++은 vector와 iterator를 다루는 수많은 <알고리즘> 함수를 갖고 있습니다(*remove_if*나 그중 하나의 예입니다). 아주 유용한 두 함수들이 *sort*와 *ramdom_shuffle*입니다. 오픈프레임웍스에서는 이것들이 *ofSoft*와 *ofRandomize*로 구현되어있습니다.

<!-- *sort* works similarly to *remove_if* in that it can take in a vector and a boolean function that determines how the elements are sorted. The boolean function has two parameter that are elements of the type of vector, and returns true or false based on a comparison of the two. -->
*sort*는 *remove_if*와 아주 유사하게 동작하는데, vector와, 요소를 어떻게 정렬할것인지 결정하는 boolean 함수를 취합니다. boolean 함수는 vector의 타입의 요소들 중 두개를 함수인자로 받아서, 이 두 값을 비교해 true 또는 false를 리턴합니다.

~~~~{.cpp}
    // float를 담는 vector를 비교하여, 오름차순으로 정렬한다.
    bool my_compare( float a, float b){
        return a < b;
    }
~~~~

<!-- The vector range and boolean function can then be passed to *sort*: -->
vector의 범위와 boolean 함수가 *sort*함수로 전달됩니다:

~~~~{.cpp}
    vector<float>vals;
    vals.push_back(3.0);
    vals.push_back(.1);
    vals.push_back(2.3); // vector : 3.0, .1, 2.3
    
    std::sort( vals.begin(), vals.end(), my_compare); // 정렬 후 vector: .1, 2.3, 3.0
~~~~

<!-- *ofSort* with objects: -->
오브젝트로 *ofSort* :

~~~~{.cpp}
    bool my_compare( Particle &a, Particle &b){
        return a.pos.x < b.pos.x;
    }
    
    ...
    vector<Particle> particles;
    particles.assign(10,Particle());
    
    ofSort(particles,my_compare); // ofSort를 사용할때에는, 범위가 아닌 vector전체가 전달된다
~~~~    

<!-- *random_shuffle* and *ofRandomize* simply shuffle the elements of a vector into a random order. -->
*random_shuffle*과 *ofRandomize*는 단순히 vector의 요소들을 무작위한 순서로 섞습니다.

~~~~{.cpp}
    std::random_shuffle(vals.begin(),vals.end());  // 섞을 범위를 넘겨준다.
     
    ofRandomize(vals); // vector자체를 넘겨줍니다 (모든 요소들이 섞임)
~~~~

<!-- More information on <a href="http://www.cplusplus.com/reference/algorithm/"> algorithm </a> functions: -->
보다 많은 정보들은 <a href="http://www.cplusplus.com/reference/algorithm/"> 알고리즘 </a> 함수에서 확인하세요:

----------------------------------------------------------------------------------------------------------------------------
<a name="vectorsobjects"></a>
## 오브젝트의 vector

<!-- As indicated in the above examples, it is quite common to create vectors of objects.  -->
위의 예제에서 지적했듯이, 오브젝트의 vector를 생성하는것은 매우 일반적입니다.

~~~~{.cpp}
    vector<Particle> particles;
~~~~

<!-- In many situations this works great and is preferred. However, problems can sometimes arise if the class has member pointers and dynamically allocated memory but not a proper copy constructor. A vector of pointers to objects can be used, although shared pointers are probably best. Shared pointers would also be needed to use polymorphism / base classes. -->
대부분의 상황에서는 잘 동작하므로 선호됩니다. 하지만, 가끔 클래스가 완전한 복사 생성자가 아닌, 동적으로 할당되는 메모리를 가지며 멤버 포인터를 가질 때 문제가 발생합니다. 오브젝트를 가리키는 포인터의 vector를 사용할 때에는, 공용 포인터(shared pointer)가 최선의 방법입니다. 공용 포인터는 또한 아마도 다형성/부모 클래스의 사용을 필요로 합니다.

<!-- More on <a href="http://www.learncpp.com/cpp-tutorial/912-shallow-vs-deep-copying/">vectors and copy constructors</a>. -->
더 많은 내용은 <a href="http://www.learncpp.com/cpp-tutorial/912-shallow-vs-deep-copying/">vector와 복사생성자</a>를 살펴보세요.

----------------------------------------------------------------------------------------------------------------------------
<a name="vectorspointers"></a>
<!-- ## Vectors of pointers to objects -->
## 오브젝트를 가리키는 포인터의 vector

<!-- When using a vector of pointers to objects, the syntax is similar: -->
오브젝트를 가리키는 포인터의 vector를 사용할때, 문법은 유사합니다:

~~~~{.cpp}
    vector<Particle *> particlePointers;
~~~~

<!-- It is very important to remember that when erasing a pointer to an object in a vector it needs to be deleted as well as erased!!  -->
vector에서 오브젝트를 가리키는 pointer를 삭제할 때, erase될 뿐만 아니라 delete 되어야 합니다!!

~~~~{.cpp}
    // 인덱스를 이용하여 한 요소를 erase하고 delete한다.
    delete particlePointers[1];
    particlePointers.erase( particlePointers.begin()+1 );

    // delete와 erase를 루프문으로 수행한다
    vector<Particle>::iterator it = particlePointers.begin();
    for(; it != particlePointers.end();){
    	if( (*it)->isDead ){
    		delete *it;
     		it = particlePointers.erase(it);
    	}else
    		++it;
    }
~~~~ 

<!-- Note that this means erase and remove_if demonstrated above will not be sufficient. If pointers are needed, it is worthwhile to consider using shared pointers instead. <a href="http://www.openframeworks.cc/documentation/types/ofPtr.html">See ofPtr</a> -->
위에서의 erase와 remove_if 시연으로는 충분하지 않음을 명심하십시오. 만약 포인터를 사용해야 한다면, 공용 포인터(shared pointers)를 대신 사용하는 편이 낫습니다. <a href="http://www.openframeworks.cc/documentation/types/ofPtr.html">ofPtr를 살펴보세요</a>.

----------------------------------------------------------------------------------------------------------------------------
<a name="optimizing"></a>
<!-- ## Optimization with resize and reserve -->
## 예약과 리사이징을 통한 최적화

<!-- See <a href="http://arturocastro.net/blog/2011/10/28/stl::vector/">Arturo Castro's article.</a> -->
<a href="http://arturocastro.net/blog/2011/10/28/stl::vector/">Arturo Castro의 문서</a>를 읽어보세요.

----------------------------------------------------------------------------------------------------------------------------
<a name="of"></a>
## 오픈프레임웍스 예제

ofApp.h
~~~~{.cpp}
    #pragma once

    #include "ofMain.h"

    // create the particle class in the header for brevity

    class Particle{
    public:
    Particle(){
    		pos.set( 0, 0, 0 );
    		vel.set( ofRandom(-5,5), ofRandom(-4,-8), 0);
    	}
	
    	void update(){
    		pos += vel;
    		vel.y += .1;
    	}
	
    	void draw(){
    		ofEllipse(pos.x,pos.y,10,10);
    	}
	
    	ofPoint pos;
    	ofVec3f vel;
	
    };

    class ofApp : public ofBaseApp{
    public:
    	void setup();
    	void update();
        void draw();
	    
        void keyPressed(int key);
    	void keyReleased(int key);
    	void mouseMoved(int x, int y);
    	void mouseDragged(int x, int y, int button);
    	void mousePressed(int x, int y, int button);
    	void mouseReleased(int x, int y, int button);
    	void windowResized(int w, int h);
    	void dragEvent(ofDragInfo dragInfo);
    	void gotMessage(ofMessage msg);
	
    	// declare the vector of particles
    	vector<Particle> particles;
    };

~~~~    
    
ofApp.cpp
~~~~{.cpp}
    #include "ofApp.h"
    
    // write our boolean remove function
    bool shouldRemove(Particle &p){
    	if(p.pos.y > ofGetHeight() )return true;
    	else return false;
    }
    
    void ofApp::setup(){
    	ofSetFrameRate(60);
    }
    
    void ofApp::update(){
    	for(int i = 0; i < particles.size(); i++){
    		particles[i].update();
    	}
    	
    	ofRemove(particles,shouldRemove);
    }
    
    void ofApp::draw(){
    	
        ofTranslate( ofGetWidth()/2, ofGetHeight()/2);
        for(int i = 0; i < particles.size(); i++){
    		particles[i].draw();
    	}
    }
    
    void ofApp::keyPressed(int key){
    	particles.push_back( Particle() );
    }
~~~~    
    
    
iterator를 사용하는 ofApp.cpp
~~~~{.cpp}
    #include "ofApp.h"
    
    // write our boolean remove function
    bool shouldRemove(Particle &p){
    	if(p.pos.y > ofGetHeight() )return true;
    	else return false;
    }
    
    void ofApp::setup(){
    	ofSetFrameRate(60);
    }
    
    void ofApp::update(){
    	
    	for(vector<Particle>::iterator it = particles.begin(); it != particles.end(); it++){
    		(*it).update();
    	}
    	
    	ofRemove(particles,shouldRemove);
    }
    
    void ofApp::draw(){
    	
        ofTranslate( ofGetWidth()/2, ofGetHeight()/2);
        for(vector<Particle>::iterator it = particles.begin(); it != particles.end(); it++){
    		(*it).draw();
    	}
    }
    
    void ofApp::keyPressed(int key){
    	particles.push_back( Particle() );
    }
~~~~

<a name="more_resource"></a>
## 추가 참고 자료 (역자에 의해 추가됨)
stl:: vector와 관련된 자료는 한빛미디어에서 제공하는 [C++ STL::vector](http://www.hanbit.co.kr/network/view.html?bi_id=1606)에서도 보실 수 있습니다. <br/>
혹은 소프트웨어공학연구소에서 제공되는 [C++고급과정](http://soen.kr/lecture/ccpp/cpp4/cpp4.htm)중에서 40장-1절의 벡터 부분을 참고하실 수도 있습니다.