---
.. title: 보다 복잡한 데이터 타입의 벡터 정렬하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---


만약 여러분이 다중의 변수를 가지는 오브젝트를 정렬하려고 한다면, 복잡한 일일 것입니다. ofSort(...)에 boolean 함수를 사용하면, ofSort에게 어떻게 정렬할 것인지 알려줄 수 있습니다.
    
간단한 예제를 살펴봅시다 -- 우선, ofApp의 맨 상단에 오브젝트를 하나 정의합니다(이때 ofApp은 아마도 별도의 파일로 구성할수도 있겠죠..). 또한 sortMe라는 boolean 함수를 정의합니다. 이 sortMe 함수는 오브젝트를 가리키는 레퍼런스 두개를 취하여 비교한 뒤 b 잎에 위치해야 한다면 true를 리턴합니다. 이 예제에서는 나이로 정렬(오름차순) 할 것입니다만, 다른 속성으로 정렬할 수도 있습니다.


```cpp
#include "ofApp.h"

// 정렬을 하기 위한 정보를 갖고 있는 오브젝트를 생성합니다.
class myObject {
    public:
        float age;
        int id;
};

// ofSort에게 두 아이템을 어떻게 비교할것인지 알려주는 boolean 함수
bool sortMe(myObject & a, myObject & b){
    if (a.age < b.age){
        return true;
    } else {
        return false;
    }
}

//--------------------------------------------------------------
void ofApp::setup(){
    // 세 개의 오브젝트에 다른 정보를 입력합니다.
    
    myObject a;
    myObject b;
    myObject c;
    
    a.id = 0;
    b.id = 1;
    c.id = 2;
    
    a.age = 100;
    b.age = 1000;
    c.age = 5;
    
    // 이것들을 벡터에 넣습니다.
    
    vector < myObject > objects =  {a,b,c};
    
    // 정렬되기 전 내용을 출력합니다.
    
    cout << "pre sort" << endl;
    
    for (int i = 0; i < objects.size(); i++){
        cout << objects[i].id << " " << objects[i].age << endl;
    }
    
    ofSort(objects, sortMe);
    
    // 정렬된 후의 내용을 출력합니다.
    
    cout << "post sort" << endl;
    
    for (int i = 0; i < objects.size(); i++){
        cout << objects[i].id << " " << objects[i].age << endl;
    }
}
 
```

코드를 실행하면, 아래와 같은 결과를 얻을 수 있습니다.

```
pre sort
0 100
1 1000
2 5
post sort
2 5
0 100
1 1000
```

여기서 boolean함수를 변경할수 있다는 사실에 주목해주세요 -- 예를들어 내림차순으로 오브젝트를 정렬하기 위해서는 위의 예제에서 < 를 a >로 바꿔주면 됩니다 :

```
bool sortMe(myObject & a, myObject & b){
    if (a.age > b.age){
        return true;
    } else {
        return false;
    }
}
```

