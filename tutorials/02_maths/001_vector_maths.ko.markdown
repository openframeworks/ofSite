---
date: 2012/02/23 10:00:00
title: 벡터 수학
summary: 벡터 수학의 기초 개념
author: Keith Pasko
---

공간속에서의 움직임은 그것들이 어디에 있는지, 그리고 어디로 가는지 알아야할 필요가 있습니다. 벡터 수학은 공간속에서의 물체를 컨트롤하는것에 대한 이해를 명확하게 제공하고, 복잡한 구조들에 대한 이해와 움직임을 제공합니다. 벡터는 애니메이션, 파티클 시스템, 3D 그래픽의 핵심입니다. 사실 백터 수학/선형 대수학은 거의 현대 컴퓨터 과학의 기술을 바탕으로 만들어졌습니다.

자 이제 기술적인 디테일로 넘어가봅시다. 휴. 숨한번 돌리구요. 그리 오래 걸리지 않을겁니다. 벡터는 공간이라는 추상적인 개념에서 방향과 크기를 의미합니다. 현재 우리의 목적에서 보면, 공간은 보통 2d나 3d 세계를 말합니다. 다른말로 하면, "기저벡터"와 "기준"을 가지고 있다고 할 수 있습니다. 이 세계안의 모든 것들은 필수적으로 갖고 있는 요소들입니다. 자 예를 들어 3d라 하면, 기준은 (0, 0, 0)이고, 기저벡터들은 [1,0,0], [0,1,0], [0,0,1]입니다. (이는 2d도 마찬가지입니다. 단지 세번째 요소가 없을뿐이지요. [0,0]이 기준이고, [1,0], [0,1]의 기저백터들을 갖습니다.) 이러한 것들은 더 친숙하게 불리게 되는데, 그것이 바로 x, y, z방향입니다. 이런 벡터들에 허용된 연산자들은 덧셈과 스칼라 곱입니다. 이것과 함께라면, 우리는 어떠한 벡터든 공간내에서 생성할 수 있습니다.


##백터 연산

###스칼라 곱
자, "우측방향"으로 3.14만큼 가자 라고 해봅시다.("x를 따라", "첫번째 요소를 따라"). 우리는 각 요소에 곱을 합니다. 따라서 결과는 아래가 됩니다.
<br/>[ 1\*3.14, 0\*3.14 , 0\*3.14 ] = [ 3.14 , 0 , 0 ]

비슷하게, 만약 우리가 "위로"("y방향으로", "두번째 요소 방향대로") 1.71만큼 간다라고 한다면, 결과는 아래와 같이 될 것입니다.
<br/> [ 0, 1, 0 ] \* 1.71 = [ 1 \* 1.71 , 0 \* 1.71 , 0 \* 1.71 ] = [ 0, 1.71 , 0 ]

이처럼 스칼라 곱이란, 백터의 크기를 변화하기 위해, 방향의 변화 없이 스칼라 만큼 곱한다는 사실을 알 수 있습니다. (만약 스칼라 값이 음수라면, 반대방향이 됩니다.) 

<script src="../../js/vectors.js" type = "text/javascript">
</script>

<script src = "../../js/math_tut/diagrams.js" type = "text/javascript">
</script>

<canvas id = "mult" width = "600" height = "250"> </canvas>

<script type="text/javascript">
drawMult();
</script>

OF에서는, * 연산자나 scale/getScaled함수를 이용해 스칼라 곱을 할 수 있습니다.

~~~~{.cpp}
ofVec3f v(1,2,3);
return v*3.14; // ofVec3f(3.14,6.28,9.42); 을 리턴합니다.
return v.getScaled(3.14); // 역시 ofVec3f(3.14,6.28,9.42);을 리턴합니다.
v.scale(3.14); // v에 내부적으로 3.14만큼 scale된 ofVec3f(3.14,6.28,9.42);을 리턴합니다.

//vec2f 와 vec4f 와도 잘 동작합니다.
ofVec2f v(0,1); return v*2.718; // ofVec3f(0,2.718,0);을 리턴합니다.
ofVec4f v(0,1,4,3); return v*2.718; // ofVec4f(0,2.718,10.872,8.154); 을 리턴합니다.

// 주의 : * 연산자가 꼭 스칼라 곱을 의미하는것만은 아닙니다.
ofVec3f v1(1,2,3); ofVec3f v2(2,3,4);
return v1\*v2; // 리턴값은 ofVec3f(2,6,12) 가 됩니다;
// 이것은 두백터의 행렬곱을 수행하는 예제이며, 이 챕터에서 설명하는 것과는 완전히 다른 것입니다.
~~~~

이와 관련된 OF 예제는 <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#scale">여기</a>에서 확인하실 수 있습니다.

###덧셈
자 이제, 우측으로 3.14만큼 간 뒤, 위로 1.71만큼 가자 라고 해봅시다. 우리는 우리가 방금 생성한 두 벡터들을 더할 수 있습니다. 
<br/> [3.14, 0, 0] + [0, 1.71, 0] = [3.14 + 0, 0+1.71, 0+ 0]. 

