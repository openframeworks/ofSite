---
.. title: The new GLM syntax 
.. summary: How to use glm vectors instead the legacy ones
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

*주의*: 이 문서의 내용은 master branch를 사용하시는 분들에게만 유용합니다. 따라서 이 웹사이트에서 0.9.3버전을 다운받아 사용하시는 분들은 건너뛰시기 바랍니다.

다음 버전의 오픈프레임웍스에서는 내부적인 수학 라이브러리가 [GLM](http://glm.g.trunc.net)으로 교체됩니다. GLM은 벡터와 행렬연산을 수행할때 필요한 단일 수학 연산 C++라이브러리입니다. 이 라이브러리를 사용할 때에는  벡터의 선언 및 벡터연산을 실행하는 문법이 약간 변경되었습니다. 여전히 호환모드가 제공되긴 하지만, 기본적으로 활성화되어있는 새로운 모드에서는, 새로운 glm문법을 사용합니다.

혹 이 라이브러리에 관심없이 사용해왔던 문법을 계속 사용하고 싶거나, 혹은 이전의 오픈프레임웍스 master branch를 사용하는 에전 프로젝트를 구동하고 싶으신 분이 있으시다면, ofConstants.h 파일에 OF_USE_LEGACY_MESH 상수를 선언하시면 됩니다.

이렇게 하면, ofPolyline과 ofMesh에서 glm은 비활성화됩니다.

그렇지 않고, GLM를 사용하고 싶고, 오픈프레임웍스가 채택한 새 문법을 사용할 준비가 되신 분들이 있으시다면, 변경된 내용은 아래와 같습니다:
Instead, if you want to use GLM and prepare yourself for what will be the future syntax adopted by openFrameworks, these are the things that are changed:

### 벡터의 선언

벡터를 헤더파일에 선언할때는

```c++
ofVec3f myVector;
ofVec2f my2dVector;
```

위의 코드 아래와 같이 변경되어야 합니다:

```c++
glm::vec3 myVector
glm::vec2 my2dVector;
```

예를 들어 mesh에서 벡터가 온다면, 타입 선언에 대해서 걱정할 필요가 없습니다. C++ 11부터는 훌륭한 `auto`라는 키워드가 있으니까요. 이녀석은 컴파일러에게 어떠한 타입인지 스스로 알아내라고 말해줍니다. 가령 예로 아래와 같은 코드가 있다고 합시다:

```c++
vector<ofVec3f> normals = mesh.getNormals();
```

자 그리고 auto를 사용하여 새로운 모드로 이전하려면 아래와 같이 변경합니다

```c++
auto normals = mesh.getNormals();
```

### 메소드 네임

메소드는 이제 평범한 `c` 함수입니다. 대부분의 메소드는 정확하게 같은 이름을 갖지만, camel case를 사용하지 않으며, 약간 다른점이 있습니다:

```c++
v.length()
```

위는 아래처럼 변경됩니다

```c++
glm::length(v)
```

그리고

```c++
v.squaredLength()
``` 

위는 아래처럼 변경됩니다 

```c++
glm::length2(v)
```

### 컨데이너

순수한 glm모드를 사용할 때에는(현재는 기본적으로 활성화되어있습니다), 일반적으로 ofVec의 모든 컨테이너를 glm::vec의 컨테이너로 변경해야합니다.

```c++
vector<ofVec3f> myContainer
``` 

위는 아래로 변경됩니다

```c++
vector<glm::vec3> myContainer
```

앞서 언급했듯이, 함수 내에서 `auto`를 사용하는 것은, 컴파일러가 자동으로 타임을 인식하기 때문에 가장 훌륭한 해결책입니다. 그리고 이 방법은 glm 모드와 호환모드 양쪽에서 모두 동작합니다.  

### 전통적인 typedef

또한 호환모드와 glm모드 모두에서 호환가능한 컨테이너를 사용할 수 있도록 하는 몇몇의 typedef들이 있습니다.

```c++
std::vector<ofDefaultVec3>
```
위 코드는 호환 모드에서 `std::vector<ofVec3f>`, 
glm 모드에서 `std::vector<glm::vec3>`으로 변경되어야 합니다.

### ofVec를 사용할때 주의사항 (경고)

모든 구식의 ofVec(그리고 매트릭스들)의 클래스는 자동으로 변환되며, 이는 glm으로부터 생성됩니다. 따라서 코어 내에서는 모든것이 glm으로 리턴되거나 혹은 파라메터로 받아들여집니다만, 순수한 glm모드에서도 여전히 ofVec을 사용할 수 있습니다.

```c++
ofVec3f pos = camera.getGlobalPosition();
```

위 코드는 getGlobalPosition이 `glm::vec3`를 리턴하지만, 여전히 동작합니다. 하지만:

```c++
camera.getGlobalPosition().distance(node.getGlobalPosition());
```

위 코드는 더이상 동작하지 않으며, 아래와 같이 변경되어야 합니다:

```c++
glm::distance(camera.getGlobalPosition(), node.getGlobalPosition());
```

또는 이렇게 변경되어야 합니다:

```c++
ofVec3f cameraPos = camera.getGlobalPosition();
cameraPos.distance(node.getGlobalPosition());
```
