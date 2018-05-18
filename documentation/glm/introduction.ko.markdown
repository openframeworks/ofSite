## OpenGL Mathematics

OpenGL Mathematics인 [GLM](https://glm.g-truc.net/0.9.8/index.html)은 사실상 C++에서 그래픽스 벡터 연산의 표준이 되었습니다. glsl의 문법을 그대로 차용하여, 프로그래밍 언어와 상관없이 거의 동일한 문법을 사용하기 때문에 OpenGL, shader 등등에서 구현이 쉬워졋습니다.

오픈프레임웍스는 0.10 버전부터는 GLM을 벡터 연산 라이브러리로 사용합니다. 이전 버전의 프로젝트가 ofVec* 클래스를 사용했지만, 최소한의 변경만 적용하면 됩니다. 만약 새 프로젝트를 만든다면, GLM을 사용하시는것을 추천드립니다.

### 네임스페이스

GLM 클래스와 함수들은 `glm` 네임스페이스에 담겨있으므로, 앞에 `glm::` 접두사만 붙이면 됩니다.

```
glm::vec3 v(2.f, 2.f, 2.f);
float l = glm::length(v);
```

또는, `glm` 네임스페이스를 import하는 `.cpp`파일의 앞부분에 아래와같이 작성합니다:

```
using namespace glm;
```

위와같이 작성하면, 클래스와 함수를 접두사 없이 사용할 수 있습니다:

```
vec3 v(2.f, 2.f, 2.f);
float l = length(v);
```

### 메소드가 아닌 함수들 

벡터, 매트릭스, 쿼터니언과 같은 GLM 클래스들은 메소드를 갖지 않습니다. 대신 glm은 이러한 클래스들을 연산하는 함수들을 사용합니다. 가령 벡터에 대하여 정규화를 하기 위해서는 아래와 같이 작성합니다:

```
glm::vec3 v(2.f, 2.f, 2.f);
glm::vec3 n = glm::normalize(v);
```

단 연산자들은 예외입니다. 연산자들은 아래와 같은 사용이 가능합니다. 

```
glm::vec3 v1(1.f, 1.f, 1.f);
glm::vec3 v2(2.f, 2.f, 2.f);
glm::vec3 v3 = v1 + v2;
```

### 주의사항


GLM 벡터의 정적 `length`함수는 벡터타입의 차원을 리턴합니다. 따라서 `glm::vec2::length()`는 2를, `glm::vec3::length()`는 3을 리턴합니다.

<!-- Because C++ allows to call static methods on instances of that class you can make the **error** of calling: -->
이는 C++은 호출시에 **에러를**일으킬 수 있는 클래스 인스턴스의 정적메소드의 호출을 허용하기 떄문입니다.

```
glm::vec3 v(2.f, 2.f, 2.f);
float length = v.length();
```

타입의 차원갯수 대신, 벡터의 길이를 얻기 위한 정확한 방법은 아래와 같습니다:

```
glm::vec3 v(2.f, 2.f, 2.f);
float length = glm::length(v);
```

Mostly when porting old code form ofVec to glm, because ofVec included such a method, it's easy to try and call that function which will compile without errors but won't do what you expect.

ofVec를 사용하는 예전코드를 glm을 사용하는 코드로 포팅할 때, ofVec 역시 동일한 이름의 메소드를 갖고 있으므로, 에러없이 컴파일 되겠지만, 실제로는 전혀 다른 동작을 하게 됩니다.

클래스 대신 인스턴스의 정적 메소드를 호출하는 지점에서 대부분의 최신 컴파일러는 이러한 경우에 대해 경고를 발생하므로, 예전코드를 GLM으로 포팅할 때 주의하시기 바랍니다.

### 엄격한 타입 검사

glm은 엄격한 타입만을 허용하는 시스템입니다, 이는 glsl의 동작과 흡사합니다. 다시말해 ofVectorMath와 달리 자동으로 타입을 변경해주지 않는다는 것입니다.

아래의 예를 살펴봅시다:

```
glm::vec2 v2(2.f, 2.f);
glm::vec3 v3 = v2;
```

위의 코드는 더이상 동작하지 않습니다, 대신에 아래와 같이 작성해야 합니다:

```
glm::vec3 v3 = glm::vec3(v2, 0.f);
```

반대로의 형 변환도 마찬가지입니다:

```
glm::vec3 v3(2.f, 2.f, 2.f);
glm::vec2 v2 = glm::vec2(v3)
```

이렇게도 가능합니다:

```
glm::vec2 v2(v3)
```

### 상수


GLM에는 유용한 상수들이 있습니다, 하지만 처음 사용할때에는 약간 이상하게 보일수도 있습니다. glm에서는 상수들이 템플릿 함수로 정의되어 있기 때문에, 이들을 호출할 때에는 특정 타입을 지정해줄 필요가 있습니다:

```
float p = glm::pi<float>();
double dp = glm::pi<double>();
```

### 곱(Multiplication) 연산자의 순서

마지막으로, 이전 버전의 오픈프레임웍스에서 벡터 수학 함수를 사용해왔었던 분들이라면, 멕터 및 매트릭스의 곱은 아래와 같이 사용했을것입니다:

```
ofVec3 v;
ofVec3f projected = v * model * view * projection;
```

glm 에서는, glsl의 곱 연산자의 순서와 마찬가지로, 순서가 반대가 됩니다. 따라서 아래와 같이 작성해야 합니다:

```
glm::vec3 v;
glm::vec3 projected = projection * view * model * v;
```