이것은 "대응원소덧셈(component-wiae addition)"이라 불리우는데, 각 벡터의 다른 요소들끼리 더하는것을 말합니다(x+x, y+y, z+z). 이것을 시각화해보면, 백터의 시작점을 다른 벡터의 끝에 놓는다 생각해볼 수 있습니다.

<canvas id = "add" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAdd();
</script>
<br/>

~~~~{.cpp}
ofVec3f v1(3.14,0,0);
ofVec3f v2(0,1.71,0);
return v1+v2; // returns ofVec3f(3.14,1.71,0);
~~~~

이와 관련된 OF 예제는 <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#operator+">여기</a>에서 확인하실 수 있습니다.

###응용
흠.. 이게 대체 어디에 쓰일것 같냐구요? 간단한 예를 한번 들어봅시다. a와 b 두개의 점이 공간에 있다고 가정하고, 한 점이 다른 점으로 이동한다 생각해봅시다. 아까 한 벡터의 시작점을 다른 벡터의 끝에 둔다고 생각한것 기억나시나요? 자, 만약 벡터 a에 어떤 벡터를 더해야 벡터 b가 될까 라고 생각해 본다면(여기서 어떤 벡터를 c라고 해봅시다) b : a + c = b 라고 할 수 있습니다. 따라서 우리가 구할 벡터 c = b - a가 됩니다.

<canvas id = "diff" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDiff();
</script>
<br/>

훌륭합니다, 이제 우리는 a에서 b의 방향(c = b - a)을 계산할 수 있습니다. 다시한번 말씀드리만, 저 수식의 뜻은 만약 우리가 a의 끝에 c를 더하면 그 끝이 b가 된다는 것을 의미합니다. 만약 c에 0과 1 범위의 값을 서서히 증가시키며 더해가면, a에서 b로 점차적으로 이동을 시킬 수가 있습니다.

<canvas id = "aim" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawAim();
</script>

자 이제 벡터수학을 이용하여 한 지점에서 다른방향으로 쉽게 입자를 날려볼 수 있겠군요. 이런 연산과 개념들은 3d에서도 똑같이 동작합니다. a + delta\*(b-a) 이렇게요! - 더이상 뭐가 필요할까요!


##기타 유용한 연산들

###길이/정규화(length/normalization)
벡터의 길이는 사각형의 변의 합을 제곱근으로 하는 값입니다. 음? 명확한 수식으로 표현해보죠. <br/>length(x,y,....) = sqrt (x\*x + y\*y + ...); 

예를들어, 벡터 (3,4)의 길이는 sqrt( 3\*3 + 4 \*4) = sqrt(25) = 5 가 됩니다.

우리가 원래 설명했던것 기억나세요? a에서 b로 간다고 했던것? 맞습니다. a와 b가 공간에서 얼마나 떨어져있느냐 - 이것이 바로 c :(b - a) 의 길이입니다. 이는 시뮬레이션이나 그래픽 프로그램에서 엄청 중요한 정보입니다. 벡터의 길이는 보통 |v| 또는 ||v||로 표기합니다. 만약 위키피디아나 어디선가 이것을 본다면 이제 이것이 무엇을 의미하는지 알 수 있을 것입니다.

정규화(Normalization)는 벡터를 벡터의 길이로 나누는 것을 의미하는데, 이렇게 하면 "단위 벡터"로 바뀌게 됩니다. 이렇게 정규화된 단위 벡터는 여전히 같은 방향을 가리키지만, 벡터의 길이만 1이 됩니다. 이렇게 되면, 벡터의 길이는 더이상 계산할 정보를 갖고 있지 않게 됩니다. 

자, 처음 섹션에서 예시로 들었던 단위벡터가 정규화 되지 않았다고 생각해보죠 - ( 1, 0, 0)이 아니라 (25504.77707, 0, 0)이라구요. 그리고 나서 3.14 * basis1 = (80085, 0, 0) 이러한 계산을 하계 된다면, 뭔가 직관적이지 않고 혼란스럽지 않나요? (벡터 (3.14, 0, 0)은 사실 x방향으로 3.14만큼 이동한거야 라고 생각하는게 훨씬 자연스럽죠, 80085라는 단위는 일단 제쳐두고요). 자 v / |v|을 보면 이제 이것은 정규화된 단위벡터이고, v의 방향을 갖는다 라고 이해하면 됩니다, 만세!

~~~~{.cpp}
ofVec3f v1(3.14,9.11,1.234);
return v1.length(); // sqrt(3.14*3.14 + 9.11*9.11 + 1.234*1.234) = 9.71465을 리턴한다.
v1.normalize(); return v1.length(); // 1을 리턴한다.
~~~~

###내적/투영/반사 (dot product / projection / reflection)
백터의 내적(dot product)는 좀 설명하기 어렵습니다. 일단 정의부터 살펴보죠. 

벡터 a와 b의 의 내적은 아래와 같습니다. (dot(a,b))<br/>
dot(a,b) = |a|\*|b|\*cos(theta)

