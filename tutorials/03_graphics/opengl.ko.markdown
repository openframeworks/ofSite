---
date: 2013/09/01 00:00:00
title: OpenGL의 기초
summary: OF를 위한 OpenGL 소개
author: [Joshua Noble](http://twitter.com/fctry2/)
---


###Contents

* [소개](#introducing)
* [버텍스](#vertices)
* [메시](#meshes)
* [VBOs](#vbos)
* [매트릭스](#matrices)
* [텍스쳐](#textures)
* [카메라](#cameras)

###[소개](#introducing)
<!-- First things first, OpenGL stands for Open Graphics Language but no one ever calls it that, they call it OpenGL, so we're going to do that too. Secondly, at a very high level, OpenGL is how your program on the CPU talks to the program on your GPU. What are those you ask? Well, the thing is that your computer is actually made out of a few different devices that compute, the Central Processing Unit and Graphics Processing Unit among them. The CPU is what runs most of you think of as your OF application, starting up, keeping track of time passing, loading data from the file system, talking to cameras or the sound card, and so on. However, the CPU doesn't know how to draw stuff on the screen. CPUs used to draw things to screen (and still do on some very miniaturized devices) but people realized that it was far faster and more elegant to have another computational device that just handled loading images, handling shaders, and actually drawing stuff to the screen. The thing is that talking from one device to another is kinda hard and weird, luckily, there's OpenGL to make it, em, slightly easier, and OF to handle a lot of the stuff in OpenGL that sucks. -->
시작하면서 첫째로, OpenGL은 Open Graphics Language(오픈 그래픽언어)를 의미하지만, 어느 누구도 그렇게 부르지 않고 그냥 OpenGL이라고 부르기 때문에, 우리도 그렇게 하겠습니다. 두번째로, 고난이도의 레벨에서, OpenGL은 CPU상의 프로그램이 GPU상의 프로그램에게 말하는 방법입니다. 무슨말이냐고요? 음, 퓨터는 실제로 계산을 담당하는 몇몇 다른 장치들이 있는데, 중앙처리장치인 CPU와 그래픽처리장치인 GPU가 그들 중 하나입니다. CPU는 OF프로그램의 대부분을 구동하는 녀석이라고 보시면 됩니다. 프로그램을 실행하고, 실행한지 얼마나 지났는지를 모니터링하며, 파일시스템에서 데이터를 불러오고, 카메라나 사운드카드에게 명령하는 등등 의 일을 합니다. 하지만, CPU는 스크린에 그리는 것들은 알지 못합니다. CPU는 스크린상에 뭔가 그리긴 했었습니다(아주 최소한의 장치상에서말이죠), 하지만 그것이 훨씬 빨라야 할 필요가 있으며, 이미지를 불러오거나, 쉐이더를 다루거나, 실제 스크린상에 뭔가를 그리기 위해서는 다른장치가 필요하다는 사실을 꺠달았습니다. 한 장치에서 다른 장치로 대화하는것은 어렵고 괴상한 일이지요, 다행이, OpenGL이 이것을 가능케 합니다. 살짝 쉽기도 하구요. 그리고 오픈프레임웍스는 이런 구린 OpenGL의 많은 부분들을 다룰 수 있도록 되어있습니다.

<!-- OpenGL’s main job is to help a programmer create code that creates points, lines, and polygons, and then convert those objects into pixels. The conversion of objects into pixels is called the "pipeline" of the OpenGL renderer and how that pipeline works at a high level is actually pretty important to understanding how to make OF do what you want it to and do it quickly. OF uses OpenGL for all of its graphics drawing but most of the calls are hidden. It actually uses an implementation of OpenGL called GLFW by default. All graphics calls in the ofGraphics class use calls to common OpenGL methods, which you can see if you open the class and take a look at what goes on in some of the methods. So, let's say you want to call OF line. Well, that actually calls ofGLRenderer::drawLine() which contains the following lines: -->

OpenGL의 주된 역할은 프로그래머로 하여금 코드로 점, 선, 폴리곤을 생성하여 픽셀로 변환할 수 있게 하는 것입니다. 오브젝트를 픽셀들로 변환하는것을 OpenGL 렌더러의 "파이프라인"이라고 하는데, high level에서 파이프라인의 동작은 오픈프레임웍스에서 여러분이 원하는 것을 어떻게, 또 빠르게 할 수 있는지를 이해하는 데 있어서 매우 중요합니다. 오픈프레임웍스는 그래픽을 그릴때 OpenGL에 거의 다 의존하고 있지만, 대부분의 호출은 숨겨져 있습니다. 사실 기본적으로 GLFW라 불리는 OpenGL의 구현체(implementation of OpenGL)를 사용하고 있습니다. 모든 그래픽들은 ofGraphics 클래스의 범용 OpenGL 메소드를 호출하는데, 이것들은 해당 클래스를 열어 이런 메소드내부가 어떻게 동작하는지 살펴볼 수 있습니다. OF의 line함수를 호출한다고 해봅시다. 흠, 이는 실제로 ofGLRenderer::drawLine()를 호출하는데, 아래와 같은 코드를 담고 있습니다:

~~~~{.cpp}
	linePoints[0].set(x1,y1,z1);
	linePoints[1].set(x2,y2,z2);

	// 필요하다면, 부드럽게 한다.
	if (bSmoothHinted) startSmoothing();

	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, sizeof(ofVec3f), &linePoints[0].x);
	glDrawArrays(GL_LINES, 0, 2);

	// 필요하다면, 부드럽게 한다.
	if (bSmoothHinted) endSmoothing();
~~~~

<!-- Now, what's going on in there looks pretty weird, but it's actually fairly straight forward. Don't worry too much about the calls that are going on below, just check out the notes alongside them because, while the methods and variable names are kinda tricky, the fundamental ideas are not. -->
<!-- So, we've got two points representing the beginning and end of our line, so we set those with the values we passed into ofLine(): -->
자, 실제 내부 코드는 상당히 이상하지만, 사실 매우 직관적입니다. 아래 내용들이 어떻게 동작하는지는 너무 걱정하지말고, 이상적이지 않더라도 메소드와 변수들의 이름이 복잡하지만 그냥 한번 이것들을 살펴봅시다.
자, 우리는 선의 시작점과 끝점을 갖고 있으므로, ofline()에 전달되는 두 값들을 지정해줘야 합니다:

~~~~{.cpp}
	linePoints[0].set(x1,y1,z1);
	linePoints[1].set(x2,y2,z2);
~~~~

<!-- If we're doing smoothing, let's go ahead and do it: -->
우리가 뭔가를 부드럽게 하고 싶다면, 그렇게 해봅시다.

~~~~{.cpp}
		// 필요하다면, 부드럽게 한다
	if (bSmoothHinted) startSmoothing();
~~~~

<!-- Alright, onto the tricky part: -->
좋아요, 까다로운 부분입니다:

~~~~{.cpp}
	glEnableClientState(GL_VERTEX_ARRAY); // #1
	glVertexPointer(3, GL_FLOAT, sizeof(ofVec3f), &linePoints[0].x); // #2
	glDrawArrays(GL_LINES, 0, 2); // #3
~~~~

<!-- What we're doing is saying: -->
우리가 할려는것을 말로 표현하면 이렇습니다:

<!-- 1. hey, GPU, I'm about to send you an array and that array is the vertices of something I want you to draw. -->
<!-- 2. Ok, GPU, you're all ready for the array, here it is. There's 3 values in each point (x,y,z), the values are each floating point numbers, each object I'm sending over is the size of an ofVec3f object, and here's a pointer to the beginning of the first one. -->
<!-- 3. Ok GPU, now with the vertices that I just sent over, draw a line starting at the first item in the array, that's made up of two vertices. -->

1. 이봐, GPU, 너한테 배열을 보낼텐데, 그 배열은 내가 그리고싶은 뭔가의 버텍스들이 들어있어.
2. 오케이, GPU, 배열에 대해 준비가 됐지, 여기있어. 각 점은 3가지 값이 들어있고(x,y,z), 내가 보내는 각 오브젝트는 ofVec3f오브젝트의 크기로 끝날거야, 그리고 이것이 첫 값의 시작이야.
3. 오케이, GPU, 내가 방금 보낸 버텍스들로, 배열의 첫값을 라인의 시작점으로 하여 선을 그려. 두 버텍스로 완성해봐

<!-- That's kinda gnarly but comprehensible, right? The thing is though, that even though it's a bit weird, it's really fast. openFrameworks code uses something called Vertex Arrays (note the "glEnableClientState(GL_VERTEX_ARRAY)") to draw points to the screen. The particulars of how these work is not super important to understand in order to draw in 3-D, but the general idea is important to understand: pretty much everything that you're drawing revolves around passing some vertices to the graphics card so that you can tell OpenGL where something begins and ends. That "something" could be just a line, it could be a texture from a video, it could be a point in a 3D model of a bunny rabbit, but it's all going to have some points in space passed in using an array of one kind of another. There are all kinds of extra things you can tell OpenGL about your vertices but you pretty much always need to make some vertices and pass them along.  -->
뭔가 꼬여있지만 이해할 수 있겠죠? 비록 약간 이상하지만, 이것은 아주 빠릅니다. 오픈프레임웍스 코드는 화면에 점을 그리기 위해 버텍스배열들(Vertex Arrays : "glEnabledClientState(GL_VERTEX_ARRAY)"입니다)이라 불리는 것들을 사용합니다. 이것들이 3-D에서 어떤 순서로 그려지는지를 상세히 이해하는것은 사실 아주 중요하진 않습니다만, 
이해하는데 있어서 기본적인 개념은 매우 중요합니다: 분명한것은 여러분이 그리려 하는 모든것들은 몇몇 버텍스들로 그래픽카드로 보내지므로, OpenGL에게 시작점과 끝점을 알려주다는 것입니다. 그 "무엇"은 아마도 선이거나, 비디오의 텍스쳐일수도 있고, 아기토끼 3D모델의 점일수도 있습니다만, 전달되는 그것들은 공간의 점이 담긴 배열일 것입니다.OpenGL에게 알려줄 수 있는 다른 것들이 있지만, 분명한것은 반드시 버텍스로 만들어서 그것들을 전달해줘야 한다는 것입니다.

<!-- Alright, so that's what some OpenGL looks like, how does this all work? Take a look at the following diagram. -->
좋습니다, 지금까지 OpenGL이 어떻게 생겼는지, 어떻게 동작하는지 알아봤습니다. 그렇다면 아래 다이어그램을 살펴봅시다.

![파이프라인](002_images/pipeline.png)

<!-- For those of your who've read other OpenGL tutorials you may be wondering: why do these all look the same? Answer: because there's really no other way to describe it. You start with vertices and you end up with rastered pixels. Much like other inevitable things in life, that's all there is to it. -->
다른 OpenGl 튜토리얼을 읽어보신 분들은 알아차리셨겠지만 설명이 너무나도 똑같아서 의아해 하실겁니다. 사실 딱히 다른 방법으로 설명될 수 없기 떄문이죠. 어찌되었든 간에 여러분은 버텍스로 시작해서 래스터라이즈된 픽셀로 끝납니다. 마치 인생에서 피해갈수 없는 것들처럼 말이죠. 

###[버텍스](#vertices)

<!-- Vertices define points in 3d space that are going to be used to place textures, create meshes, draw lines, and set the locations of almost any other drawing operation in openFrameworks. Generally speaking, you make some vertices and then later decide what you're going to do with them. Drawing a line rectangle is just making 4 points in space and connecting them with lines. Drawing an ofImage is defining 4 points in 3D space and then saying that you're going to fill the space in between them with the texture data that the ofImage uses. Drawing a 3D sphere is,
unsurprisingly, just calculating where all the vertices for a sphere would need to go, defining those in an array, and then uploading that array to the graphics card so they can be drawn when sphere.draw() is called. Every time your OF application does any drawing, it's secretly creating vertices and uploading those to the grpahics card using what's called a vertex array that gets uploaded to the graphics card. In some cases, like when you call ofDrawRectangle(), the vertices are hidden from you. In other cases, like when you create an ofPolyline, you're participating in generating those vertices explicitly. Let's take a closer look at how that works. You call -->
버텍스란 3d공간에서의 점을 말하는데, 이 점은 텍스처를 위치시키거나 메시를 생성하거나, 라인을 그릴때, 혹은 오픈프레임웍스에서 뭔가를 그리는 모든것들을 위치시키는데 사용됩니다. 좀 더 쉽게 설명하자면, 우선 버텍스를 만들고, 그 다음 그것들로 뭘 할건지 결정하다 생각하면 됩니다. 사각형을 선으로 그리려면, 공간에 4개의 점을 그리고 선으로 연결해주면 됩니다. ofImage를 그릴려면 3D 공간에 4개의 점을 정의하고, ofImage가 사용하는 텍스쳐 데이터로 그 사이들을 채우라고 말하면 됩니다. 3D 구(sphere)를 그릴때엔, 놀랍지 않게도, 구를 그리기 위한 버텍스를 계산하여 구한 다음, 그것들을 배열에 담고, 해당 배열을 그래픽카드에 보내게 되며, 이후 sphere.draw()가 호출될때 그래픽카드가 그려냅니다. OF 프로그램이 뭔가를 그릴떄마다, 보이지 않는곳에서 버텍스를 만들고, 그것을 버텍스 배열(vertex array)에 담아 그래픽카드에 보냅니다. ofDrawRectangle()을 호출할 때와 같은 경우, 버텍스들은 여러분으로부터 숨겨집니다. 하지만 ofPolyline을 생성하는것과 같은 상황의 경우, 이런 버텍스들을 직접적으로 만들어내게 됩니다. 어떻게 동작하는지 좀더 자세히 살펴보도록 하죠. 아래 코드를 호출한다 해봅시다 :

~~~~{.cpp}
line.addVertex(x, y);
~~~~

<!-- Underneath, that just adds that point as a new ofVec2f to the ofPolyline instance. When it comes time to draw them, we have the ofGLRenderer calling: -->
내부적으로, 위 코드는 new ofVec2f로써의 점으로 ofPolyline 인스턴스에 추가됩니다. 이것이 그려질 때, ofGLRenderer가 호출됩니다 :

~~~~{.cpp}
if(!poly.getVertices().empty()) {
    // use smoothness, if requested:
    if (bSmoothHinted) startSmoothing();

    glEnableClientState(GL_VERTEX_ARRAY);
    glVertexPointer(3, GL_FLOAT, sizeof(ofVec3f), &poly.getVertices()[0].x);
    glDrawArrays(poly.isClosed()?GL_LINE_LOOP:GL_LINE_STRIP, 0, poly.size());

    // use smoothness, if requested:
    if (bSmoothHinted) endSmoothing();
  }
~~~~

<!-- So, really what you're doing is storing vertices and depending on whether you want OpenGL to close your application for you or not, you tell it in the glDrawArrays() method to either a) GL_LINE_LOOP close them all up or b) GL_LINE_STRIP don't close them all up. Again, like before, exactly what's going on there isn't super important, but it is good to understand that lines, rectangles, even meshes are all just vertices. Since I just mentioned meshes, lets talk about thos! If you want some [more info](http://www.opengl.org/wiki/Vertex_Specification). -->
자, 여러분이 진짜 하고자 하는것은 버텍스들을 저장하고, OpenGL이 여러분의 어플리케이션을 끄거나 그렇지 않든간에 그 버텍스들을 glDrawArrays()메소드로 a)GL_LINE_LOOP로 닫히게 할것인지 혹은 b)GL_LINE_STRIP으로 닫히지 않게 그려내는겁니다. 다시한번 말하지만, 앞서 말했던 것과 같이 어떻게 돌아가고 있는지 이해하는것이 중요한게 아니라, 라인, 사각형, 심지어 메시들이 버텍스다 라는것을 이해하는것이 중요합니다. 메시를 언급했으니 좀더 자세하게 살펴볼까요?  좀더 버텍스에 대해서 자세히 알고 싶으시다면 <a href="http://www.opengl.org/wiki/Vertex_Specification" target="
_blank">이곳</a>을 살펴보세요.

###[메쉬](#meshes)

<!-- The ofMesh is, like the ofPolyline, lots of vertices with some attendant information around them. In the case of a mesh though, there's a lot more information for some interesting reasons. An ofMesh represents a set of vertices in 3D spaces, and normals at those points, colors at those points, and texture coordinates at those points. Each of these different properties is stored in a vector. -->
<!-- Vertices are passed to your graphics card and your graphics card fill in the spaces in between them in a processing usually called the rendering pipeline. The rendering pipeline goes more or less like this: -->
ofMesh는, ofPolyline과 같이 그것들과 관련한 부수적인 정보들을 담고 있는 버텍스들입니다. 메시의 경우 심지어, 몇가지 흥미로운 이유로 많은 정보를 담고 있습니다. ofMesh는 3D 공간의 버텍스들의 세트, 해당 점의 노멀, 해당점의 색, 해당점의 텍스쳐 좌표를 의미합니다. 이러한 다양한 속성 각각은 벡터에 저장됩니다.

버텍스들은 그래픽카드로 전달되며, 그래픽카드는 렌더링 파이프라인이라 불리는 것으로 처리되어 공간들의 사이를 채우게 됩니다. 렌더링 파이프라인을 간략히 살펴보면 다음과 같습니다:

<!-- 1. Say how you're going to connect all the points. -->

<!-- 2. Make some points. -->

<!-- 3. Say that you're done making points. -->
1. 모든 점들을 어떻게 연결할것인지 말합니다.

2. 몇 점들을 만듭니다.

3. 점들을 만들었다고 말합니다.

<!-- You may be thinking: I'll just make eight vertices and voila: a cube. Not so quick. There's a hitch and that hitch is that the OpenGL renderer has different ways of connecting the vertices that you pass to it and none are as efficient as to only need eight vertices to create a cube. You've probably seen a version of the following image somewhere before. -->
여러분은 아마도 이렇게 생각할겁니다: 난 8개의 점을 만들거야. 짜쟌: 큐브입니다. 아주 빠르진 않습니다. 여러분이 전달해준 버텍스들 각각을 OpenGL 렌더러가 연결하는 방법은 다양합니다. 그리고 그리고 큐브를 만들기 위해 오직 8개의 버텍스를 전달하는것은 전혀 효율적이지 않죠. 아마도 아래에 보여지는 이미지의 여러 버전을 보신적이 있을겁니다:

![PRIMATIVES](002_images/gl_vertices_options.jpg)

<!-- Generally you have to create your points to fit the drawing mode that you've selected. A vertex gets connected to another vertex in the order that the mode does its winding and this means that you might need multiple vertices in a given location to create the shape you want. The cube, for example, requires eighteen vertices, not the eight that you would expect. If you note the order of vertices in the GL chart above you'll see that all of them use their vertices slightly differently (in particular you should make note of the GL_TRIANGLE_STRIP above). Drawing a shape requires that you keep track of which drawing mode is being used and which order your vertices are declared in. -->
일반적으로 여러분이 결정한 드로잉 모드에 맞는 점들을 생성해줘야 합니다. 버텍스가 다른 버텍스로 연결되는 순서는 드로잉 모드에 의해 결정되며, 이 말은 여러분이 원하는 형태를 생성하기 위해 주어진 좌표에 다중의 버텍스가 필요할 수도 있다는 의미입니다. 예를들어 큐브의 경우, 8개가 필요할 것이라 예상되지만 실제로는 18개의 버텍스가 필요합니다. 위에 보여지는 GL 차트안에서 버텍스의 순서를 보시면, 조금씩 다름을 알 수 있을것입니다(특히 GL_TRIANGLE_STRIP을 꼭 살펴봐야 합니다). 형태를 그릴때에는 어떤 드로잉모드에 따르는지, 그리고 버텍스들이 어떤 순서로 선언되어있는지를 알고 있어야 합니다.

<!-- If you're thinking: it would be nice if there were an abstraction layer for this you're thinking right. Enter the mesh, which is really just an abstraction of the vertex and drawing mode that we started with but which has the added bonus of managing the draw order for you. That may seem insignificant at first, but it provides some real benefits when working with complex geometry. You still do need to be able to think about how your vertices work. For instance, let's say we want to draw a square. Well, a square is 4 points, so we've got it figured out, right? -->
혹시 "이런것들이 추상화되어(숨겨져) 있다면 좋을텐데"라고 생각하시나요? 맞습니다. mesh에 들어가보면, 버텍스와 드로잉모드드들은 실제로 추상화되어있으며, 드로잉 순서를 관리하는것 또한 추가되어있습니다. 이러한 것들은 처음엔 별로 중요치 않은것처럼 보일수 있지만, 복잡한 형태를 그려낼때에 정말로 많은 이점이 있습니다. 여러분은 여전히 여러분의 버텍스가 어떻게 동작하는지에 대해서 생각해야할 필요가 있습니다. 예를 들어, 정사각형을 그린다고 해봅시다. 흠, 사각형은 4개의 점이 필요하니깐, 어떻게 해야할지 생각할수 있죠?

~~~~{.cpp}
    ofMesh quad;

    quad.addVertex(ofVec3f(0, 0, 1));
    quad.addVertex(ofVec3f(500, 0, 1));
    quad.addVertex(ofVec3f(500, 389, 1));
    quad.addVertex(ofVec3f(0, 389, 1));

    quad.draw();

~~~~

<!-- And then we get: -->
그렇다면 우리는 이런것을 얻을 수 있습니다:

![vertices_not_working.png](002_images/vertices_not_working.png)

<!-- That's not right. What you need to remember is that the default setting of the mesh is to make triangles out of everything, so you need to make two triangles. What you've given OpenGL is interpreted like so: -->
이건 잘못됐습니다. 여러분이 기억해야할것은 메시의 기본세팅은 삼각형이라는 것입니다. 따라서 두개의 삼각형을 만들 필요가 있습니다. 여러분이 OpenGL에게 전달한것은 이렇게 해석되어집니다:

![vertices.png](002_images/vertices.png)

<!-- You can use other drawing modes if you want but it's really best to stick with triangles (connected triangles to be precise) because they're so much more flexible than other modes and because they're best supported across different devices. Points and wires are also supported everywhere, quads for example, are not. Anyhow, let's draw our mesh correctly: -->
원한다면 다른 드로잉 모드를 사용할 수 있습니다. 하지만 삼각형을 이용하는것이 최선의 방법입니다(삼각형들을 연결하는것은 정확해야 합니다). 이는 다른 모드보다 훨씬 유연할 뿐만 아니라, 다양한 장치에서 최고의 호환성을 보여주기 때문입니다. 점과 선은 어디에서든 지원되지만, quads 같은 경우는 그렇지 않습니다. 어째ㅆ든, 우리의 메시를 정확하게 그려봅시다:

~~~~{.cpp}
    ofMesh quad;

    // 첫번째 삼각형
    quad.addVertex(ofVec3f(0, 0, 1));
    quad.addVertex(ofVec3f(500, 0, 1));
    quad.addVertex(ofVec3f(500, 389, 1));

    // 두번째 삼각형
    quad.addVertex(ofVec3f(500, 389, 1));
    quad.addVertex(ofVec3f(0, 389, 1));
    quad.addVertex(ofVec3f(0, 0, 1));

    // 첫번째 삼각형
    quad.addTexCoord(ofVec2f(0, 0));
    quad.addTexCoord(ofVec2f(500, 0));
    quad.addTexCoord(ofVec2f(500, 389));

    // 두번째 삼각형
    quad.addTexCoord(ofVec2f(500, 389));
    quad.addTexCoord(ofVec2f(0, 389));
    quad.addTexCoord(ofVec2f(0, 0));

    quad.draw(); // 이제 정사각형을 볼 수 있습니다.
~~~~

<!-- And now we have a mesh, albeit a really simple one. Ok, actually, that's wrong, but it's wrong on purpose. As you can see, we have exactly duplicated some of our addVertex calls above. In a tiny little square it doesn't matter if we use a few extra vertices - but when you're modelling a giant particle blob or something like that, it'll matter a lot. -->
비록 아주 단순하지만, 이제 메시를 갖게 되었습니다. 흠, 사실, 틀렸다고 할수 있네요, 목적에서 말입니다. 위에서 보시다시피, addVertex의 호출이 여러번 있었습니다. 작은 사각형의 경우 별 상관없지만, 만약 엄청나게 거대한 파티클 덩어리 같은 경우에는 큰 문제가 될 수 있습니다.

<!-- That's where the index comes in. Indices are just a way of describing which sets of vertices in our vertex array go together to make triangles. The first 3 indices in the index array describe the vertices of the first triangle, the second 3 describe the second triangle, and so on. It's pretty rad and it saves you having to make and store more vertices than necessary.  more typical usage is something like the following: -->
자 여기서 인덱스가 필요한 상황입니다. 인덱스들은 버텍스 배열내에서 삼각형을 만들때 어떠한 버텍스들을 세트로 하여 그릴지를 설명합니다. 인덱스 배열내의 첫 3개의 인덱스들은 첫 삼각형의 버텍스들을 설명하고 있으며, 두번째 3개는 두번째 삼각형을 말합니다. 이는 상당히 급진적인 방법이며, 필요로 하는것보다 많은 버텍스를 저장하고 만들어야 할 귀찮음들을 해결해줍니다. 보다 일반적인 사용법들은 아래와 같습니다:

~~~~{.cpp}
int width = 10, height = 10;
ofMesh mesh;
for (int y = 0; y < height; y++){
    for (int x = 0; x < width; x++){
        mesh.addVertex(ofPoint(x*20, y*20, 0)); // 새 버텍스를 만든다
        mesh.addColor(ofFloatColor(0,0, 0));  // 해당 버텍스에 색을 더한다
    }
}

// 이것이 수행하는것은 기본적으로 위의 버텍스 배열에 추가한 버텍스들로 삼각형을 만드는것에 대해 알아보는 것입니다.
// 주석으로 달린 숫자들은 반복문의 첫수행에서 추가된 인덱스들을 보여줍니다.
// 여기서 유념하여여 할것은 인덱스 1과 10이 재 사용된다는 점입니다.
for (int y = 0; y < height-1; y++){
    for (int x=0; x < width-1; x++){
        mesh.addIndex(x+y*width);         // 0
        mesh.addIndex((x+1)+y*width);     // 1
        mesh.addIndex(x+(y+1)*width);     // 10

        mesh.addIndex((x+1)+y*width);     // 1
        mesh.addIndex((x+1)+(y+1)*width); // 11
        mesh.addIndex(x+(y+1)*width);     // 10
    }
}
ofTranslate(20, 20);
mesh.drawWireframe();
~~~~

<!-- As we mentioned earlier when you’re using a mesh, drawing a square actually consists of drawing two triangles and then assembling them into a single shape. You can avoid needing to add multiple vertices  by using 6 indices to connect the 4 vertices. That gets more complex when you start working with 3-D. You’re going to draw an icosahedron and to do that you’ll need to know how each of the vertices is connected to all of the others and add those indices. When you create your ofMesh instance, you’re going to add all the vertices first and then add all of the indices. Each vertex will be given a color so that it can be easily differentiated, but the bulk of the tricky stuff is in creating the vertices and indices that the icosahedron will use. -->
앞서 언급했듯이, 사각형을 그리기 위해 메시를 사용할 때에는 실지로 두개의 삼각형 사용하고, 그 둘을 조합하여 하나의 형태를 만들어야 합니다. 이 때 4개의 버텍스를 연결하기 위해 6개의 인덱스를 사용함으로써 불필요한 버텍스 추가를 피할 수 있습니다. 이러한 과정은 3-D상에서 더 복잡해집니다. 20면체를 그릴때, 어떻게 각 버텍스들이 다른 버텍스와 연결되어야 하며, 인덱스들을 어떻게 추가해야할지 알아야 할 필요가 있습니다. 각 버텍스들은 색이 주어질 수 있으므로 쉽게 
색이 분화됩니다만, 20면체를 그리기 위해서는 버텍스와 인덱스들을 생성해줘야 하는 복잡한 과정을 필요로 합니다.

<!-- This is the icosahedron.h header file: -->
아래의 코드가 icosahedron.h 헤더파일입니다:
~~~~{.cpp}

#pragma once
#include "ofMain.h"

const int X = 158;
const int Z = 256;

// 가능한 한 최소한의 버텍스 데이터의 데이터입니다:
static GLfloat vdata[12][3] = {
{-X, 0.0, Z}, {X, 0.0, Z}, {-X, 0.0, -Z}, {X, 0.0, -Z},
{0.0, Z, X}, {0.0, Z, -X}, {0.0, -Z, X}, {0.0, -Z, -X},
{Z, X, 0.0}, {-Z, X, 0.0}, {Z, -X, 0.0}, {-Z, -X, 0.0} };

// 삼각형을 만들기 위해 연결되어져야 할 버텍스들의 인덱스 데이터 
// 12개의 버텍스를 위해 3개의 버텍스 인덱스를 한 세트로 하는 20개의 인덱스세트가 필요하다
//You’ll notice that for 12 vertices you need 20 indices of 3 vertices each:
static GLint indices[20][3] = {
{0,4,1}, {0,9,4}, {9,5,4}, {4,5,8}, {4,8,1}, {8,10,1}, {8,3,10}, {5,3,8}, {5,2,3}, {2,7,3}, {7,10,3}, {7,6,10}, {7,11,6}, {11,0,6}, {0,1,6}, {6,1,10}, {9,0,11}, {9,11,2}, {9,2,5}, {7,2,11}
};

class icosahedron : public ofBaseApp{

public:
  float ang;
  ofMesh mesh;
  void setup();
  void update();
  void draw();
};
~~~~

<!-- And now the cpp file: -->
아래는 cpp파일입니다:
~~~~{.cpp}
#include "icosahedron.h"

void icosahedron::setup()
{
  ofColor color(255, 0, 0); float hue = 254.f;

    // 이부분이 메시를 위해 모든 버텍스를 추가하고,
  // 각 버텍스에 색을 추가하는 부분입니다.
  for (int i = 0; i<12; ++i)
  {
    mesh.addVertex( ofVec3f( vdata[i][0], vdata[i][1], vdata[i][2] ));
    mesh.addColor(color);
    color.setHue( hue );
    hue -= 20.f;
  }

  for (int i = 0; i<20; ++i)
  {
    mesh.addIndex(indices[i][0]);
    mesh.addIndex(indices[i][1]);
    mesh.addIndex(indices[i][2]);
  }
}

// 약간 회전하도록 한다
void icosahedron::update(){
  ang+=0.1;
}

void icosahedron::draw()
{
  ofBackground(122,122,122);
  ofPushMatrix();
  ofTranslate(400, 400, 0);
  ofRotate(ang, 1.0, 1.0, 1.0);
  
  // 메시를 그린다. ofMesh는 세가지의 드로잉 메소드가 있다.
  // drawFaces() : 메시의 면을 채워서 그린다.
  // drawWireframe : 각 삼각형의 선만 그린다
  // drawVertices() : 각 버텍스의 점만 그린다.

  // 우리가 그릴려 하는것의 색을 보길 원하므로 면을 그리게 한다:
  mesh.drawFaces();
  ofPopMatrix();
}
~~~~

<!-- The order that you add the indices is vital to creating the right object because, I know this sounds repetitive, it's really important to tell things what order they're supposed to be connected in so that they get turned from points in space into planes in space into objects. There's a reason the ofMesh has a drawWireframe() mode and that reason is that you can always just tell the OpenGL renderer "hey, I don't care about connecting these up, just show me the points". Otherwise, when you want proper faces and shades and the ability to wrap textures on things, you need to make sure that your vertices are connected correctly. -->
여러번 반복해서 말하고 있지만, 올바른 도형을 그리기 위해 올바른 인덱스를 추가하는것은 매우 중요합니다. 어떠한 순서로 연결하여 점이 선이되고, 선이 모여 공간에서 면이 되고, 그것이 오브젝트가 되는지 말이죠. 이러한 이유로 ofMesh에 drawWireframe()메소드가 있는것이며, OpenGL 렌더러에게 "이봐, 어떻게 연결되는지는 상관없으니, 그냥 점만 보여줘"라고 말할 필요가 있는것입니다. 그렇지 않다면, 적절한 면과 그 위에 텍스쳐를 뭔가에 입히려고 할때, 반드시 버텍스들이 정확하게 연결되어있는지 확인해야 합니다.

###[VBOs](#vbos)

<!-- A VBO is a way of storing all of the data of vertex data on the graphics card. You’ve perhaps heard of Vertex Arrays and Display Lists and the VBO is similar to both of these, but with a few advantages that we’ll go over very quickly. Vertex Arrays just let you store all the vertex data in an array on the client side, that is, on the CPU side and then send it to the graphics card when you’re ready to draw it. The downside of that is that you’re still storing the data on the client side and sending it over to the graphics card. So, instead of making all of our vertex data in what’s called “immediate mode”, which means between a glBegin() and glEnd() pair (which you might remember) you can just store vertex data in arrays and you can draw stuff by dereferencing the array elements with array indices. The Display List is a similar technique, using an array to store the created geometry, with the crucial difference that a Display List lives solely on the graphics card. That's a little better because we're not shipping things from one processor to another 60 times a second. This means that once you’ve created the vertex data for geometry, you can send it the graphics card and draw it simply by referencing the id of the stored data. The downside is that display lists can’t be modified. Once they’ve been sent to the card, you need to load them from the card, modify them, and then resend them to the card to see your changes applied. Since one of the conveniences of moving things to the graphics card is reducing the amount of traffic between the graphics card and the rest of your system. The VBO operates quite similarly to the Display List, with the advantage of allowing you to modify the geometry data on the graphics card without downloading all of it at once. So you make something, you store it on the graphics card, and when you're ready to upload it, you simply push the newly updated values leaving all the other ones intact and in the right place.
 -->
VBO는 그래픽 카드 상에서 버텍스 데이터의 모든 정보를 저장하는 방법입니다. 아마도 버텡스배열과 디스플레이 목록에 대해서 들어봤을텐데요, VBO역시 이들과 비슷합니다만, 약간의 장점이 있으며, 우리는 이것들에 대해서 가볍게 살펴볼 것입니다. 버텍스 배열은 버텍스 데이터를 클라이언트 측에서 배열의 형태로 저장하게 해줍니다. 이 말은 그것을 그릴 준비가 되었을때 CPU측에서 그것을 그래픽 카드로 보낸다는 것이죠. 즉 "즉시모드(immediate mode)"에서 우리의 버텍스 데이터 모두를 만드는 것(이 말은 glBegin()과 glEnd() 사이에서를 의미합니다. 기억하시죠?)이 아니라, 대신에 버텍스데이터를 배열에 저장해두고 배열의 인덱스를 이용해 배열 요소들을 역 참조하여 그려낼 수 있다는 것입니다. 디스플레이 목록 또한 비슷한 기술인데, 배열을 이용해 생성된 지오메트리를 저장합니다. 이는 디스플레이 목록이 그래픽카드상에 단독으로 존재하는것으로써 주요한 차이점이라 할 수 있습니다. 이러한 점은 1초에 60번 한 프로세서에서 다른곳으로 전송할 필요가 없기 때문에 보다 낫습니다. 무슨말이냐 하면, 한번 지오메트리를 위한 버텍스데이터를 생성하면, 이것을 그래픽카드로 그리게 되는데, 이때 저장된 데이터id만 단순히 참조하여 그려내기 때문입니다. 하부적으로 디스플레이 목록들은 수정될 수 없습니다. 한번 카드로 보내지면, 카드에서 그것들을 불러와서, 수정하고, 다시 카드로 재전송해야 적용된 결과를 볼 수 있습니다. 그래픽카드로 이런것들을 옮기는 방법이 편리하기 때문에, 그래픽카드와 나머지 시스템상의 장치칸에 전송되는 트래픽의 양을 줄일 수 있습니다. VBO는 디스플레이 목록과 매우 습사하게 동작합니다. 거래픽카드상에서 지오메트리 정보를 수정하는 장점으로 인해서 한번에 모든것들을 받아올 필요가 없는것이지요. 따라서 여러분이 뭔가를 만들었다면, 그것을 그래픽카드에 저장하고, 그것을 업로드할 준비가 되었다면, 필요한 부분만 업로드하고 나머지는 그대로 두면 되는것입니다.

<!-- So, in OF we use the ofVboMesh to represent all the vertices, how they're connected, any colors to be drawn at those vertices, and texture coordinates. Because it extends the ofMesh, everything you learned about the ofMesh applies here too. You create some points in space, you give indices to the mesh so that it knows which points in space should be connected, colors if you want each vertex to contain a color, and finally texture coordinates for when you want to apply textures to that VBO, and you should be good to go. Creating an ofVboMesh is really easy, you can, for example, just make an ofSpherePrimitive and load it into a mesh: -->
자, OF에서는 ofVboMesh를 사용하여 모든 버텍스들을 표현하는데, 어떻게 그것들을 연결할지, 버텍스들을 어떤색으로 그릴것인지, 텍스쳐의 좌표를 어떻게 설정한것인지를 설정할 수 있습니다. ofVboMesh는 ofMesh를 상속받은 것이므로, ofMesh에 대해서 알고 있다면 그대로 다 적용하면 됩니다. 공간상에 점을 생성하고, 메시에 그것들의 인덱스들을 지정해주어 연결시키고, 각 버텍스에 색을 주고 싶다면, 버택스에 색을 포함시키고, 마지막으로 텍스쳐를 지정하고 싶다면 텍스쳐 좌표를 VBO에 적용시킵니다. 이렇게 하면 잘 될것입니다. ofVboMesh를 만드는것은 아주 쉽습니다. 여러분도 충분히 할수 있습니다. 예를들어 ofSpherePrimitive를 만들고 그것을 메시에 불러와봅시다:

~~~~{.cpp}
    ofSpherePrimitive sphere;
    sphere.set(100, 50);
    mesh = sphere.getMesh();
~~~~

<!-- Adding colors is very easy: -->
색을 추가하는것은 아주 쉽습니다 :

~~~~{.cpp}
for( int i = 0; i < mesh.getVertices().size(); i++ )
{
    mesh.addColor(ofFloatColor( float(i)/mesh.getVertices().size(), 0, 1.0 - (float(i)/mesh.getVertices().size()) ));
}
~~~~

<!-- There's a few new tricks to VBOs that you can leverage if you have a new enough graphics card, for instance, the ability to draw a single VBO many many times and position them in the vertex shader. This is called instancing and it's available in the ofVboMesh in the drawInstanced() method. You can see an example of this being used in the vboMeshDrawInstancedExample in examples/gl. Generally speaking, if you have something that you know you're going to keep around for a long time and that you're going to draw lots of times in lots of different places, you'll get a speed increase from using a VBO. This isn't always true, but it's true enough of the time. -->
여러분이 최신의 그래픽카드를 갖고 있다면, VBO에 적용할 수 있는 몇가지 새로운 트릭들이 있습니다. 예를들어 하나의 VBO를 가지고 여러번 그려 그것들을 버텍스쉐이더에 위치시키는 것처럼 말이죠. 이것을 인스턴싱(instancing)이라고 하며, 이것은 drawinstanced메소드 내부의 ofVboMesh로 가능합니다. 이것의 실제 사용에 관한 예제는 examples/gl 폴더에 vboMeshDrawInstancedExample에서 볼 수 있습니다. 일반적으로, 오랜시간동안 뭔가를 갖고 있으면서 그것들을 상당히 다른 곳에 위치하고 싶다면, VBO를 사용하여 빠르게 구동시킬 수 있습니다. 사실 이것은 항상 맞는것은 아니지만, 대부분은 맞습니다.

<!-- Although that's nowhere close to everything about vertices and meshes, we're going to move on to another frequently misunderstood but vital part of OpenGL: matrices. -->
비록 버텍스와 메시에 대해 모든것을 다루었다고 할수는 없습니다만, 매우 헥갈리지만 openGL의 핵심 이라고 할 수 파트를 다뤄보겠습니다: 매트릭스(좌표계)입니다.

###[매트릭스](#matrices)

<!-- Now, the thing about vertices is that the describe positions in space *but* those positions are *relative*. This important because the meaning of 10,10 can be very different if you've called ofTranslate(100, 100) or not. Imagine for a moment that the window of your OF application is a piece of paper and you are seated at a desk in front of this piece of paper with a pencil in your hand. Your hand is sitting at the 0,0 point of the paper, the upper-left corner. If you want to draw something in the lower-right corner of that piece of paper, you can move your hand down to the lower right of the page, or you can push the page so that the lower- right corner is beneath where your hand already sits. Take that thought and apply it to OF: drawing a circle in the lower right of a 300 × 300 pixel window would look like this: -->
지금까지, 버텍스는 공간속에서 위치를 설명하는것이라고 알고 있습니다. *하지만* 이러한 위치는 *상대적*인 것입니다. 이는 아주 중요한데 10, 10의 의미는 ofTranslate(100, 100)이라고 지정할때와 아닐때에 완전히 다르기 때문입니다. 잠깐 OF 프로그램의 윈도우가 한장의 종이라 생각하고, 책상에 앉아 종이한장과 연필을 쥐어보십시오. 여러분의 손을 종이의 0,0 좌표(종이의 좌상단 코너)에 위치해보십시오. 만약 종이의 우측 하단 모서리부분에 뭔가를 그리고 싶다면, 여러분의 손을 종이의 우측 하단으로 움직이거나, 또는 손은 가만히 둔체 종이를 좌측 상단으로 움직일 수 있을것입니다. 이러한 생각을 OF에 코드로 적용시켜봅시다: 원 하나를 윈도우의 우측 하단쪽으로 300x300픽셀 좌표에 그린다면 아래와 같을것입니다:

~~~~{.cpp}
ofCircle(270, 270, 30, 30);
~~~~

<!-- The ellipse is drawn 270 pixels down and 270 pixels to the right of the window. Now take a look at the following bit of code and think of moving the piece of paper: -->

원은 윈도우의 270픽셀만큼 아래로, 270픽셀만큼 우측에 그려졌습니다. 자 이제 아래의 코드를 살펴보시고, 종이를 움직인다 생각해봅시다:

~~~~{.cpp}
ellipse(270, 270, 30, 30);
ofTranslate(−30, −30);
ofCircle(270, 270, 30, 30);
~~~~

<!-- One easy way of thinking of the translate() method is to imagine that it moves the upper-left corner of the drawing space. Move the drawing space down 20 pixels, and all drawings will appear 20 pixels lower on the screen. The proper way of thinking of the translate() method is that it modifies the coordinate space of the application; that is, it moves the position of the 0,0 point in the application, what you might know as the origin of the coordinate system. -->
translate()을 쉽게 이해하는 방법중 하나는 드로잉 공간의 좌측 최상단을 이동시킨다 라고 생각하는것입니다. 드로잉 공간을 아래로 20픽셀 이동하면, 그려지는 모든것들은 스크린에서 20픽셀만큼 아래에 그려질 것입니다. translate()메소드에 관해 생각하는 올바른 방법은, 어플리케이션의 좌표계를 수정하는거라고 생각하는겁니다; 즉, 이는 어플리케이션의 0,0의 위치를 이동시키는 것이지요. 좌표계의 원점을 이동시킨다는 말과 같은 말입니다. 

<!-- Alright, so let's dispense with the metaphor: what's the piece of paper? It's a matrix. Yep. A matrix. An algebra class when you were 12 matrix. Gross, I know. But really, trust me, they're not that bad. -->
좋습니다. 메타포를 적용시켜봅시다: 종이가 뭐라고 했죠? 좌표입니다. 넵. 좌표요. 대수학 수업의 12차원을 생각하시나요? 웩. 압니다. 하지만 정말로, 절 믿어주세요. 별로 복잡하지 않습니다.

<!-- Let's get the idea of a matrix stack going first before we dig in deeper. Initially, there is only one transformation in the matrix stack, the original coordinate system. When a call is made to pushMatrix(), a new coordinate system is added to the stack. All drawing goes on in that new coordinate system, and any changes made are made to that system. Next, a translation is made to the coordinate system using the translate() method to move it 30 pixels to the right and 30 pixels down. This affects only the current coordinate system in the matrix stack. Finally, popMatrix() is called, and the translated matrix is removed from the matrix stack, meaning that any changes made to the old coordinate system will not be used in new drawings. -->
좀더 깊이 들어가기전에 매트릭스(좌표) 스택에 관해 생각해봅시다. 우선, 매트릭스 스택에 원래의 좌표계에 대해 한번의 좌표변형이 있습니다. pushMatrix() 호출이 있을때, 새로운 좌표계가 스택에 추가됩니다. 그려지는 모든것은 이 새 좌표계를 따르며, 수정하는 것 또한 시스템에 적용됩니다. 다음으로, translate()메소드에 의해 우측, 하단으로 각각 30픽셀씩 이동됩니다. 이는 매트릭스 스택 내의 좌표계에만 적용됩니다. 마지막으로, popMatrix()가 호출되어 translate되는 좌표계는 매트릭스 스택에서 삭제되는데, 이는 적용되고 있던 이전의 좌표계는 새로 그려내는것들에게는 효과가 없다는것을 의미합니다.

<!-- openFrameworks has convenience methods that will allow you to transform and alter your drawing in the same way that you’ve seen in Processing. We’ll jump right into how those methods are structured. To push a new set of matrices onto the stack, or pop a matrix off the stack, use the following: -->
오픈프레임웍스의 좌표이동이나 드로잉과 같은 것을 수행하는 편리한 메소드들은 프로세싱에서 본것들과 같습니다. 우리는 이러한 메소드의 설계를 프로세싱의 그것들과 동일하게 적용했습니다. 스택에 매트릭스를 삽입하거나, 또는 추출할때에는, 아래와 같이 사용합니다:

<!-- ofPushMatrix() - Saves the current coordinate system to the matrix stack, making it available for use. -->
ofPushMatrix() - 현재의 좌표계를 매트릭스 스택에 저장하고, 계속 사용할 수 있게 한다.

<!-- ofPopMatrix() - Removes the current coordinate system from the matrix stack, removing all of its transformations from any future drawings. -->
ofPopMatrix() - 매트릭스 스택에서 현재의 좌표계를 제거하고, 지금까지의 모든 좌표계변형이 앞으로 적용되지 않도록 한다.

<!-- Lets create a series of three matrices where each new matrix saves the previous one and then uses its coordinates as the origin, meaning that changes are cumulative: -->
각 매트릭스가 이전의 좌표계를 저장하고 새 좌표를 원점으로 하여 변화들이 누적되게 끔 세가지의 좌표계 시리즈를 만들어봅시다 :

~~~~{.cpp}

ofPushMatrix();
  ofTranslate(30, 0); // everything from here on out is going to be 30 pixels over
  ofPushMatrix();
    ofTranslate(0, 30); // everything from here on out is going to be 30 pixels over AND 30 pixels down
    ofPushMatrix();
      ofTranslate(60, 0); // everything from here on out is going to be 90 pixels over AND 30 pixels down
    ofPopMatrix(); // now we're back to 30 pixels over AND 30 pixels down
  ofPopMatrix(); 30 pixels over
ofPopMatrix(); // now we're back to 0,0
~~~~

So every change we make after ofPushMatrix() carries into everything that we do until we call ofPopMatrix();

~~~~{.cpp}

ofPushMatrix(); // set a matrix to hold all transform

  ofSetColor(255, 0, 0);
  ofDrawRectangle(0, 0, 20, 20);
  ofTranslate(50, 50);
  ofSetColor(255, 255, 0);
  ofDrawRectangle(0, 0, 20, 20);

  ofPushMatrix(); // add a matrix to the previous matrix
      ofTranslate(50, 50);
      ofSetColor(0, 255, 255);
      ofDrawRectangle(0, 0, 20, 20);
  ofPopMatrix(); // now back to the first matrix

  ofTranslate(0, 50);
  ofSetColor(0, 0, 255);
  ofDrawRectangle(0, 0, 20, 20);

ofPopMatrix();

~~~~

<!-- Alright, so what's going on underneath here? Well actually, there's three matrices that are mucking around. All the transformation stuff that we're doing is messing with the Model matrix, but there's two other ones. We'll lay them all out really quick (not because they're not important but because OF relieves you of having to do a ton of messing with them).  -->
좋습니다. 그렇다면 내부적으로는 어떤 일들이 일어나고 있을까요? 흠  실제로 3개의 매트릭스계가 있습니다. 우리가 실제로 다루고 있는 좌표걔의 모든것들은 모델 매트릭스와 관련이 있습니다. 그리고 이 모델 매트릭스는 두가지가 있습니다. 이제 우리는 요 두녀석을 재빨리 훑어볼겁니다.(중요하지 않기 때문이 아니라 OF가 여러분을 위해 엄청나게 복잡한것들을 관리해주고 있기 때문입니다).

<!-- *The Model matrix* -->
*모델 매트릭스*

<!-- A model, like an ofBox(), is defined by a set of vertices, which you can think of as ofVec3f objects, but are really just X,Y,Z coordinates of these vertices are defined relative to the center point where the drawing started. You can think of this as the 0,0,0 of your "world space". Imagine someone saying "I'm 10 meters north". If you don't know where they started from, that's not super helpful, but if you did know where they started from, it's pretty handy. That's what the Model matrix is. For OF, this is the upper left hand corner of your window. Really these aren't super meaningful without a view onto them, which is why usually in OpenGL we're talking about the ModelView matrix. That's just the Model matrix time the View matrix, and that begs the question: what's the view matrix? -->
ofBox()와 같은 모델은 버텍스들의 세트로 정의되어 있으므로, ofVec3f 오브젝트처럼 생각할 수 있습니다. 하지만 실제로 이 버텍스들의 x, y, z좌표들은 그려지기 시작하는 중심점으로부터의 상대적 좌표로 정의되어있죠. 이 중심점을 생각할때는 여러분만의 의 "world space"의 0, 0, 0이라 생각하시면 됩니다. 누군가가 "나는 북쪽으로 10미터에 있어"라고 말한다 생각해봅시다. 만약 그사람이 어디서부터 10미터라고 하는지 알지 못한다면, 저 말은 별로 유용한 정보가 아닐것입니다. 하지만 그사람이 어디서부터 시작되었는지를 않다면, 정말 편리한 정보겠죠? 이것이 바로 모델 매트릭스입니다. OF에서는, 윈도우의 좌측 상단 코너가 시작점이 됩니다. 하지만 이것들을 바라볼때, 이러한 정보들은 여전히 의미가 있다고 할 수 없습니다. 또한 이는 OpenGL에서 모델뷰 매트릭스를 언급하는것 이유이기도 하죠. That's just the Model matrix time the View matrix, 그런데 질문하나만 하죠. : 뷰매트릭스가 뭐죠?

<!-- *The View matrix* -->
*뷰 매트릭스*

<!-- Little known fact: cameras don't move, when you want to look at something new, the world moves around the camera. If I'm standing in Paris and I want to take a picture of a different side of the Eiffel Tower, I just walk around to the other side. Imagine if instead I just made the entire earth spin around so I could see a different side of the Eiffel tower. Totally not practical in real life but really simple and handy in OpenGL. -->
약간의 알려진 사실 : 여러분이 뭔가 새로운것을 바라볼때 카메라가 움직이는것이 아니라, 세계가 카메라 주위를 움직입니다.  만약 제가 파리에 서있는데 에펠탑의 반대편을 촬영하고 싶다면, 제가 그냥 반대편으로 걸어가면 됩니다. 하지만 대신 제가 지구를 발로 굴려서 돌게 하여 에펠탑의 반대편을 볼수 있게 한다면 어떨까요? 이는 실제 세계에서는 논리적이지 않지만, OpenGL에서는 아주 간단하고 편리한 생각입니다.

So initially your openFrameworks camera, an ofCamera instance let's say, is just at 0,0,0. To move the camera, you move the whole world, which is fairly easy because the location and orientation of our world is just matrices. So our ofBox that thinks it's at 100,100, might actually be at 400,100 because of where our camera is located and it never needs to change its actual values. We just multiply everything by the location of the view matrix and voila: it's in the right place. That means this whole "moving the whole world" is really just moving a matrix over by doing a translate. We're going to dig into what that looks like in a second, right now we just want to get to the bottom of what the "camera" is: it's a matrix. And the relationship between a camera and where everything is getting drawn is called the ModelViewMatrix. Super important? Not really, but you're going to run into it now and again and it's good to know what it generally means.
<!-- 여러분의 오픈프레임웍스 카메라인 ofCamera 인스턴스가 0, 0, 0이라고 하여 시작해봅시다. 카메라를 움직이기 위해선, 세계 전체를 움직이게 하면 됩니다. 이것은 상당히 쉬운데 세계의 위치와 방향은 그냥 매트릭스이기 때문입니다. 다라서 우리 ofBox가 생각하길 100, 100 -->

*The Projection matrix*
*프로젝션 매트릭스*

<!-- Ok, so know what the world space is and what the view space is, how does that end up on the screen? Well, another thing that the camera has, in addition to a location and a thing that it's looking at (aka View Matrix) is the space that it sees. Just like a movie screen, you've got to at some point turn everything into a 2D screen. A vertex that happens to be at 0, 0 should be rendered at the center of the screen. But! We can’t just use the x and y coordinates to figure out where something should be on screen. We also need to figure out its Z depth because something in front of something should be drawn (and the thing behind it shouldn't) For two vertices with similar x and y coordinates, the vertex with the biggest z coordinate will be more on the center of the screen than the other. This is called a perspective projection and every ofCamera has a perspective transform that it applies to the ModelView matrix that makes it represent not only how to turn a vertex from world space plus camera space but also to add in how a vertex should be shown in the projection that the camera is making. Ok, so before projection, we’ve got stuff in Camera Space: -->
자 이제 world space가 무엇인지, 그리고 view space가 뭔지는 알았는데, 스크린에서는 어떠한가요? 카메라의 위치정보 이외에 추가된 또다른 정보는 그것이 어디서 보고 있는지(뷰 매트릭스)dhk, 그것이 보고있는 space 입니다. 영화 스크린과 같이, 어떤 지점 바라보게 되면 모든것이 2D로 변합니다. 0,0 위치의 버텍스는 스크린의 중앙에 위치하게 됩니다. 또한 그 x,y가 비슷한 두 버텍스의 Z뎁스를 판별하여 그것이 다른 것보다 앞에 있으면 그것을 그려내야 하기 때문이죠(반대로 뒤에 있다면 그리지 말아야 하겠죠?).  이것을 perspective transform이라고 불리우는데, ofCamera가 갖고있는 perspective transform은 world space에서의 버텍스를 camera space에 적용하는것 뿐만 아니라 카메라가 만들어내는 projection에 버텍스를 추가해 만들어냅니다. 수행합니다. 좋습니다. projection 전에, camera space에서 할일이 생겼습니다:

![img](002_images/OF_GL_tutorial.jpg)

<!-- Now here's what that projection matrix does to it. Looks wrong, right? -->
자 이것이 저 projection 매트릭스가 하는 것입니다. 잘못되어 보이죠?

![img](002_images/OF_GL_tutorial1.jpg)

<!-- Looks wrong, right? But when you look at through the camera, it will look right and *that* is the secret of the projection matrix: multiplying everything by it makes it all look correct. The frustum is cube and objects that are near to the camera are big and things far away are smaller. -->

잘못됐나요? 하지만 카메라를 통해서 바라본다면, 이게 올바르게 보이는겁니다. 그리고 *이것*이 바로 projection 매트릭스의 비밀이죠. 모든것을 올바르게 보이도록 처리하는겁니다. 카메라에서 가까운 큐브는 크게, 그리고 멀리 있는것들은 작게 보이는겁니다. 

![img](002_images/OF_GL_tutorial2.jpg)

<!-- That reminds me of a [Father Ted joke](http://www.youtube.com/watch?v=vh5kZ4uIUC0). Unlike the toy cows, the projection matrix actually makes things far away small. Lots of times in OpenGL stuff we talk about either the ModelViewMatrix or the ModelViewProjectionMatrix. Both of those are just the different matrices multiplied by one another to get "where things are" and "where things are *on the screen*". Matrices themselves are the subject of a million different tutorials and explanations which range from awesome to useless but there is one thing that I want to put in here to explain a quick way to read and understand them in OpenFrameworks and OpenGL in general. There's a trick that I've learned to understand matrices which I'm going borrowing from Steve Baker for your edification. Here's an OpenGL matrix: -->
이건 정말이지 [Father Ted joke](http://www.youtube.com/watch?v=vh5kZ4uIUC0)를 생각나게 하는군요. 장난감 소와 달리, projection matrics는 정말로 멀리 있는것을 작게 만들어버립니다. 얘기했던 OpenGL의 것들중 여러번 얘기했던 ModelViewMatrix또는  ModelViewProjectionMatrix가 다르지만, 단지 "어디에 그것들이 있는지", "그것들이 화면상에 어디에 있는지"를 위해 서로 다른 매트릭스와의 곱연산이 수행될 뿐입니다. 매트릭스 자체만으로도 수만개의 서로 다른 튜토리얼과 설명이 존재합니다만, 오픈프레임웍스와 OpenGL에서의 매트릭스를 쉽게 설명하기 위해서 제가 Steve Backer의 아이디어를 소개하고자 합니다. 이것이 바로 OpenGL 매트릭스입니다:

~~~~{.cpp}
float m[16];
~~~~

<!-- It's a 4x4 array like this: -->
4x4 배열은 아래와 같습니다:

~~~~{.cpp}
m[0]  m[4]  m[ 8]  m[12]
m[1]  m[5]  m[ 9]  m[13]
m[2]  m[6]  m[10]  m[14]
m[3]  m[7]  m[11]  m[15]
~~~~

<!-- If you're not scaling, shearing, squishing, or otherwise deforming your shapes, then you're going to be using the last row, m[3], m[7], m[11] will all be 0 and and m[15] will be one, so we'll skip it for a moment. and focus on the rest. m[12],m[13] and m[14] tell you the translation, i.e. where something is, so that's easy, and the rest tell you the rotation. -->
만약 여러분의 도형을 확대하거나, 축소하거나, 찌그러트리거나,혹은 어떤 다른 변형이라도 가하지 않는다고 한다면, 그냥 마지막 열을 사용하면 됩니다, m[3], m[7], m[11] 모두는 0이 되고, m[15]가 그것이 됩니다. 따라서 일단은 그냥 넘어가도록하죠. 나머지것들에 대해 집중합시다. m[12], m[13] 그리고 m[14]가 translation을 말해줍니다. 또 다른 예를들자면 어떤 것들은 rotation을 말해줍니다. 

<!-- So, this is the way that I always visualize this: imagine what happens to four points  near to the origin after they are transformed by the matrix: -->
자, 이것이 제가 matrix를 시각화하는 방법입니다: origin에서 가까운 4개의 점에게 matrix에 의해 transform되면 어떤일이 벌어질지 생각해봅시다:

![img](002_images/rotation1.png)

<!-- These are four vertices on a unit cube (i.e. what that's 1 x 1 x 1) that has one corner at the origin. So, what we can do is pull apart the matrix and use differents elements to move that little cube around and get a better picture of what that matrix is actually representing. -->

단위 큐브(1x1x1의 크기를 갖는것)상의 네개의 버텍스가 있고, 그중의 하나의 모서리가 원점에 있다고 해봅시다. 그렇다면, 요 작은 큐브를 매트릭스에서 떼어내어 다른 요소들을 사용하여 움직임으로써 이 매트릭스가 실제로 무엇을 표현하고 있는지 보다 쉽게 알아볼 수 있을 것입니다.

<!-- Skipping the translation part (the bottom row, 3, 7, 11), then the rotation part simply describes the new location of the points on the cube. So with no rotation at all, we just have: -->
translation부분은 넘어가고(하단열의 3, 7, 11), 회전부분은 단순히 큐브상의 점의 새로운 위치를 표현하고 있습니다. 따라서 회전은 전혀 없는것이 되겠죠. :


    (1,0,0)  --->  ( m[0], m[1], m[2] )
    (0,1,0)  --->  ( m[4], m[5], m[6] )
    (0,0,1)  --->  ( m[8], m[9], m[10])
    (0,0,0)  --->  ( 0, 0, 0 )

<!-- After that, you just add the translation onto each point so you get: -->
그 다음, 각 점마다 translation값을 더합니다:

    (1,0,0)  --->  ( m[0], m[1], m[2] ) + ( m[12], m[13], m[14] )
    (0,1,0)  --->  ( m[4], m[5], m[6] ) + ( m[12], m[13], m[14] )
    (0,0,1)  --->  ( m[8], m[9], m[10]) + ( m[12], m[13], m[14] )
    (0,0,0)  --->  ( 0, 0, 0 ) + ( m[12], m[13], m[14] )

<!-- That may seem a bit abstract but just imagine little cube at the origin. Think about where the cube ends up as the matrix changes. For example, looking at this matrix: -->
추상적이지만 origin에서의 작은 큐브를 상상해볼 수 있습니다. 매트릭스의 변화로 큐브가 어디에서 끝날지 생각해보세요. 예를들어 이 매트릭스를 살펴봅시다:

    0.707, -0.707, 0,  0
    0.707,  0.707, 0,  0
    0    ,  0    , 1,  0
    0    ,  0    , 0,  1


<!-- When we draw that out, the X axis of our cube is now pointing somewhere between the X and Y axes, the Y axis is pointing somewhere between Y and negative X and the Z axis hasn't moved at all. The entire cube has been moved 1 units in X direction and 0 in the Y and Z: -->
이것을 그려보면, 큐브의 X축은 X와 Y축 사이의 어딘가에 있을것이고, Y축은 Y와 -X축 사이 어딘가 있을것이며, Z축은 전혀 움직임이 없을것입니다. 큐브 전체는 X방향으로 1만큼, Y와 Z방향으로 0만큼 이동되었습니다:

![img](002_images/rotation2.png)

<!-- What you'll tend to see in your ModelView matrix is a lot of rotation and translation to account for the position of your camera and of world space (that is, stuff in the rotation and translation parts of the matrix), what you'll tend to see in your projection matrix is some translation but mostly a lot of skewing (m[3], m[7], m[11]) to show how the camera deforms the world to make it look right on the screen. We're going to come back to matrices a little bit later in this article when we talk about cameras. -->
여러분이 ModelView 매트릭스를 통해 알고자 하는것은 많은 rotation과 카메라의 위치변화(transform)입니다. projection 매트릭스에서는 약간의 translation이 있지만, 대부분은 수많은 왜곡들(m[3], m[7], m[11])- 즉 카메라가 어떻게 세계를 왜곡시켜 스크린에서 올바르게 보여지게 하느냐 입니다. 잠시후 카메라에 대해서 얘기할때 우리는 다시 매트릭스에 대해서 얘기할 것입니다.

<!-- There's tons more to know about matrices but we've got to move on to textures! -->
매트릭스에 대해 알아야할것들이 산더미이지만, 일단 텍스쳐로 넘어가보죠!

###[텍스쳐](#textures)

<!-- So, really, a texture is a block of pixels on your GPU. That's different and importantly different, than a block of pixels stored on your CPU (i.e. in your OF application). You can't loop over the pixels in a texture because it's stored on the GPU, which is not where your program runs but you can loop over the pixels in an ofPixels object because those are stored on the CPU, which is where your OF application runs. OF has two ways of talking about bitmap data: ofPixels, stored on your CPU and ofTexture, stored on your GPU. An ofImage has both of these, which is why you can mess with the pixels and draw it to the screen. -->
텍스쳐는 말그대로 GPU상에서의 픽셀블록입니다. 이는 CPU상에 저장된 픽셀 블록과는 아주 다릅니다.(가령 OF 어플리케이션에선 말이죠). 텍스쳐는 CPU상에 저장되어 있기때문에 텍스쳐 내에서는 반복연산을 할 수 없습니다만, ofPixels 오브젝트안의 픽셀에 대해서는 CPU상(OF 어플리케이션이 동작하는 곳)에서 반복연산을 할 수 있습니다. 오픈프레임웍스는 비트맵 데이터에 대햇 얘기할 때 두가지 방법이 있습니다: CPU상에 저장되는 ofPixels와, GPU상에 저장되는 oftexture입니다. ofImage는 두가지 다를 갖고 있는데, 이는 pixel도 다룰 수 있고, 스크린에 그릴수도 있기 때문입니다.

<!-- There are three important characteristics of a texture, each of the defining part of those constraints: the texture type, texture size, and the image format used for images in the texture. The texture type defines the arrangement of images within the texture. The size defines the size of the images in the texture. And the image format defines the format that all of these images share. -->
텍스쳐는 중요한 세가지 성격이 있습니다: 텍스쳐 타입, 텍스쳐 크기, 그리고 테스쳐 내의 이미지에 사용되는 이미지 포맷입니다. 텍스쳐 타입은 텍스쳐내부 이미지의 정렬을 정의합니다. 사이즈는 텍스쳐내 이미지의 크기를 지정합니다. 그리고 이미지 포맷은 이러한 이미지가 쉐어하는 모든 포맷을 지정합니다.

<!-- You’ve already used textures without knowing it because the ofImage class actually contains a texture that is drawn to the screen when you call the draw() method. Though it might seem that a texture is just a bitmap, it’s actually a little different. Textures are how bitmaps get drawn to the screen; the bitmap is loaded into a texture that then can be used to draw into a shape defined in OpenGL. I’ve always thought of textures as being like wrapping paper: they don’t define the shape of the box, but they do define what you see when you look at the box. Most of the textures that we’ve looked at so far are used in a very simple way only, sort of like just holding up a square piece of wrapping paper. -->
여러분은 텍스쳐에 대해 모르면서도 이미 사용해왔습니다. oFImage클래스가 실제로 텍스쳐를 포함하고 있기 때문이죠. draw()메소드가 호출되면 이 텍스쳐가 화면에 그려집니다. 비록 이것이 텍스쳐가 그냥 비트맵이라고 생각할수도 있지만, 약간 다릅니다. 텍스쳐는 비트맵이 어떻게 화면에 그려지느냐 입니다; 비트맵이 텍스쳐에 불러와지고, OpenGL에 정의된 도형안에 그려질수 있습니다. 저는 텍스쳐에 대해서 생각할 때에는 항상 종이를 감싸는 것처럼 생각합니다: 이것들은 박스의 모양을 정의하고 있지 않지만, 박스를 바라볼때 어떻게 보이일지를 정의합니다. 텍스쳐 개념의 대부분은 마치 정사각형의 포장지 쪼가리를 쥐고 있는것처럼 아주 단순한 방법으로 사용됩니다.

~~~~{.cpp}
ofImage myImage;
// 메모리(RAM) 내부에 공간을 할당하고, jpg를 복호화하여, 
// 픽셀을 ofImage를 포함하고 있는 ofTexture오브젝트 내에 불러온다.
myImage.loadImage("sample.jpg");
myImage.draw(100,100);
~~~~

<!-- The ofImage object loads images from files using loadImage() and images from the screen using the grabScreen() method. Both of these load data into the internal texture that the ofImage class contains. When you call the draw() method of the ofImage class, you’re simply drawing the texture to the screen. If you wanted to change the pixels on the screen, you would also use an ofImage class to capture the image and then load the data into an array using the getPixels() method. After that, you could manipulate the array and then load it back into the image using setFromPixels(): -->
ofImage 오브젝트는 loadimage()를 사용하여 파일에서 이미지를 불러오거나, grabScreen()메소드를 이용하여 스크린의 이미지를 불러옵니다. 이 두가지 방법으로 데이터를 ofimage클래스를 포함하고 있는 내부 텍스쳐에 불러오게 되는 것이죠. 간단히 ofImage 클래스의 draw() 메소드를 호출하면, 텍스쳐를 스크린에 그리게 됩니다. 만약 화면상의 픽셀들 변경하고 싶다면, 화면의 이미지를 캡쳐하기 위해 ofimage클래스의 getPixels()메소드를 이용해 데이터들을 배열에 불러올 수도 있습니다. 이후, 배열을 조작하고 그것을 setFromPixels()를 사용하여 이미지로 다시 불러올 수 있습니다.

~~~~{.cpp}
ofImage theScreen; // 변수 선언
theScreen.grabScreen(0,0,1024,768); // 0,0부터 1024×768 크기의 사각형 영역을 가져온다.
// loadPixels();과 비슷하다.
unsigned char * screenPixels = theScreen.getPixels();
// screenPixels내부의 픽셀들을 편집한다
// ...
// 화면으로 다시 되돌린다
theScreen.setFromPixels(screenPixels, theScreen.width, theScreen.height, OF_IMAGE_COLOR, true);
theScreen.update();
// 그것을 그린다.
theScreen.draw(0,0);
~~~~

<!-- Textures in openFrameworks are contained inside the ofTexture object. This can be used to create textures from bitmap data that can then be used to fill other drawn objects, like a bitmap fill on a circle. Though it may seem difficult, earlier examples in this chapter used it without explaining it fully; it’s really just a way of storing all the data for a bitmap. If you understand how a bitmap can also be data, that is, be an array of unsigned char values, then you basically understand the ofTexture already. -->
오픈프레임웍스에서 텍스쳐는 ofTexture내에 포함되어 있습니다. 이것은 비트맵 데이터에서 텍스쳐를 생성하여, 다른 그려진 오브젝트를 채우는데 사용할 수 있습니다, 마치 원을 비트맵으로 채우는것처럼 말이죠. 비록 어려워 보일진 몰라고, 이 챕터의 바로 앞 예제에서 이미 사용되었습니다; 그냥 비트맵의 데이터를 모두 저장하는 방법입니다. 만약 여러분이 비트맵을 어떻게 데이터로 전환하는지만 이해한다면(unsigned char값의 배열로 말이죠), 기본적으로 ofTexture에 대해 이미 다 이해하고 있는겁니다.

<!-- There are three basic ways to get data into a texture: -->
텍스쳐로 데이터를 얻어오는 기본적인 방법은 세가지가 있습니다:

<!-- 1) load the data in using ofImage -->
1) ofimage를 사용해 데이터를 불러온다.

allocate(int w, int h, int internalGlDataType)

<!-- This method allocates space for the OpenGL texture. The width (w) and height (h) do not necessarily need to be powers of two, but they do need to be large enough to contain the data you will upload to the texture. The internal datatype describes how OpenGL will store this texture internally. For example, if you want a grayscale texture, you can use GL_LUMINANCE. You can upload whatever type of data you want (using loadData()), but internally, OpenGL will store the information as grayscale. Other types include GL_RGB and GL_RGBA. -->
이 메소드는 OpenGL 텍스쳐를 위해 영역을 할당합니다. 가로(w)와 세로(h)가 꼭 2의 배수일 필요는 없지만, 텍스쳐에 업로드하기 위해 충분히 큰 사이즈여야 합니다. 내부적인 데이터 타입(internalGlDataType)은 OpenGL이 이 텍스쳐를 어떻게 저장할 것인지를 위한 것입니다. 예를들어 흑백텍스쳐를 사용할것이라면, GL_LUMINANCE라고 지정합니다. loadData()를 이용해 어떠한 데이터타입이든 업로드할 수 있지만, 내부적으로는, OpenGL은 grayscale의 정보로 저장합니다. 다른 타입으로는 GL_RGB와 GL_RGBA 가 있습니다.

loadData(unsigned char * data, int w, int h, int glDataType) / loadPixels()

<!-- This method loads the array of unsigned chars (data) into the texture, with a given width (w) and height (h). You also pass in the format that the data is stored in (GL_LUMINANCE, GL_RGB, GL_RGBA). For example, to upload a 200 × 100 pixels wide RGB array into an already allocated texture, you might use the following: -->
이 메소드는 unsigned chars의 배열(data)에서 텍스쳐로. 주어진 width(w)와 height(h)를 이용해 불러옵니다. 여기서도 마찬가지로 GL_LUMINANCE, GL_
RGB, GL_RGBA 세가지 포맷을 전달할 수 있습니다. 예를들어 200x100사이즈의 RGB 배열에서 이미 할당된 텍스쳐에 업로드할때에는, 이와같이 작성하며 됩니다:

~~~~{.cpp}
unsigned char pixels[200*100*3];
for (int i = 0; i < 200*100*3; i++){
	pixels[i] = (int)(255 * ofRandomuf());
}
myTexture.loadData(pixels, 200, 100, GL_RGB); // random-ish noise
~~~~

<!-- Finally, we can just use: -->
마지막으로, 그냥 이렇게 사용하면 됩니다:

~~~~{.cpp}
ofLoadImage(theTex, "path/toAnImage.png");
~~~~

<!-- When we actually draw the texture what we're doing is, surprise, putting some vertices on the screen that say where the texture should show up and say: we're going to use this ofTexture to fill in the spaces in between our vertices. The vertices are used to define locations in space where that texture will be used. Voila, textures on the screen. The way that we actually say "this is the texture that should show up in between all the vertices that we're drawing" is by using the bind() method. Now, you don't normally need to do this. The draw() method of both the ofImage and the ofTexture object take care of all of this for you, but this tutorial is all about explaining some of the underlying OpenGL stuff and underneath, those draw() methods call bind() to start drawing the texture, ofDrawRectangle() to put some vertices in place, and unbind() when it's done. It's just like this: -->

우리가 실제 텍스쳐를 그릴때, 몇몇 버텍스들을 화면에 두고 이렇게 말하는겁니다: 이 ofTexture를 사용해서 버텍스들 사이의 공간을 채울거야! 버텍스들은 텍스쳐가 사용될 공간을 정의하고 있습니다. bind()메소드를 사용함으로써 "버텍스 사이에 텍스쳐를 그려서 보여줘!"라고 합니다. 지금은 이걸 필요가 없습니다. ofImage와 ofTexture오브젝트의 draw()메소드가 이 모든걸 다 해주고 있거든요. 하지만 이 튜토리얼은 OpenGL내부에서 벌어지고 있는 걸 커버하고 있으니 설명하겠습니다. 이런 draw()메소드는 bind()를 호출하여 텍스쳐를 그리기 시작하고, ofDrawRectangle()메소드는 버텍스를 공간에 두고, 끝나면 unbind() 로 마무리짓습니다. 이렇게 말이죠:

~~~~{.cpp}
tex.bind(); // 텍스처를 사용하기 시작한다.
quad.draw(); // quad 는 사각형을 의미합니다. ofMesh섹션처럼 말이죠
tex.unbind(); // 텍스쳐의 사용이 끝남
~~~~

<!-- Every texture that's loaded onto the GPU gets an ID that can be used to identify it and this is in essence what the bind() method does: say which texture we're using when we define some vertices to be filled in. The thing that's important in this is that each vertex has not only a location in space, but a location in the texture. Let's say you have a 500x389 pixel image. Since OF uses what are called ARB texture coordinates, that means that 0,0 is the upper left corner of the image and 500,389 is the lower right corner. If you were using "normalized" coordinates then 0,0, would be the upper left and 1,1 would be the lower right. Sidenote: normalized coordinates can be toggled with "ofEnableNormalizedTexCoords()". Anyhow, you have an image and you're going to draw it onto an ofPlanePrimitive: -->

GPU상에 불려지는 모든 텍스쳐는 구별을 위해 ID를 갖고 있으며, bind()메소드가 이것의 핵심입니다: 어떤 텍스쳐가 지정된 버텍스들이 지정될 때 사용되어 그 안에 채워질지 말이죠. 여기서 아주 중요한 것은, 각 버텍스들이 공간의 위치준만 아니라, 텍스쳐 내부의 위치를 갖고 있다는 것입니다. 500x389 크끼의 픽셀 이미지가 있다고 해봅시다. OF가 ARB텍스쳐 좌표시스템이라 불리우는것을 사용하고 있으므로, 이것의 의미는 0,0이 이미지의 좌측 상단이고, 500, 389는 거기서부터 우측 하단입니다. 여기서 "노멀라이즈된" 좌표를 사용한다면, 0,0이 좌측상단이고, 1,1이 우측하단이 됩니다. 사족 : 노멀라이즈된 좌표사용은 "ofEnableNormalizedTexCoords()"로 설정/해제할 수 있습니다. 어쨌든, 여러분은 이미지를 갖고 있고, 그것을 ofPlanePrimitive위에 그릴것입니다:

~~~~{.cpp}

// 500x389 픽셀 이미지 
bikers.loadImage("images/bikers.jpg");

// 같은 사이즈의 평면을 만든다.
planeHalf.set(500, 389, 2, 2);
// 텍스쳐 좌표를 0,0에서 250, 194로 설정한다.
// 이렇게 하면 좌측 상단 코너를 볼 수 있다.
planeHalf.mapTexCoords(0, 0, 250, 194);
~~~~

<!-- Now we'll make a plane with texture coordinates that cover the whole image. -->
이번에는 평면 전체를 덮도록 텍스쳐 좌표를 지정해봅니다

~~~~{.cpp}
planeFull.set(500, 389, 2, 2);
planeFull.mapTexCoords(0, 0, 500, 389);
~~~~

<!-- Now to draw this: -->
이제 그리기 위해:

~~~~{.cpp}
void testApp::draw(){
  ofSetColor(255);

    ofTranslate(250, 196);

    bikers.bind();
    planeHalf.draw();
    ofTranslate(505, 0); // 5px 패딩 적용
    planeFull.draw();
    bikers.unbind();
}
~~~~

<!-- We should see this: -->
결과는 이렇습니다:

![img](002_images/texture_coords.png)

<!-- Take note that anything we do moving the modelView matrix around, for example that call to ofTranslate(), doesn't affect the images texture coordinates, only their screen position. What about when we go past the end of a texture? -->
여기서 우리는 modelView 매트릭스에 관해서는 아무것도 변화를 주지 않았습니다. 예를들어 ofTranslate() 호출을 예를들면, 이미지 텍스쳐 좌표에는 아무런 영향을 주지 않고, 화면의 위치에만 영향을 미쳤습니다. 그렇다면 앞의 텍스쳐 끝은 어떨까요?

![img](002_images/past_last_texcoord.png)

<!-- Eww, right? Well, we can call: -->
으... 그렇죠? 흠. 이렇게 호출할 수 있습니다:

~~~~{.cpp}
    ofLoadImage(bikers, "images/bikers.jpg");
    bikers.setTextureWrap(GL_CLAMP_TO_BORDER, GL_CLAMP_TO_BORDER);
~~~~

<!-- Now we get: -->
이렇게 하면 아래와 같은 결과가 나옵니다:

![img](002_images/past_tex_border.png)

<!-- Since we're not using power of two textures, i.e. textures that are strange sizes, we can't use the classic GL_REPEAT, but that's fine, it's not really that useful anyways, honestly. -->
두 텍스쳐의 합을 다루는 챕터에 들어가기 전에 언급하자면, 이상한 사이즈의 텍스쳐에서, GL_REPEAT를 사용하는 예도 있습니다만, 솔직히 말해서, 이건 별로 유용한 것은 아닙니다.

*Depth v Alpha*

<!-- What happens if you draw a texture at 100, 100, 100 and then another at 100, 100, 101? Good question. The answer however, is confusing, if you've got alpha blending on, then, em, it's going to look wrong. -->
만약 100, 100, 100의 위치에 텍스쳐를 그리고, 100, 100, 101의 위치에 다른 텍스쳐를 그리면 어떻게 될까요? 좋은 질문입니다. 정답은 그러나, 까다롭습니다. 만약 알파블렌딩을 켜면, 흠.... 이상하게 보여질 것입니다.

~~~~{.cpp}
bikers.draw(0, 0, 101); // supposed to up front
tdf.draw(0, 0, 100); // getting drawn last
~~~~

![img](002_images/depth.png)

<!-- Enable depth test to get it to work: -->
depth text를 켜고 살펴봅시다:

~~~~{.cpp}
ofEnableDepthTest();
bikers.draw(0, 0, 101);
tdf.draw(0, 0, 100);
~~~~

<!-- Ok, so let's say we made our weird TDF image and bike image PNGs with alpha channel, chopped a hole out of the middle and loaded them in. -->
흠, 그래서 TDF이미지와 bike 이미지의 중앙에 구명을 뚫어 투명 알파채널이 있는이미지를 만들어서 불러와봤습니다.


~~~~{.cpp}
bikers.draw(0, 0, 0);
tdf.draw(100, 0, -50); // bikers보다 50픽셀 뒤에 있도록 한다.
~~~~

![img](002_images/alpha_enabled.png)

<!-- Well, we get the visibility, but the TDF is in from of the bikers, which it shouldn't be, let's turn on depth testing: -->
자, 이제 보이는군요, 하지만 TDF가 biker보다 앞에 있군요. 그러면 안되는데요.. depth test를 켜봅시다.

~~~~{.cpp}
ofEnableDepthTest();
bikers.draw(0, 0, 0);
tdf.draw(100, 0, -50); bikers보다 50픽셀 뒤에 있도록 한다.
~~~~

![img](002_images/depth_enabled.png)

<!-- That's not right either. What's happening? Turns out in OpenGL alpha and depth just don't get along. You can have which pixels selected according to their alpha values or you can have things placed according to their position in z-space. If you want to do both you need to do multiple render passes or other trickery to get it to work, which is a little out of the scope of this tutorial. Suffice to say, that it's a little bit tricky and that you might need to think carefully about how you're going to work with 3D objects and textures that have alpha enabled because it can some serious headaches. Alright, enough of that, this part of this tutorial has gone on long enough. -->
이것 역시 잘못되었네요. 대체 어떻게 된걸까요? OpenGL alpha와 depth는 함께 동작하지 않는것으로 보이는군요. alpha값에 따를지 혹은 z축의 위치에 따를지에 따라 픽셀을 가질수는 있습니다. 만약 두가지 모두를 원한다면, 두 렌더의 곱을 전달할 필요가 있거나, 혹은 다른 복잡한 과정이 필요한데, 이는 조금 까다로울 뿐더러, 3D오브젝트와 alpha가 활성화된 텍스처를 어떻게 다룰것인지 세심하게 생각해야할 필요가 있습니다. 이는 심각한 두통을 유발할것입니다. 좋습니다. 이정도면 됐습니다.

###[카메라](#cameras)

<!-- OpenFrameworks has two cameras: ofEasyCam and ofCamera. What's a camera you ask? Well, conceptually, it's a movie camera, and actually, it's a matrix. Yep, math strikes again. It's basically a matrix that encapsulates a few attributes, such as: -->
오픈프레임웍스는 두가지의 카메라를 가지고 있습니다: ofEasyCam 과 ofCamera입니다. 카메라가 뭘까요? 흠, 개념적으로, 비디오 카메라이며, 사실 이것은 매트릭스입니다. 네, 수학의 재습격이군요. 기본적으로 몇가지 속성들이 캡슐화된 매트릭스입니다. 이런거 속성들을 말이죠:

* Camera 위치
* Camera orientation (방향)
* Zoom (화각)
* 최대, 최소 가시거리(near and far planes)
* 뷰포트/윈도우의 화면비

<!-- And that's about it, you're just making a list of how to figure out what's in front of the camera and how to transform everything in front of the camera. You always have "a camera" because you always have a view, projection, and model matrix (remember those?) but the camera lets you keep different versions of those to use whenever you want, turning them on and off with the flick of a switch, like so: -->
카메라 앞에 있는것들이 무엇인지 리스트를 만들고, 그 모든것을 어떻게 transform
할것인지에 관한 것입니다. "카메라"는 항상 존재합니다. 왜냐하면 항상 view, projection, 그리고 model matrix(이것들 기억나시죠?)를 갖고 있기 때문이죠. 하지만 하지만 카메라는 여러문들이 원할때마다 이것들의 다른 버전을 가질수 있게 해줍니다. 스위치를 켜고 끄는것과 같이요. 이렇게요 :

~~~~{.cpp}
cam.begin();
// 다 그려!
cam.end();
~~~~

<!-- So, we always have a camera? Yep, and it has a location in space too. Just imagine this: -->
우리가 항상 카메라를 가지고 있다구요? 넵, 그리고 그것 역시 공간상의 위치를 갖고 있습니다. 이렇게 생각해보죠:

![img](002_images/camera.png)

<!-- What's that -7992 and 79? Well, those are just a guess at a 1024x768 sized window, from the renderers setupScreenPerspective() method: -->
-저 7992와 79는 뭔가요? 뭐, 이것들은 setupScreenperspective()메소드에서 그려내는 1024*768 사이즈 윈도우에서의 추측입니다. 

~~~~{.cpp}

  float viewW = currentViewport.width;
  float viewH = currentViewport.height;

  float eyeX = viewW / 2;
  float eyeY = viewH / 2;
  float halfFov = PI * fov / 360;
  float theTan = tanf(halfFov);
  float dist = eyeY / theTan;
  float aspect = (float) viewW / viewH;

  if(nearDist == 0) nearDist = dist / 10.0f;
  if(farDist == 0) farDist = dist * 10.0f;

  matrixMode(OF_MATRIX_PROJECTION);
  ofMatrix4x4 persp;
  persp.makePerspectiveMatrix(fov, aspect, nearDist, farDist);
  loadMatrix( persp );

  matrixMode(OF_MATRIX_MODELVIEW);
  ofMatrix4x4 lookAt;
  lookAt.makeLookAtViewMatrix( ofVec3f(eyeX, eyeY, dist),  ofVec3f(eyeX, eyeY, 0),  ofVec3f(0, 1, 0) );
  loadMatrix(lookAt);


~~~~

There's a bit of math in there to say: make it so the the view of the camera is relatively proportional to the size of the window. You'll see the same thing in the camera setupPerspective() method:

<!-- 설명을 위해 약간의 수학이 가미되어있습니다.  -->

~~~~{.cpp}
  ofRectangle orientedViewport = ofGetNativeViewport();
  float eyeX = orientedViewport.width / 2;
  float eyeY = orientedViewport.height / 2;
  float halfFov = PI * fov / 360;
  float theTan = tanf(halfFov);
  float dist = eyeY / theTan;

  if(nearDist == 0) nearDist = dist / 10.0f;
  if(farDist == 0) farDist = dist * 10.0f;

  setFov(fov); // 얼마나 넓은 뷰를 가질것인가?
  setNearClip(nearDist); // 최소가시거리 
  setFarClip(farDist); // 최대 가시거리
  setLensOffset(lensOffset);
  setForceAspectRatio(false);  // 화면비율

  setPosition(eyeX,eyeY,dist); // 어디에 있지?
  lookAt(ofVec3f(eyeX,eyeY,0),ofVec3f(0,1,0)); // 어딜보고 있지?
~~~~

<!-- We get the size of the viewport, figure out what the farthest thing we can see is, what the nearest thing we can see is, what the aspect ratio should be, and what the field of view is, and off we go. Once you get a camera set up so that it knows what it can see, it's time to position it so that you can move it around. Just like in people, there are 3 controls that dictate what a camera can see: location, orientation, and heading. You can kind of separate what a camera is looking at from what it's pointing at but you shouldn't, stick with always looking ahead, the ofEasyCam does. Because a ofCamera extends a ofNode, it's pretty easy to move it around. -->
우리는 viewport의 크기, 최소/최대가시거리, 화면비율, 화각을 알고 있고, 시작하면 됩니다. 카메라의 셋업을 마쳤다면 보여질수 있으니, 카메라가 돌아다닐수 있도록 위치를 지정해줄 시간입니다. 사람에 비유하자면, 카메라가 볼수 있도록 3가지의 지시사항이 있는것이죠: 카메라를 어디에 놓을지, 어느방향에 놓을지, 그 다음 어디를 바라보게 할지 입니다. 카메라 삼각대를 어디에 바라보게 두고 카메라를 어느 방향으로 놓을지 이 두가지 상황을 분리할 수 있지만, ofEasyCam 은 항상 앞을 바라보도록 되어있습니다. ofCamera는 ofNode를 상속받은 클래스이므로, 움직이게 하는것은 아주 쉽습니다.

~~~~{.cpp}
cam.setPosition(ofVec3f(0, 100, 100));
~~~~

<!-- it's also pretty easy to set the heading: -->
바라보는 방향을 지정하는것 또한 아주 쉽습니다:

~~~~{.cpp}
cam.lookAt(ofVec3f(100, 100, 100));
~~~~

<!-- You'll notice that the signature of that method is actually -->
이 메소드은 사실 아래와 같습니다

~~~~{.cpp}
void lookAt(const ofVec3f& lookAtPosition, ofVec3f upVector = ofVec3f(0, 1, 0));
~~~~

<!-- That second vector is so that you know what direction is up. While for a person it's pretty hard to imagine forgetting that you're upside-down, but for a camera, it's an easy way to get things wrong. So as you're moving the camera around you're really just modifying the matrix that the ofCamera contains and when you call begin(), that matrix is uploaded to the graphics card. When you call end(), that matrix is un-multiplied from the OpenGL state card. There's more to the cameras in OF but looking at the examples in examples/gl and at the documentation for ofEasyCam. To finish up, lets check out the way that the ofEasyCam works, since that's a good place to start when using a camera. -->
저 두번째 벡터는 어떤 방향이 위라는 것을 알려줍니다. 사람에게 있어서 어디가 위이고 아래인지 헷갈리는 상황은 상상하기 힘듭니다, 하지만 카메라의 경우, 잘못되기 쉽습니다. 카메라를 이동시키시 위해서는 ofCamra가 갖고있는 매트릭스를 수정해야 하는데, begin()메소드를 호출할때, 매트릭스는 그래픽카드로 보내어집니다.  end()를 호출할 때, 이 매트릭스는 OpenGL state card에서 un-multiplied됩니다. examples/gl의 예제와 ofEasyCam 문서에서 카메라의 더 많은 예를 볼 수 있습니다. 카메라의 사용법을 알았으니, 마치기 위해, ofEasyCam의 동작을 살펴봅시다. 

<!-- So, as mentioned earlier, there are two camera classes in OF, ofCamera and ofEasyCam. ofCamera is really a stripped down matrix manipulation tool for advanced folks who know exactly what they need to do. ofEasyCam extends ofCamera and provides extra interactivity like setting up mouse dragging to rotate the camera which you can turn on/off with ofEasyCam::enableMouseInput() and ofEasyCam::disableMouseInput(). There's not a huge difference between the two, but ofEasyCam is probably what you're looking for if you want to quickly create a camera and get it moving around boxes, spheres, and other stuff that you're drawing. -->
앞서 언급한것처럼, 오픈프레임웍스에는 ofCamera와 ofEasyCam이라는 두개의 카메라 클래스가 있습니다. ofCamera는 매트릭스를 어떻게 조작할 수 있는지 알고 있는 고수들을 위한 툴입니다. ofEasyCam은 ofCamera의 확장클래스로 마우스 드래그를 이용해 카메라를 회전시킬수 있는 상호작용을 제공합니다. 이는 ofEasyCam::enbaleMouseinput()과 ofEasyCam::disableMouseInput()을 이용해 켜고 끌수 있습니다. 이 두가지는 큰 차이는 없습니다만, 손쉽게 카메라를 생성하여 박스나, 구, 또는 그려낸 다른 도형주위를 회전할려면 ofEasyCam이 여러분이 찾는 카메라입니다.

<!-- Onto using these things: both of those classes provide a really easy method for setting a target to go to and look at: -->
이것들을 사용하기 위해 : 두 클래스 모두 바라보는곳을 지정하기 위해 아주 쉬운 몌소드를 제공합니다.
~~~~{.cpp}
void setTarget(const ofVec3f& target);
void setTarget(ofNode& target);
~~~~

<!-- These methods both let you set the what a camera is looking at and since you can always count on them to allow you to track something moving through space, pretty handy. In ofCamera there are other methods for doing this and more but I'll let you discover those on your own. One last thing that's tricky to do on your own sometimes: So how do you figure out what where something in space will be relative to a given camera? Like, say, where a 3D point will be on the screen? Voila, worldToScreen()! -->
이 메소드들 모두는 어떤 카메라로 바라볼수 있게 할것인지, 또 몇개의 카메라가 있는지를 아주 쉽게 세팅/제공 해줍니다. ofcamera에는 이를 위해 더 많은 다른 메소드들이 있지만, 여러분이 스스로 찾아보길 바랍니다. 마지막으로 여러분이 스스로 생각해봐야할 까다로운 것들이 있습니다: 특정 카메라에서 어떤 것들이 어디에 있는지는 어떻게 알 수 있을까요? 무슨말이냐고요? world의 3D점은 screen상에서 어디에 있을까요? 짜쨘, worldToScreen()입니다!

~~~~{.cpp}
ofVec3f worldToScreen(ofVec3f WorldXYZ, ofRectangle viewport = ofGetCurrentViewport()) const;
~~~~

<!-- How do you figure out where something on the screen will be relative to the world? Like, say, where the mouse is pointing in 3d space? -->
screen상의 뭔가가 world에서는 어디에 있는지 어떻게 알 수 있을까요? 쉽게 말해 3d상에서 마우스는 어디에 있을까요?

~~~~{.cpp}
ofVec3f screenToWorld(ofVec3f ScreenXYZ, ofRectangle viewport = ofGetCurrentViewport()) const;
~~~~

<!-- How do you figure out where something on the screen will be relative to the camera? -->
screen상의 뭔가가 camera에서는 어디에 있을까는 어떻게 알 수 있을까요?

~~~~{.cpp}
ofVec3f worldToCamera(ofVec3f WorldXYZ, ofRectangle viewport = ofGetCurrentViewport()) const;
~~~~

<!-- How do you figure out where something relative to the camera will be in the world? -->
world상의 뭔가가 camera에서는 어디에 있을까는 어떻게 알 수 있을까요?

~~~~{.cpp}
ofVec3f cameraToWorld(ofVec3f CameraXYZ, ofRectangle viewport = ofGetCurrentViewport()) const;
~~~~

<!-- As with everything else, there's a ton more to learn, but this tutorial is already pushing the bounds of acceptability, so we'll wrap it up here. A few further resources before we go though: -->
이밖에도, 배워야할것들이 산넘어 산입니다. 하지만 이 튜토리얼은 할만큼 한것 같으니, 여기서 마치도록 하죠. 추가 내용들은 아래 링크를 참고해주세요:

* [OpenGL 튜토리얼들](http://www.opengl-tutorial.org)
* [모던 OpenGL](http://tomdalling.com/blog/modern-opengl)
* [Swiftless의 튜토리얼들](http://www.swiftless.com)

<!-- Have fun, ask questions on the forum, and read our [shader tutorial](shaders.html) if you want to keep learning more. -->
즐기세요, 포럼에 질문을 해주세요, 그리고 계속 더 진행하고 싶으시다면 [쉐이더 튜토리얼](shaders.html)을 읽어주시기 바랍니다.