여기서 theta는 두 백터 사이의 각을 의미하고 |a|와 |b|는 앞 섹션에서 설명했다시피 각각 벡터 a, b의 길이입니다. 근데 이게 무슨 쓸모가 있냐구요? 위 수식에 의해, 어떠한 차원에서든(2d, 3d, .... 10d?)두 벡터 사이의 각은 아래와 같이 계산이 가능합니다.<br/>
theta = acos(dot(a,b)/|a|*|b|)

앞 절에서 정규화(Normalizing)에 대해 배운 이유가 바로, 두 벡터가 정규화를 거쳐 단위벡터가 되면 acos(dot(a,b))를 계산하기가 상당히 간단해지기 떄문입니다.

벡터가 서로 얼마의 각도를 유지하는지 까지는 아니더라도, 두 백터를 정규화해버리면, dot(a,b) = cos(theta)이 됩니다. 수식이 이렇게 깔끔해지면서 cosine값 만이 남게되죠. 근데 왜 cosine에 관심을 가져야 할까요? cosine은 pi/2(90도)와 -pi/2(-90도)사이에서만 양의 값을 가지므로, 내적(dot product)의 결과값으로 두 벡터가 "같은 방향을 가리키고 있는가"를 판별할 수 있습니다. 만약 내적 dot(a,b)가 임계값과 1의 사이에 있다면 (threshold <= dot(a,b) <= 1), 대략 어림잡아 입계값에 근거하여 벡터 a,b가 같은 방향을 향하고 있다고 말할 수 있습니다. 만약 dot(a,b)가 음수라면, 다른 방향을 가리킨다고 할 수 있죠 (90도 이상을 이루고 있는것이죠). 극단적으로 -1이라면, 둘은 완전히 다른 방향을 가리킵니다. 실제로 확산광(diffuse lighting)을 계산할때, dot product를 사용합니다. 표면과 빛이 표면에 닿는 두 각이 얼마나 일직선이냐에 따라 표면의 밝기를 결정하는 것이지요.

<canvas id = "dot" width = "600" height = "250">
</canvas>
<script type="text/javascript">
drawDot();
</script>

As you can see from the diagram, we can use the dot product to compute the projection of one vector onto the other; it is just |b|*dot(a,|b|). We can also find the smallest distance from a vector a to a vector b, since it is e in the diagram, the perpendicular projection. We can even compute the reflection of a vector across another, since it is d - e ( = 2*d - a, or 2*|b|*dot(a,|b|) - a). The beauty of this formulation is that this abstracts to multiple dimensions- if you want to find the projection of a vector on a plane, you project onto the first basis, project onto the second basis, and add. All this comes from just the innocent looking dot product.

<!--다이어그램에서 보시다시피, 벡터의 내적은 하나의 벡터에서 다른 벡터로의 투영을 계산한다는 것을 알 수 있습니다. |b|\*dot(a, |b|) 이 수식으로요. 또한 벡터 a와 벡터 b와의 최소 거리를 구할 수도 있습니다. 해당벡터 e가 수직을 이루고 있기 때문입니다. 심지어 벡터의 반영(refelction of a vector across another)를 구할 수도 있습니다. d - e ( = 2*d - 2 또는 2*|b|*dot(a,|b|)-a)를 통해서요. 이 공식의 훌륭함은 다차원에서 두드러집니다. 만약 평면상의 어떠한 벡터에 대한 투영을 구하고 싶다면, 첫 요소에 project를 하고, 두번쨰 요소에 project를 한다음, 더하면 됩니다. 이 모든게 내적(dot product)를 통해 가능합니다.
-->
OF에서는, 내적을 구할때는 그냥 dot() 함수로 쉽게 다룰 수 있습니다 -
~~~~{.cpp}
ofVec3f v1(1,2,3);
ofVec3f v2(4,5,6);
return v1.dot(v2); //  1*4 + 2*5 + 3*6 = 32; 을 리턴합니다.
~~~~

이와 관련된 OF 예제는 <a href = "http://www.openframeworks.cc/documentation/math/ofVec3f.html#dot">이곳</a>에서 확인하실 수 있습니다.

##수학 nerd들을 위하여(hardcore nerding action for the math-minded)
For the hardcore, our "space" is a vector space, which must be "closed under addition and scalar multiplication," which is the fancy way of saying that all combinations of addition and scalar multiplication are also vectors in that same space. The standard bases are usually referred to by "e", ie e1, e2, e3, etc; we also note that we are most often discussing an orthonormal basis, which means that e1, e2, and e3 all have length 1, and are each at 90 degrees to one another. In the difference example, if we assume a and b are along a path, then c is one approximation of the path tangent.  ** Before  the uber-nerds out there slap my hand for being incomplete, there are a few other technical requirements to be a vector space; these can be found here http://en.wikipedia.org/wiki/Vector_space. The dot product is also called the inner product, and with length and this innner product defined, we get an "inner product space". In linear algebra terms, this inner product is described by transposing the object and multiplying; e.g. dot(a,b) = a(transpose) * b; the square length of a vector is often written as v(transpose) * v. Projection onto a subspace represented by a matrix is similar, A(transpose) * A * x (where A could represent the basis vectors of a plane, for example).


