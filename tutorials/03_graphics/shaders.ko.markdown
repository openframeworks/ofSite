---
date: 2013/08/17 10:00:00
title: 쉐이더 소개
summary: ofShare와 GLSL의 기초
author: Lucasz Karluk, Joshua Noble, Jordi Puig
---

###Contents

<!-- * [Introducing...](#introducing)
* [Your first Shader](#first)
* [Adding Uniforms](#adding_uniforms)
* [Interactivity](#interactivity)
* [Adding Textures](#textures)
* [Alpha Masking](#alpha_mask)
* [Multiple Textures](#multitex)
* [ofFbo](#fbos)
* [Textures as Data](#displacement)
* [Blur Shaders](#blurring) -->
* [소개...](#introducing)
* [여러분의 첫번째 쉐이더](#first)
* [uniform 추가하기](#adding_uniforms)
* [상호작용](#interactivity)
* [텍스쳐 추가하기](#textures)
* [알파 마스킹](#alpha_mask)
* [멀티플 텍스쳐](#multitex)
* [ofFbo](#fbos)
* [데이터로써의 텍스쳐](#displacement)
* [블러 쉐이더](#blurring)

<a name="introducing"></a>

<!-- This tutorial comes in two parts: first, this thing, the HTML file and second, nine OF projects that progress along with this tutorial. You can find them in the tutorials folder of your OF download or [on github](https://github.com/openframeworks/openFrameworks/tree/master/tutorials/shader). As you read along with this, you should check the code downloads as well because a lot of the code isn't here, but rather is there. You'll notice that all of those project folders have source code and a data folder that contains 3 different kinds of shaders: GL2, GL3, and GLES2. What these are and how they're different from one another will be described below. -->
본 튜토리얼은 두 파트로 구성되어 있습니다: 첫째는, HTML이고, 두번째는, 9개의 오픈프레임웍스 프로젝트들로 본 튜토리얼과 함께 진행됩니다. 다운받은 오픈프레임웍스의 tutorials 폴더 혹은 [github 에서](https://github.com/openframeworks/openFrameworks/tree/master/tutorials/shader) 찾으실 수 있습니다. 이 튜토리얼을 읽으면서 반드시 다운받은 코드를 확인해보세요, 이곳에 없는 그곳에 코드가 있기 때문입니다. 예제 프로젝트 폴더들을 살펴보면 각 폴더에 소스코드와 3개의 다른 종류의 쉐이더: GL2, GL3, GLES2가 담긴 data 폴더가 있습니다. 이것들이 무엇인지, 그리고 서로 어떻게 다른지는 아래에 설명될 것입니다.

<!-- You've probably heard somewhere about "shaders", those mystical things that let you render beautiful things at blazing speed. Shaders are not actually mystical but they are a little tricky to get started with at first because they're working with a different part of the computer than you're usually working with in your openFrameworks application: you're working on the Graphics Processing Unit (as opposed to the Central Processing Unit that you're usually working on in OF). To really get the hang of working with shaders, we need to get you a little background on what the GPU is first. So, without further ado, let's go: -->
아마도 어딘가에서 "쉐이더"라는 말을 들어보셨을겁니다, 이 신비로운 녀석은 초스피드로 아룸다운 것들을 그려낼 수 있게 합니다. 쉐이더는 사실 신비롭진 않지만, 처음으로 시작하기엔 약간 까다로운 녀석입니다. 이는 여러분이 일반적으로 오픈프레임웍스 어플리케이션으로 동작하는 장치가 아닌, 컴퓨터의 다른 파트에서 동작하기 때문입니다: 쉐이더는 그래픽처리장치(GPU; 반대로 오픈프레임웍스에서는 대체로 여러분은 중앙처리장치(CPU) 위에서 동작합니다)상에서 동작합니다. 쉐이더와 함께 작업할려면, GPU가 무엇인지에 관한 배경지식을 가지는것이 우선입니다. 자, 허풍은 그만떨고, 시작해봅시다:

<!-- ###The graphics pipeline -->
### 그래픽스 파이프라인

<!-- The triangle is the root of making 3d or even 2d scenes. We spend a lot of time trying to hide this or make them fancier, flashing, sparklier, etc, but the truth is: pretty much everything is a triangle. The OpenGL pipeline is pretty oriented towards the following workpath: your OF app fills OpenGL-managed memory buffers with arrays of points in 3d space (we're going to call these "vertices") and these "vertices" are projected into screen space, put together into triangles, and finally turned into pixel-sized fragments in a process called "rasterization". Finally, every fragment (read: pixel) is assigned a color value and drawn to the framebuffer so that you can actually see it. When we're talking about shaders, the whole "figuring out where vertices go in screen space" is a Vertex Shader and the whole "assign a color value to each pixel" is a Fragment Shader. The flow looks more or less like this (excuse the over-simplification) -->
삼각형은 3d 혹은 심지어 2d 씬의 뿌리입니다. 이놈을 숨기거나 좀더 매력적으로 만들거나, 반짝이거나, 눈부시게 하거나 등등 많은 시간을 보냈습니다만, 분명히 모든것은 삼각형입니다. OpenGL 파이프라인은 분명히 이러한 작업순서를 따릅니다: 뎌러분의 오픈프레임웍스 어플리케이션은 OpenGL에 의해 관리되는 메모리 버퍼를 3d공간내 점(우리는 이것을 "버텍스"라고 부를겁니다)들의 배열로 채웁니다. 그리고 이 "버텍스들"은 화면 공간에 투영되어, 삼각형으로 함께 놓여지고, "래스터화(rasterization)"라고 불리우는 처리에서 픽셀 크기의 프래그먼트로 전환됩니다. 마지막으로, 모든 프래그먼트(픽셀)는 색이 주어져서 프레임버퍼로 그려져, 우리가 그것을 볼 수 있게 됩니다. 우리가 쉐이더에 대하여 이야기할 때, 모든 "어디에 있는 버텍스들이 스크린의 공간으로 가는지 알아내는것"이 버텍스 쉐이더이며, 모든 "각 픽셀에 색을 지정하는 것"이 프래그먼트 쉐이더입니다. 흐름은 더도 말고 덜도 말고 아래와 같습니다 (너무-대충 그려서 죄송합니다)

![IMG](001_images/shaders_pipeline.png)

Walking from the upper left to the lower right we have:
좌측 상단에서 우측 하단으로 아래와 같습니다:

<!-- * 1) Our OF application passing some vertex positions and texture coordinates to the graphics card
* 2) Our Vertex Shader.
* 3) Primitive Assembly setup of primitives, e.g. triangles, lines, and points
* 4) Rasterization: interpolation of data (colors, texture coordinates, other varying values) for all pixels
* 5) Our Fragment Shader
* 6) Per-pixel ops like discarding pixels for alpha, depth, and other reasons that would cause a pixel to not be drawn
* 7) Off to the framebuffer
* 8) Onto your screen -->
* 1) 우리의 오픈프레임웍스 어플리케이션은 어떤 버텍스 위치와 텍스쳐의 좌표를 그래픽 카드로 전달합니다.
* 2) 우리의 버텍스 쉐이더.
* 3) Primitive Assembly가 primitive(삼각형, 선, 점)들을 세팅합니다, 
* 4) 래스터화: 모든 픽셀들에 대하여 데이터(색, 텍스쳐 좌표, 다른 다양한 값들)의 interpolation 
* 5) 우리의 프래그먼트 쉐이더
* 6) 투명도, depth, 그리고 픽셀들이 그려지지 않아야할 이유로 무시되는 픽셀들에 대하여 각 픽셀별로 수행
* 7) 프레임버퍼로 off
* 8) 화면으로 그려짐


<!-- Let's get more specific. -->
좀더 구체적으로 살펴봅시다.


<!-- ###Vertices -->
###버텍스들

<!-- Rendering an ofMesh start out as some vertex buffers on the CPU side that get filled with arrays of vertex attributes like colors or positions or texture coordinates. These attributes are used as the inputs into the vertex shader, this is what you're working with in your vertex shader. When you call draw() on an ofMesh the indexes control how the vertices get assembled into triangles later on. -->
ofMesh를 렌더링 할 때에는 색이나 위치 혹은 텍스쳐 좌표들과 같은 버텍스 속성들의 배열로 채워진 CPU상의 버텍스 버퍼에서부터 시작합니다. 이러한 속성들은 버텍스 쉐이더의 입력값으로 사용되어지는데, 이것이 바로 버텍스쉐이더로 여러분이 다뤄야 할 것입니다. 추후 ofMesh에서 draw()를 호출할 때, 인덱스들은 이 버텍스들을 어떻게 삼각형으로 조합할지 조정합니다.

<!-- ###The vertex shader -->
###버텍스 쉐이더
<!-- The GPU begins by reading each selected vertex out of the vertex array and running it through the vertex shader, a program that takes a set of vertex attributes as inputs and outputs a new set of attributes, referred to as varying values, that get fed to the rasterizer. At a minimum, the vertex shader calculates the projected position of the vertex in screen space. The vertex shader can also generate other varying outputs, such as a color or texture coordinates, for the rasterizer to blend across the surface of the triangles connecting the vertex. -->
GPU는 버텍스 배열에서 선택된 버텍스를 읽는것으로 시작하여, 입력값으로 버텍스 속성들의 세트를 받아 래스터라이저에 입력될 varying 값인 새로운 속성들의 세트로 출력하는 프로그램인 버텍스 쉐이더를 통과하여 동작합니다. 최소, 버텍스 쉐이더는 스크린 공간내로 투영되는 버텍스의 위치를 계산합니다. 버텍스 쉐이더는 또한 래스터라이저가 버텍스를 연결한 삼각형의 표면을 가로질러 색을 섞이게 하기 위해 색 또는 텍스쳐 좌표와 같은 다른 varying 출력들을 생성해 냅니다.

<!-- ###The fragment shader -->
### 프래그먼트 쉐이더
<!-- The generated fragments then pass through another program called the fragment shader. The fragment shader receives the varying values output by the vertex shader and interpolated by the rasterizer as inputs. It outputs color and depth values that then get drawn into the framebuffer. Common fragment shader operations include texture mapping and lighting. Since the fragment shader runs independently for every pixel drawn, it can perform the most sophisticated special effects; however, it is also the most performance-sensitive part of the graphics pipeline. -->
생성된 프래그먼트는 프래그먼트 쉐이더라고 불리우는 다른 프로그램을 통과합니다. 프래그먼트 쉐이더는 버텍스 쉐이더의 출력과 래스터라이저에 의해 interpolate된 varying 값을 입력으로 받습니다. 이것은 프레임버퍼에 그려지게 될 색과 depth값을 출력합니다. 프래그먼트 쉐이버가 그려지는 모든 픽셀들을 위해 독립적으로 동작하기 때문에, 가장 복잡한 특수효과처럼 수행할 수 있습니다; 하지만, 동시에 그래픽스 파이프라인에서 가장 성능에 민감한 부분입니다.

###GLSL

<!-- Now that we've kinda glossed over the vertex and fragment shaders, you might be asking: "yes, those sound great, but how do I use them?" Answer: Graphics Language Shading Language or GLSL (double points for double "Language", right?). GLSL is a high-level programming language that’s similar to C/C++ for several parts of the graphics card. With GLSL, you can code short programs, called shaders, which are executed on the GPU. A shading language is a special programming language adapted to easily map on shader programming. It doesn't look trememndously different from what you see in the OF math classes: float, vec4, mat4, and so on. Because of the various target markets of 3-D graphics, different shading languages have been developed, but we're only focusing on GLSL in this tutorial. GLSL shaders themselves are a set of strings that are passed to the graphics card drivers for compilation from within an application using the OpenGL API’s entry points. Shaders can be created on the fly from within an application or read in as text files, but they must be sent to the driver in the form of a text string. -->
지금까지 버텍스/프래그먼트 쉐이더를 대충 훑어봤는데, 아마 이런 질문이 있을지도 모르겠네요: "좋아, 훌륭하게 들리는군, 하지만 어떻게 하용하지?" 정답은: Graphics Launguage Shading Lauguage 또는 GLSL("Language"를 두번 썼네요, 그렇죠?) 입니다. GLSL은 C/C++과 비슷한 고수준의 프로그래밍 언어로써, 그래픽카드의 일부분을 위한 언어입니다. GLSL로, 쉐이더라고 불리우는, GPU상에서 실행되는 짧은 프로그램을 작성할 수 있습니다. 쉐이딩 언어는 쉐이딩 프로그래밍을 위해 채택된 특별한 프로그래밍 언어입니다. 얼핏 보면 오픈프레임웍스의 math 클래스들과 크게 다르지 않아 보입니다: float, vec4, mat4 등등 말이죠. 3D그래픽스의 다양한 타겟 시장들을 이유로, 다른 다양한 쉐이딩 언어들이 개발되었지만, 이 튜토리얼에서는 GLSL에만 집중합니다. GLSL 쉐이더는 문자열들의 집합 자체인데, 이것은 OpgnGL API의 시작지점에서 동작하는 그래픽카드 드라이버 내 어플리케이션에서 컴파일되기 위해 그래픽카드 드라이버로 전달됩니다. 쉐이더는 어플리케이션에서 바로 생성되거나 텍스트파일을 읽을 수 있지만, 반드시 텍스트 문자열의 형태로 드라이버에 보내져야 합니다.

<!-- In OF we load our shaders into ofShader objects and I'm going to drive-by lay out the most important elements of that object: -->
오픈프레임월스에서는 ofShare 오브젝트에서 쉐이더를 읽습니다. 이제부터 이 오브젝트의 가장 중요한 요소들을 훑어보도록 하겠습니다:

<!-- *load()* - load a shader from two (or three) files: a .vert file and a .frag file. -->
*load()* - 두개(혹은 세개)의 파일에서 쉐이더를 불러온다: a .vert 파일과  a .frag 파일

<!-- *begin()* - start using your shader to alter all the drawing that your application is doing -->
*begin()* - 어플리케이션이 그려내는 모든 것을 변경하기 위해 쉐이더 사용을 시작한다 

<!-- *end()* - stop using your shader to alter all the drawing that your application is doing -->
*end()* - 어플리케이션이 그리려내는 모든것을 변경하기 위해 쉐이더의 사용을 중단한다.

<!-- You can load shader programs into your ofShader object using *shader.load()* or just use strings from your application with *shader.setupShaderFromSource()*, passing body of your shader in a string as a second parameter using STRINGIFY macro and linking it with *shader.linkProgram()*. Either way is a-ok. -->
*shader.load()*를 사용하여 ofShare 오브젝트로 쉐이더 프로그램을 불러올 수도 있고, 또는 그냥 어플리케이션에서 문자열을 사용해 *shader.setupShaderFromSource()*을 사용할 수 있는데, STRINGIFY 매크로를 이용해 두번째 파라메터로 문자열로 이루어진 쉐이더의 바디를 전달하고 *shader.linkProgram()*으로 연결시킬 수 있습니다. 어떤 방법이든 상관없습니다.

Before we go get into trouble, there's something that I want to explain that might not make sense right at first but is fairly important to acknoweldge and is not so important to deeply grok at first: our examples use OpenGL3 mostly and to use OpenGL3 in OF you need to alter your main.cpp file. The main files in the tutorial download all look like this:
시작하기 전에 문제가 있습니다. 당장은 이해할 수 없겠지만 충분히 중요한 것이라고 말할 수 있겠네요. 그렇다고 처음부터 뜻깊게 중요한것도 아닙니다: 예제들은 대부분 OpenGL3을 사용하ㅡㄴ데, OpenGL3를 오픈프레임웍스에서 사용할려면 main.cpp를 수정해야 합니다. 다운받은 예제의 main파일은 전부 이렇게 생겼습니다:

~~~~{.cpp}

#include "ofMain.h"
#include "ofApp.h"
// 새 렌더러를 불러온다
#include "ofGLProgrammableRenderer.h"

int main( ){

    // 멋진 새로운 렌더러를 *사용*하겠다고 말한다.
    ofSetCurrentRenderer(ofGLProgrammableRenderer::TYPE);
    ofSetupOpenGL(1024,768, OF_WINDOW);         // <-------- setup the GL context

    // this kicks off the running of my app
    // can be OF_WINDOW or OF_FULLSCREEN
    // pass in width and height too:
    ofRunApp( new ofApp());

}

~~~~

<!-- Did you catch that? There's a new renderer that lets you use all kinds of cool new stuff and the way to tell OF to use that fancy new renderer is right here: -->
무슨 말인지 아시겠나요? 저것이 바로 멋진 새로운 것들을 사용할 수 있게 해주는 새로운 렌더러입니다. 그리고 저 멋진 새로운 렌더러를 사용하겠다고 오픈프레임웍스에게 말하는 방법은 아래와 같습니다:

~~~~{.cpp}
// 멋진 새로운 렌더러를 *사용*하겠다고 말한다.
ofSetCurrentRenderer(ofGLProgrammableRenderer::TYPE);
ofSetupOpenGL(1024,768, OF_WINDOW);         // <-------- setup the GL context
~~~~

<!-- Now, what OpenGL3 is and how it's going to change the way that you think about code and graphics on your computer isn't a topic for this tutorial, but if you want to look up some tutorials on that [please do so](http://www.youtube.com/watch?v=XMgfddy7S7Q). We're working on an OpenGL tutorial but for the the moment we're going to stick with shaders. The OpenGL3 shader which confusingly uses GLSL 1.5, has the following at the top: -->
이제, OpenGL3가 무엇인지, 그리고 이것이 어떻게 코드와 컴퓨터의 그래픽스에 관하여 여러분이 생각하는 방법을 바꿀지는 이 튜토리얼의 주제가 아닙니다만,  만약 이것에 관한 튜토리얼을 살펴보고 싶다면, [그렇게 하십시오](http://www.youtube.com/watch?v=XMgfddy7S7Q). 우리는 OpenGL 튜토리얼을 보고 있지만, 잠시동안 쉐이더와 함께 할겁니다. 당황스럽게도 GLSL 1.5를 사용하는 OpenGL3 쉐이더의 첫부분은 이렇습니다:

~~~~{.cpp}
#version 150
~~~~

<!-- The OpenGL2 version of a shader (confusing, GLSL 1.2), does not have a define above it (though you can use one "#version 120"). Most graphics cards support OpenGL3 but some do not. You can always run the glInfoExample in examples/gl to see what your computer supports if you run into trouble or are just curious. Finally, we have OpenGL ES 2, which is what is supported on Android, iOS, and which you might be familar with from WebGL. It doesn't have a declaration at the top, but you'll notice something in most GLES shaders: -->
쉐이더의 OpenGL2 버전(당황스럽게도, GLSL 1.2)은, 위의 선언이 없습니다(하지만 "#version 120"이라고 사용할 수 있습니다). 대부분의 그래픽카드는 OpenGL3를 지원하지만 몇몇은 그렇지 않습니다. 문제해결을 위해서 또는 단순 호기심으로 여러분의 컴퓨터가 무엇을 지원하는지 확인하려면 examples/gl에 있는 glinfoExampl을 언제든지 실행해볼 수 있습니다. 마지막으로, 안드로이드, iOS에서 지원되고, WebGL과도 비슷한 OpenGL ES 2가 있습니다. 이것 역시 시작부분에 선언이 없지만, 대부분의 GLES 쉐이더는 아래 코드를 갖고 있음을 알 수 있습니다:

~~~~{.cpp}
precision highp float;
~~~~

<!-- The differences between the shaders aren't major but they exist, however it's more important to know that they exist than to have a line by line description of what's different between the three. In this tutorial all the shader examples are in the same folder so you'll seee increasingly little code in the tutorials as we go on because we don't want to waste too much space repeating stuff and you'll be such a pro by the end of this that you won't need all that code repeated anyways. -->
쉐이더 간의 차이점은 중요하진 않지만 존재합니다. 하지만, 그것이 존재한다는 사실 보다, 각각 어떤 차이가 있는지에 관한 설명이 한줄 한줄 있다는것을 아는 것이 더 중요합니다. 이 튜토리얼에서는 모든 쉐이더 예제들이 같은 폴더에 있으므로, 튜토리얼이 진행될수록 제공되는 코드의 양이 점점 줄어들 것입니다. 똑같은 코드를 반복하여 공간을 낭비하긴 싫거든요, 그리고 어쨌든 후반으로 갈수록 여러분은 프로가 될 것이므로, 반복되는 코드 전체가 필요하진 않을것이니까요.

<a name="introducing"></a>
<!-- Your first shader! -->
여러분의 첫 쉐이더!

<!-- Let's take a look at a very simple example to help you get going with it. First we'll look at the OF side of things: -->
아주 간단한 예제를 살펴보면서, 어떻게 진행할것인지 도와드리겠습니다. 우선, 오픈프레임웍스 측면의 것을 살펴보겠습니다.

~~~~{.cpp}

void ofApp::setup(){

#ifdef TARGET_OPENGLES
	shader.load("shadersES2/shader");
#else
	if(ofIsGLProgrammableRenderer()){
		shader.load("shadersGL3/shader");
	}else{
		shader.load("shadersGL2/shader");
	}
#endif
}

void ofApp::draw(){
    ofSetColor(255);
    shader.begin();
    ofDrawRectangle(0, 0, ofGetWidth(), ofGetHeight());
    shader.end();
}

~~~~

<!-- Two big things to note: take a look at *setup()* and see that thing that says: *shader.load("shadersGL3/shader")*? That's where we're actually loading the shaders in. OF lets us take a little shrtcut in loading a shader where we just tell OF what folder we're loading the shaders out of and what both files are named and we're off to the races. Those files are actualy called shader.vert (that's the vertex shader) and shader.frag (that's the fragment shader) so they're both going to be loaded with that single call. If you have files that are named separately you can always just use this: -->
기억해야 할 큰 것들이 두가지가 있습니다: *setup()*에서 *shader.load("shadersGL3/shader")*라고 하는 부분이 보이죠? 이부분이 바로 실제로 쉐이더를 불러오는 곳입니다. 오픈프레임웍스에서는 쉐이더를 불러오는 약간의 단축방법을 제공합니다. 어떤 폴더에서 쉐이더를 꺼내올것인지, 두 파일들이 어떻게 이름지어졌는지 말이죠. 이 파일들은 실제로 shader.vert(이것이 바로 버텍스 쉐이더입니다)와 shader.frag(이것이 프래그먼트 쉐이더입니다).  따라서 이 두 파일들이 한번의 호출에서 로딩됩니다. 만약 파일명이 다르게 되어있다면, 항상 이렇게 사용하시면 됩니다:

~~~~{.cpp}
shader.load("myCrazyVertFile.vert", "myCrazyFragFile.frag");
~~~~

<!-- It's up to you, go with your heart. Our version of it above is a little messy because we're loading one of three different renderees depending on whether you're on an iPhone, an old school computer or a new school computer. Even though we have shaders for all three cases, we're going to be explaining the OpenGL3 example mostly because it's probably the easiest to understand at first. -->
어떻게 하든 상관없이 여러분에게 달려있으니, 마음가는대로 하세요. 위의 예제는 약간 복잡한데요, 구동되는 플랫폼이 아이폰인지, 구식 컴퓨터인지, 최신 컴퓨터인지에 따라 세 가지 중 하나의 렌더러를 로딩하기 때문입니다. 비록 우리가 세가지 경우 모두의 쉐이더를 갖고 있지만, OpenGL3 예쩨에 대해서만 설명할것입니다. 아마도 우선 이해하기 가장 쉬운 방법일테니 말이죠.

<!-- Next, note how the *draw()* method contains *shader.begin()* and *shader.end()*? That's how we tell our renderer that we want to have all the vertices and textures and fragments go through our shader rather than just being passed directly to the framebuffer. That's about all there is in our application. -->
다음으로, *draw()*메소드가 *shader.begin()*과 *shader.end()*를 어떻게 포함하고 있나요? 이것이 바로 모든 버텍스들, 텍스쳐들, 프래그먼트들을 갖고 있는 우리의 렌더러가, 바로 프레임버퍼로 전달는 대신, 우리의 쉐이더로 바로 진행되라고 말하는 부분입니다.

<!-- Alright, onto the shaders themselves. In our tutorial examples, these live in the data folder of your application, along with images, fonts, and other data that you might want to load into your application. You can also have a shader just as a string in your applciation but we thought it might be nicer to see them in a separte folder so you can work with them outside of your OF app. -->
좋습니다. 쉐이더 자체에서. 우리의 튜토리얼 예제에서는, 이 쉐이어들은 어플리케이션의 data폴더내에 위치합니다. 이미지, 폰트, 그리고 여러분이 어플리케이션으로 불러올 데이터들과 함께요. 물론 어플리케이션 내에 문자열로 쉐이더를 가질 수 있지만, 저희가 생각할땐 이것들을 별도의 폴더에 분리해서 보관하여, 오픈프레임웍스 바깥에서 작업할 수 있는 것이 더 나을거라 생각합니다.

<!-- Here's the vertex shader, the first one that will be called in each *draw()* of our application. -->
이것이 버텍스 쉐이더입니다. 어플리케이션 내 각 *draw()*에서 호출될 첫번째 녀석이죠.
~~~~{.cpp}

// vertex shader

#version 150

uniform mat4 modelViewProjectionMatrix;
in vec4 position;

void main(){
	gl_Position = modelViewProjectionMatrix * position;
}

~~~~

<!-- Next is the fragment shader which is called to determine the colors for each pixel in our application. -->
다음은 프래그먼트 쉐이더로, 프로그램에서 각 픽셀에 색을 지정하기 위해 호출됩니다.

~~~~{.cpp}

// fragment shader

#version 150

out vec4 outputColor;

void main()
{
    // gl_FragCoord contains the window relative coordinate for the fragment.
    // we use gl_FragCoord.x position to control the red color value.
    // we use gl_FragCoord.y position to control the green color value.
    // please note that all r, g, b, a values are between 0 and 1.

    float windowWidth = 1024.0;
    float windowHeight = 768.0;

	float r = gl_FragCoord.x / windowWidth;
	float g = gl_FragCoord.y / windowHeight;
	float b = 1.0;
	float a = 1.0;
	outputColor = vec4(r, g, b, a);
}

~~~~

<!-- That should look like the following when you run it: -->
실행할 때 보여지는 화면은 아래와 같습니다:

![IMG](001_images/001.png)

<!-- Let's break some of the things in there down a little bit. At the top of the fragment and vertex shaders you can see a lot of "uniforms". A uniform is a value passed to each shader from your program that sets some additional values that you use in each stage of your shading. Uniform variables act as constants, at least for the duration of your OF applications *draw()* method. Your OF application feeds these variables to the graphics pipeline so that they're accessible in both stages of shading. Any shader can access any uniform variable as long as it declares the variable, like we do in both shaders in our example. Note though that these variables are read-only in the shaders. If you want to update the value of a uniform, you can do it in your OF application by calling: -->
잠시 멈춰서 이 안에 것들을 약간 살펴보도록 하죠. 프래그먼트 쉐이더와 버텍스 쉐이더의 윗부분을 보시면 많은 "uniforms"이라는 것들을 볼 수 있습니다. uniform은 여러분의 프로그램에서 각 쉐이더에 전달되는 값입니다. 이것은 쉐이딩의 각 단계에서 사용되는 추가적인 값을 세팅합니다. uniform 변수들은 최소한 오픈프레임웍스 *draw()* 메소드의 내에서 상수처럼 동작합니다. 여러분의 오픈프레임웍스 어플리케이션은 그래픽 파이프라인으로 이 변수들을 넘기기 떄문에 두 쉐이딩 스테이지에서 접근될 수 있습니다. 예제 속 두 쉐이더에서 했던것 처럼, uniform 변수들이 변수로써 선언이 되는 한, 모든 쉐이더가 이것들에 대해 접근이 가능합니다.  쉐이더에서 이러한 변수들이 읽기전용이라는 사실을 기억하세요. 만약 uniform의 값을 업데이트 하고싶다면, 오픈프레임웍스 내에서 이렇게 호출하는것으로 가능합니다:

~~~~{.cpp}
shader.setUniform1f("myUniform", 1.f);
~~~~

That's how you set a uniform like this:
저것이 바로 uniforM의 값을 지정하는 방법입니다. uniform은 아래와 같습니다;

~~~~{.cpp}
uniform float myUniform;
~~~~

<!-- You can set several different kinds of uniforms, vec3, vec4, mat4, even structs. There's one uniform in the *ofShader* that's already setup for you: *modelViewProjectionMatrix*. -->
vec3, vec4, mat4, 심지어 구조체까지, uinform의 다양한 종류들을 지정할 수 있습니다. *ofShader*에는 하나의 uniform이 있는데, 이것은 이미 여러분을 위해 셋업되어 있습니다: *modelViewProjectionMatrix*이죠.

<!-- ###The vertex shader -->
###버텍스 쉐이더

<!-- *modelViewProjectionMatrix* - This is actually a value passed in from OF. You can tell that because it's got a "uniform" in front of it. This means that it's passed in for each vertex with exactly the same value. -->
*modelViewProjectionMatrix* - 이것은 실제로 오픈프레임웍스에서 전달되는 값입니다. 이렇게 말할 수 있는 이유는 이것이 이것 앞에 "uniform"을 갖고 있기 때문이죠. 즉 정확히 같은 값이 각 버텍스로 전달되는 의미입니다.

<!-- Next up in our vertex shader is a different kind of variable: *in vec4 position*. This is called an attribute and every vertex has a different one. That's helpful when you want to have lots of vertices that aren't all in the same place. Each one having its own position means that you can access the location of each vertex within the shader and use it in a calculation or even modify it in place. There are several different kinds of attributes for different kinds of objects in OF: position, color, or texture coordinates, all of which are handy for making complex geometery and shading them. -->
버텍스 쉐이더에서 다음으로 살펴봐야 할것은 변수의 다른 종류입니다: *vec4 position 에서* 말이죠.  이것은 attribut이라 불리며, 모든 버텍스는 다른 이것을 가집니다. 여러분이 많은 버텍스를 갖고 있을때 다움이 되는데, 이것들은 같은 위치에 있지 않습니다. 각각이 자신만의 위치를 갖는다는 것은 즉  쉐이더로 각 버텍스의 위치에 접근할 수 있다는 것이고, 이것으로 계산을 하거나 위치에서 수정할 수도 있다는 것이죠. 오픈프레임웍스에서는 다른 종류의 오브젝트에 따라 다른 종류의 atrribut이 있습니다: 위치, 색, 또는 텍스쳐 좌표, 복잡한 지오메트리를 만들거나 그것들을 쉐이딩할때 편리한 모든 것들입니다.

<!-- *position* - This is also a value passed in from OF but you'll notice that it has an "in" at the front of it, which means that the value passed in is different for each vertex because the each vertex has a slightly different position. These are called attributes and they're all set up when the ofMesh is created and each value is set when they're being drawn. -->
*position* - 이것 또한 오픈프레임웍스에서 전달되는(passed in) 값이지만, 앞에 "in"이 있다는 것이 보이시죠? (passed in에서) 값은 전달되는 데, 이 전달은 각 버택스마다 다릅니다. 각 버텍스들이 약간씩 다른 위치를 갖고 있기 때문이죠. 이는 attribute들을 부르고, ofMesh가 생성될때 이 모든 과정이 셋업되며, 각 값들은 그려질때 지정됩니다.

<!-- *gl_Position* - This is what comes out of the vertex shader. It's a variable with a fixed role: pass the position of the vertex to the triangle assembly. "Triangle assembly" is when the GPU connects vertices to form triangles. It does this by taking the vertices in the order specified by the element array and grouping them into sets of three that then either create triangle strips or triangle fans. -->
*gl_Position* - 이것은 버텍스 쉐이더에서 추출됩니다. 이 값은 고정된 역할이 있습니다: 버텍스의 위치를 삼각형 조합으로 전달합니다. "삼각형 조합"은 버텍스들을 GPU가 삼각형의 형태로 완성할 때 입니다. 이것은 요소 배열에 적힌 순서대로 버텍스를 취해서 3개의 세트로 묶어서, triangle strip이나 triangle fans로 만듭니다.

<!-- ###The fragment shader -->
### 프래그먼트 쉐이더
*gl_FragCoord* - This is the location of the fragment in screen space. This is how you know where each pixel is on your screen. In our application we're  using it to figure out what color to put for the pixel:
*gl_FragCoord* - 이것은 화면 공간에서의 프래그먼트의 위치입니다. 이것으로 어떤 각 픽셀이 화면에 띄워지는지 알 수 있습니다. 우리의 어플리케이션 내에서는 픽셀에 어떤 색을 지정해야 하나 결정할 때 사용합니다.

~~~~{.cpp}
float r = gl_FragCoord.x / windowWidth;
float g = gl_FragCoord.y / windowHeight;
float b = 1.0;
float a = 1.0;
outputColor = vec4(r, g, b, a);
~~~~

<!-- The *gl_FragCoord* can also be replaced with an "out" vec2 passed from the vertex shader (confusing, I know). Finally, there's the "out" variable for the fragment shader -->
*gl_FragCoord*는 버텍스 쉐이더에서 전달되는 vec2 "출력"으로 교체될 수도 있습니다(혼란스럽죠, 저도 압니다). 마침내, 프래그먼트 쉐이더를 위한 "출력" 변수가 있군요.

~~~~{.cpp}
out vec4 outputColor;
~~~~

<!-- Anything marked "out" goes the next stage in the shading pipeline. For the fragment shader that next stage is to put a pixel into the framebuffer, so you need to one and only one "out" from a fragment shader. A vertex shader can have multiple "out" variables that are just passed to the fragment shader, while a fragment shader is just figuring out what color should be sent on for each pixel based on all the values passed from the vertex shader. -->
어떠한 "출력"이든 쉐이딩 파이프라인의 다음 단계로 진행됩니다. 프래그먼트 쉐이더에게 다음 스테이지란 프레임 버퍼로 픽셀을 두는 것이므로, 프래그먼트 쉐이더에서 하나의 "출력"입니다. 버텍스 쉐이더는 프레그먼트 쉐이더에게 전달되는 여러 "출력" 변수들을 가질 수 있는데. 이는 프래그먼트 쉐이더는 버텍스쉐이더에서 전달된 값들을 기준으로 정해진 여러 픽셀들의 각 픽셀이 어떤 색이 지정되는지를 계산하기 때문입니다.

<!-- outputColor - the color, described in RGBA, that we want this pixel to be colored. -->
outputColor - RGBA로 표현되는, 픽셀의 색

<!-- And that's your first shader. For fun, try commenting out the calls to *shader.begin()* and *shader.end()* in the ofApp.cpp *draw()* to see what happens when there's no shaders in them. Pretty boring right? Good thing we've shaders to keep us entertained. Next, let's move some vertices around. -->
이것이 여러분의 첫 쉐이더입니다. 재미를 위해, ofApp.cpp안의 *draw()*에서 *shader.begin()*과 *shader.end()*를 주석처리 해보시고, 쉐이더가 없을때 어떤 결과가 나오는지 살펴보세요. 상당히 지루하죠? 다행히도 쉐이더가 우리를 즐겁게 해주네요. 다음으로, 버텍스를 살펴봅시다.

<a name="adding_uniforms"></a>
<!-- ##Adding Uniforms -->
###uniform 추가하기

<!-- This is going to be a little more fun: we're gonna move stuff around in our shaders. First, the ofApp.cpp. We're just making a plane so we have some nice vertices to play with. The ofPlanePrimitive is perfect for "just some vertices to play with" so let's use that: -->
이것은 좀 더 재밌을겁니다: 이제 쉐이더를 가지고 움직여볼겁니다. 우선, ofApp.cpp입니다. 비행기를 만들겁니다, 자기고 놀 훌륭한 버텍스들을 가지고요. ofPlanePrimitive가 "가지고 놀 버텍스들"로 완벽하군요. 한번 사용해보죠:

~~~~{.cpp}

#include "ofApp.h"

void ofApp::setup(){

    float planeScale = 0.75;
    int planeWidth = ofGetWidth() * planeScale;
    int planeHeight = ofGetHeight() * planeScale;
    int planeGridSize = 20;
    int planeColumns = planeWidth / planeGridSize;
    int planeRows = planeHeight / planeGridSize;

    plane.set(planeWidth, planeHeight, planeColumns, planeRows, OF_PRIMITIVE_TRIANGLES);
}

~~~~

<!-- Next up, we're going to make a mouse-reactive color and set the front color of our application using that color. GLSL will have access to the color that is set in our ofColor application through the globalColor variable. This isn't actually a GLSL special object, this is created and updated by OF, just like the modelViewMatrix mat4 that we can use to determine how our 3D world should be laid out. -->
다음으로, 마우스에 반응하는 색를 만들어서, 우리의 어플리케이션의 전면 색으로 사용해봅시다. GLSL은 ofColor에서 globalColor변수로 지정한 색에 접근할 수 있습니다. 이것은 실제로 GLSL의 특별한 오브텍트가 아니며, OF에 의해 생성되고 업데이트 될것입니다. 3D 세계를 어떻게 보여줄지 결정할 수 있게 사용되는 modelViewMatrix mat4와 같이 말이죠.

~~~~{.cpp}

void ofApp::draw(){

    float percentX = mouseX / (float)ofGetWidth();
    percentX = ofClamp(percentX, 0, 1);

    // the mouse/touch X position changes the color of the plane.
    // please have a look inside the frag shader,
    // we are using the globalColor value that OF passes into the shader everytime you call ofSetColor().
    ofColor colorLeft = ofColor::magenta;
    ofColor colorRight = ofColor::cyan;
    ofColor colorMix = colorLeft.getLerped(colorRight, percentX);
    ofSetColor(colorMix);

    shader.begin(); // start shading!

    // a lot of the time you have to pass in variables into the shader.
    // in this case we need to pass it the elapsed time for the sine wave animation.
    shader.setUniform1f("time", ofGetElapsedTimef());

    // translate plane into center screen.
    float tx = ofGetWidth() / 2;
    float ty = ofGetHeight() / 2;
    ofTranslate(tx, ty);

    // the mouse/touch Y position changes the rotation of the plane.
    float percentY = mouseY / (float)ofGetHeight();
    float rotation = ofMap(percentY, 0, 1, -60, 60, true) + 60;
    ofRotate(rotation, 1, 0, 0);

    plane.drawWireframe();

    shader.end(); // end shading!
}
~~~~

Make note of the *ofSetColor(colorMix)* call in there. That's actually going to set the color that we *can* use in our fragment shader. We could also set the "out vec4 color" to any old thing we want, but in this case, we're not going to, because we've got too much fun stuff going on in the vertex shader.

Now, because we have one call to the vertex shader for each vertex, we can play with the location of the vertices before we pass them on to the fragment shader. The *gl_Position* is what comes out of the vertex shader, so anything we set that to will be the location of the vertex. In this case, we'll just use a little *sin()* wave action to manipulate it, making a nice wave out of our plane:

~~~~{.cpp}

#version 150

// these are for the programmable pipeline system
uniform mat4 modelViewProjectionMatrix;
in vec4 position;

// the time value is passed into the shader by the OF app.
uniform float time;


void main()
{
    // the sine wave travels along the x-axis (across the screen),
    // so we use the x coordinate of each vertex for the calculation,
    // but we displace all the vertex along the y axis (up the screen)/
    float displacementHeight = 100;
    float displacementY = sin(time + (position.x / 100.0)) * displacementHeight;

    vec4 modifiedPosition = modelViewProjectionMatrix * position;
	modifiedPosition.y += displacementY;
	gl_Position = modifiedPosition;
}
~~~~

As you hopefully recall from the last little section, we have one call to the fragment shader per pixel, which means we can play with it as well. That's what we did in the last example, though, to keep things simple in this example we're just using a global color set in a uniform. The thing about that  is that we're setting it in the OF application, so that each *draw()* has a slightly different color based on the mouse position.

~~~~{.cpp}

#version 150
uniform vec4 globalColor;
out vec4 outputColor;

void main()
{
    outputColor = globalColor;
}
~~~~

As with the previous example, try commenting out the calls to *shader.begin()* and *shader.end()* to see what it looks like without the shader running. Pretty big difference, eh? Let's get a little more vertex-y :)

<a name="interactivity"></a>
##Adding some interactivity

This is going to let us use the mouse position in our shader to manipulate vertices. We'll pass it in via, you guessed it, a uniform! Since the mouse position is actually two values (x,y) we'll pass it in using *shader.setUniform2f()*. On the shader side, that means we'll have a "uniform vec2 mousePos" that we can store. The mouse position can be a uniform because it's not changing per vertex, just per draw. We are going to manipulate the value of each vertex based on that mouse position though. First the ofApp draw() method. Look at all those calls to "setUniform()"!

~~~~{.cpp}

void ofApp::draw(){

    shader.begin();

    // center screen.
    float cx = ofGetWidth() / 2.0;
    float cy = ofGetHeight() / 2.0;

    // the plane is being position in the middle of the screen,
    // so we have to apply the same offset to the mouse coordinates before passing into the shader.
    float mx = mouseX - cx;
    float my = mouseY - cy;

    // we can pass in a single value into the shader by using the setUniform1 function.
    // if you want to pass in a float value, use setUniform1f.
    // if you want to pass in a integer value, use setUniform1i.
    shader.setUniform1f("mouseRange", 150); // SET A UNIFORM

    // we can pass in two values into the shader at the same time by using the setUniform2 function.
    // inside the shader these two values are set inside a vec2 object.
    shader.setUniform2f("mousePos", mx, my);  // SET A UNIFORM

    // color changes from magenta to blue when moving the mouse from left to right.
    float percentX = mouseX / (float)ofGetWidth();
    percentX = ofClamp(percentX, 0, 1);
    ofFloatColor colorLeft = ofColor::magenta;
    ofFloatColor colorRight = ofColor::blue;
    ofFloatColor colorMix = colorLeft.getLerped(colorRight, percentX);

    // create a float array with the color values.
    float mouseColor[4] = {colorMix.r, colorMix.g, colorMix.b, colorMix.a};

    // we can pass in four values into the shader at the same time as a float array.
    // we do this by passing a pointer reference to the first element in the array.
    // inside the shader these four values are set inside a vec4 object.
    shader.setUniform4fv("mouseColor", &mouseColor[0]);  // SET A UNIFORM

    ofTranslate(cx, cy);

    plane.drawWireframe();

    shader.end();
}

~~~~

That's *3* different kinds of uniforms! A single floating point value (uniform float), an 2 float vector (uniform vec2), and a vector of 4 floating point values (uniform vec4).

Now onto the shaders themselves, starting with the vertex shader

~~~~{.cpp}
#version 150

// these are from the programmable pipeline system, no need to do anything, sweet!
uniform mat4 modelViewProjectionMatrix;
in vec4 position;

uniform float mouseRange;
uniform vec2 mousePos;
uniform vec4 mouseColor;

void main()
{
    // copy position so we can work with it.
    vec4 pos = position;

    // direction vector from mouse position to vertex position.
	vec2 dir = pos.xy - mousePos;

    // distance between the mouse position and vertex position.
	float dist =  distance(pos.xy, mousePos);

    // check vertex is within mouse range.
	if(dist > 0.0 && dist < mouseRange) {

		// normalise distance between 0 and 1.
		float distNorm = dist / mouseRange;

		// flip it so the closer we are the greater the repulsion.
		distNorm = 1.0 - distNorm;

        // make the direction vector magnitude fade out the further it gets from mouse position.
        dir *= distNorm;

		// add the direction vector to the vertex position.
		pos.x += dir.x;
		pos.y += dir.y;
	}

	// finally set the pos to be that actual position rendered
	gl_Position = modelViewProjectionMatrix * pos;
}

~~~~

Did you catch that? *gl_Position* is modified by the location of the mouse *relative* to its own position. Nifty! Now let's just use that mouseColor that we passed in from the *ofShader* object.

~~~~{.cpp}

// fragment shader

#version 150

out vec4 outputColor;
uniform vec4 mouseColor;

void main()
{
    outputColor = mouseColor;
}
~~~~

Now you know how to pass a few different values into a shader and use them to dynamically do some pretty stuff with the vertices. Let's talk about textures next.


<a name="textures"></a>
##Adding Textures

Let's talk about textures: you know textures as what you see on the screen when you draw your ofImage or a frame from your *ofVideo* player. Lots of times in shading, for example, in a vertex array, the data is fed to the vertex shader one element at a time and there's no way for the vertex shader to access other elements. A texture, on the other hand, makes its entire contents available to any vertex or fragment shader. Those shaders sample the texture at one (or a hundred) different texture coordinates. This makes it really powerful for passing data into your shader, first, because uploading a texture is (comparatively) really fast and two, because you can access any point in them.

There's one nice little feature wrapped into the OF application: *mapTexCoordsFromTexture()*. This lets you just pass a texture reference to the plane and auto-calculate where each part of the texture should go. This is nice because it saves you needing to loop through each vertex and assign the texture coordinate. Of course, when you want to start doing tricky things yourself you'll want to do this yourself so you have more control over it, but for a simple ofPlanePrimitive, this is pretty sweet.

The other thing to note is that we're binding the texture in the *draw()* method before we call *shader.begin()*. This actually happens automatically when you call *ofImage::draw()* but since we're not doing that, we need to make sure that the image is available on the graphics card. The thing about ofTexture and textures in general, is that since you can have a lot of them on the graphics card of your computer, it's nice to be able to say which ones you're going to use in your program. The way that you do that is by "binding" the images, really just making sure that the memory that holds your texture is available to your shader. You can bind quite a few textures but for starters we'll just do one.

~~~~{.cpp}

// OF

#include "ofApp.h"

void ofApp::setup() {
    // setup
    plane.mapTexCoordsFromTexture(img.getTextureReference());
}

void ofApp::draw() {

    // bind our texture. in our shader this will now be tex0 by default
    // so we can just go ahead and access it there.
    img.getTextureReference().bind();

    // start our shader, in our OpenGL3 shader this will automagically set
    // up a lot of matrices that we want for figuring out the texture matrix
    // and the modelView matrix
    shader.begin();

    // get mouse position relative to center of screen
    float mousePosition = ofMap(mouseX, 0, ofGetWidth(), plane.getWidth(), -plane.getWidth(), true);

    shader.setUniform1f("mouseX", mousePosition);

    ofPushMatrix();
    ofTranslate(ofGetWidth()/2, ofGetHeight()/2);
    plane.draw();
    ofPopMatrix();

    shader.end();
    img.getTextureReference().unbind();

}

~~~~

Alright, onto the vertex shader. Nothing too special *except* that little bit that says: *out vec2 varyingtexcoord*. That's where we're setting up what we're going to pass to our fragment shader so that the fragment shading program knows which bit of the texture to put at its pixel. You may be wondering: wait, I've got 100 vertices but 1024x768 pixels, how does passing 100 positions from 100 vertices help me manage 1024x768 pixels? Well, hopefully you were wondering that because it's a truly excellent question. The answer is: interpolation! Let's look at a really simple rectangle with a texture:

Each value is interpolated between the vertices. Going from 0,0 to 0,1024 your card just goes ahead and divides the 512 pixels of the image amongst them evenly, meaning that each texture pixel goes on two screen pixels. As you can imagine that kind of looks like crap sometimes, luckily there's lots of way to manage that, unluckily for you we're not going to talk about that here.


~~~~{.cpp}

#version 150

// these are for the programmable pipeline system and are passed in
// by default from OpenFrameworks
uniform mat4 modelViewMatrix;
uniform mat4 projectionMatrix;
uniform mat4 textureMatrix;
uniform mat4 modelViewProjectionMatrix;

in vec4 position;
in vec4 color;
in vec4 normal;
in vec2 texcoord;
// this is the end of the default functionality

// this is something we're creating for this shader
out vec2 varyingtexcoord;

// this is coming from our C++ code
uniform float mouseX;

void main()
{
    // here we move the texture coordinates
    varyingtexcoord = vec2(texcoord.x + mouseX, texcoord.y);

    // send the vertices to the fragment shader
	gl_Position = modelViewProjectionMatrix * position;
}


~~~~

The fragment shader simply looks up the location in texture using the vec2 that's passed into it. The texture itself is represented by the sampler2DRect construct. This is the source of a lot of confusion when people get started using shaders in OF becuase there are two kinds of samplers: *sampler2DRect* and *sampler2D*. The difference between these two lies in the kind of texture data that you're actually uploading. If your texture is a power of two size where the height and width are both power of two values like 256 or 512 of 1024 or 2048, then you can use a sampler2D to represent your texture data. In OF however, we want to assume that you can use any image size because sometimes images are weird shapes and sizes like 4x1837 or 381x293 and that should be ok to work with. And it is and it works out fine in your shader as long as you use sampler2DRect. The way to get points in that data is the *texture()* method that takes the *sampler2DRect* that you're drawing the data from and the texture coordinate of the particular pixel that you want.

You'll notice that the *sampler2DRect* is called "tex0" and that we didn't actually set that uniform in our OF app. Why is that? The secret is in the *setUniformTexture()* method, which calls *bind()* for you. Also, drawing an image, as we do with *image.draw(0, 0)*, binds the texture as well and since it isn't given a uniform name, it appears as *tex0*. Confusing? Perhaps, but it's common enough to see that I wanted to call it to your attention. To be explicit, there are three ways of getting a texture into your shader:

1) You can bind a texture and access it as *tex0* if it's the only one bound without a uniform name.
2) You can call *setUniformTexture()* and pass a uniform name and the texture itself
3) You can call *image.draw()* and access the image as tex0 if it's the only one bound without a uniform name.

It's good to know all these because they're there and you'll see them out in the wild.

~~~~{.cpp}

// fragment shader
#version 150

// this is how we receive the texture
uniform sampler2DRect tex0;
in vec2 varyingtexcoord;
out vec4 outputColor;

void main()
{
    outputColor = texture(tex0, varyingtexcoord);
}


~~~~


So, that's one texture, but we can do some much better tricks when we have two textures.

<a name="alpha_mask"></a>
##Alpha Masking

Using multiple textures in a shader isn't hard at all, you just need to make sure that you're passing them into the shader using the *setUniformTexture()* method. As in the previous example, we're relying on the default *tex0* but we've added another texture that we're passing in via the *setUniformTexture()* method.

~~~~{.cpp}
void ofApp::draw(){

    // draw a white rectangle for background.
    ofDrawRectangle(0, 0, image.getWidth(), image.getHeight());

    shader.begin();
    shader.setUniformTexture("imageMask", imageMask.getTextureReference(), 1);

    image.draw(0, 0);

    shader.end();
}
~~~~

The vertex shader for this example is unremarkable, so we're actually going to omit it, but you can, of course, find all three examples in the examples/bin/data folder. The fragment shader though has a little bit of new stuff in it, conceptually speaking. Think of your texture as data and think of each value in that texture as a data point. The "in" of your data is going to be a color and the "out" of your data is also going to be a color but everything in between is pure data manipulation and what that "in" color can represent can be everything from the height of generated landscape geometry to the location of a sprite. In this case, we're using the alpha value of our two different textures to figure out where our mask begins and ends. One texture has a mask with alpha values ranging from 0 to 1 and the other simply has color values with full alpha (e.g. alpha = 1). Multiplying the two alpha values together gets us a masking effect because, well, that's how multiplication works. We build a vec4 out of the color of the main image and the alpha out of the mask image:

~~~~{.cpp}

#version 150

uniform sampler2DRect tex0;
uniform sampler2DRect imageMask;

in vec2 texCoordVarying;

out vec4 outputColor;

void main()
{
    vec4 texel0 = texture(tex0, texCoordVarying);
    vec4 texel1 = texture(imageMask, texCoordVarying);
    // first three values are the rgb, fourth is the alpha
    outputColor = vec4(texel0.rgb, texel0.a * texel1.a);
}

~~~~

Voila, you're well on your way to recreating Photoshop. Speaking of which, let's move on to some more serious composition strategies in shaders, in particular, using the OpenFrameworks implementation of Frame Buffer Objects, the *ofFbo*.

<a name="multitex"></a>
##Multiple Textures

First: what is an FBO? At it's core it’s a container for textures and an optional depth buffer. Kind of like, well, an OpenGL framebuffer, which is what you're normally rendering to. One way to think of it, conceptually correct but technically a bit loose, is that it's another renderer that you can write to. You can draw textures to it, draw 3D or 2D objects to it, render the view of cameras inside of it, all with one key difference: it's just an object. You can have multiple of them, draw all kinds of things inside of them, and then get all the textures out of them to play with in a shader or just draw them directly to the screen. They are, for most purposes, little render buffers and as such, they're excellent for doing multiple shader passes. So, we're going to set up two *ofFbo* objects and use them to mask textures using different channels, i.e. RGB elements of the textures. You'll see how this works once you run the application. Those textures are, to make it more interesting, coming from an ofCamera and an ofVideoPlayer, that's actually not a big deal to set up. We'll set up the camera and movie first in the setup() method *and* we'll set up both of the FBO objects that we're going to use:


~~~~{.cpp}

int camWidth = 320;
int camHeight = 240;

camera.setVerbose(false);
camera.initGrabber(camWidth, camHeight);

movie.loadMovie("movie.mov");
movie.play();

image.loadImage("img.jpg");
imageMask.loadImage("mask.jpg");

// say how big you want each FBO to be
fbo.allocate(camWidth, camHeight);
maskFbo.allocate(camWidth, camHeight);

~~~~

Calling ofFbo::begin() sets the FBO as the render buffer that everything will be rendered to. Conversely, calling *ofFbo::end()* unsets the FBO as the render buffer that everything will be rendered to.

~~~~{.cpp}

     //------------------------------------------- draw to fbo.
    fbo.begin();
    ofClear(255, 255, 255, 255);

    shader.begin();
    shader.setUniformTexture("redTex", camera.getTextureReference(), 1);
    shader.setUniformTexture("greenTex", greenOF, 2);
    shader.setUniformTexture("blueTex", movie.getTextureReference(), 3);
    shader.setUniformTexture("imageMask", imageMask.getTextureReference(), 4);

    imageMask.draw(0, 0);

    shader.end();
    fbo.end();

~~~~

Now we've just drawn the image mask, camera texture, color texture, and movie texture to the ofFbo, which means that none of them will show up until the second fbo object is drawn. So, continuing down the *draw()* method, we're drawing the camera, the image, the movie, the mask FBO and the final rendered FBO.

~~~~{.cpp}

    ofSetColor(255);
    camera.draw(5,5,320,240);
    ofSetColor(ofColor::red);
    ofDrawBitmapString("RED", 5+30, 5+30);

    ofSetColor(255);
    greenOF.draw(320+10,5,320,240);
    ofSetColor(ofColor::green);
    ofDrawBitmapString("GREEN", 320+10+30,5+30);

    ofSetColor(255);
    movie.draw(320*2+15,5,320,240);
    ofSetColor(ofColor::blue);
    ofDrawBitmapString("BLUE", 320*2+5+30,5+30);

    ofSetColor(255);
    imageMask.draw(320+10,240+10,320,240);
    ofDrawBitmapString("RGB MASK", 320+10+30,240+10+30);

    fbo.draw(320+10,240*2+15,320,240);
    ofDrawBitmapString("Final FBO", 320+10+30,240*2+15+30);
}

~~~~

So that's getting 4 textures into the shader and then rendering that shader into the FBO to be drawn later. This is a very powerful technique for doing multiple render passes, rendering complex scenes to a texture, what's called "ping-ponging textures", and a range of other techniques for trickery and beautification. Let's look at the fragment shader. Unsurprisingly it has 4 *sampler2DRect* uniforms declared in it and each of those is queried for its color and then individual channels of those images are used to generate the color for the final output pixel.

~~~~{.cpp}

#version 150

uniform sampler2DRect redTex;
uniform sampler2DRect greenTex;
uniform sampler2DRect blueTex;
uniform sampler2DRect imageMask;

in vec2 texCoordVarying;

out vec4 outputColor;

void main()
{
    vec4 rTxt = texture(redTex, texCoordVarying);
    vec4 gTxt = texture(greenTex, texCoordVarying);
    vec4 bTxt = texture(blueTex, texCoordVarying);
    vec4 mask = texture(imageMask, texCoordVarying);

    outputColor = vec4(rTxt.r, gTxt.g, bTxt.b, mask.r);
}

~~~~

In the next example we'll create a pair of ofFbos and make a drawing application out of them.

<a name="fbos"></a>
##ofFbo

Setup is very similar to the previous example: make two ofFbo objects, allocate them, and then ensure that they're cleared of any junk data that might be living on the graphics card in the memory space that this FBO was just given. This is an important little lesson: graphics cards often don't clear out their memory for you before handing it to you, which means that the junk will show up unless you empty it. This is particualrly true in FBO objects.

~~~~{.cpp}

    backgroundImage.loadImage("A.jpg");
    foregroundImage.loadImage("B.jpg");
    brushImage.loadImage("brush.png");

    int width = backgroundImage.getWidth();
    int height = backgroundImage.getHeight();

    maskFbo.allocate(width, height);
    fbo.allocate(width, height);

    // Clear the FBO's
    // otherwise it will bring some junk with it from the memory
    maskFbo.begin();
    ofClear(0,0,0,255);
    maskFbo.end();

    fbo.begin();
    ofClear(0,0,0,255);
    fbo.end();

~~~~

The *draw()* method is really just passing data into these two FBO objects:

~~~~{.cpp}

// this is our alpha mask which we draw into.
if(bBrushDown) {
    maskFbo.begin();

    int brushImageSize = 50;
    int brushImageX = mouseX - brushImageSize * 0.5;
    int brushImageY = mouseY - brushImageSize * 0.5;
    brushImage.draw(brushImageX, brushImageY, brushImageSize, brushImageSize);

    maskFbo.end();
}

~~~~

Catch that? Just drawing a brush image into the maskFbo as the users drags it around. Next, as in the previous example, the masking FBO is passed right into the shader and then creating a mask of the previous image.

~~~~{.cpp}

// HERE the shader-masking happens
fbo.begin();
// Cleaning everthing with alpha mask on 0 in order to make it transparent by default
ofClear(0, 0, 0, 0);

shader.begin();
// here is where the fbo is passed to the shader
shader.setUniformTexture("maskTex", maskFbo.getTextureReference(), 1 );

backgroundImage.draw(0, 0);

shader.end();
fbo.end();

// FIRST draw the background image
foregroundImage.draw(0,0);

// THEN draw the masked fbo on top
fbo.draw(0,0);

//----------------------------------------------------------
ofDrawBitmapString("Drag the Mouse to draw", 15,15);
ofDrawBitmapString("Press spacebar to clear", 15, 30);

~~~~

In the fragment shader all we really need to do is look up any value of the mask texture to determine whether or not we're going to be using it. It doesn't matter that our mask is actually an FBO because it has texture data and that's good enough for our shader. There's one more little trick to call out in this tutorial and that is how the *outputColor* variable is actually being set with a vec3 and a float. This is totally legal in GLSL. In fact, a float and a *vec3*, two *vec2*s, one row of a *mat4*, anything or combination of things that have 4 values can be used to set a vec4. The same goes for anything/s with 3 values and a *vec3* and so on and so forth. It makes GLSL code very elegant, though it is a bit strange to get used to at first.

~~~~{.cpp}
// fragment
#version 150

// these are our textures
uniform sampler2DRect tex0;
uniform sampler2DRect maskTex;

// this comes from the vertex shader
in vec2 texCoordVarying;

// this is the output of the fragment shader
out vec4 outputColor;

void main()
{
    // get rgb from tex0
    vec3 src = texture(tex0, texCoordVarying).rgb;

    // get alpha from mask
    float mask = texture(maskTex, texCoordVarying).r;

    //mix the rgb from tex0 with the alpha of the mask
    outputColor = vec4(src , mask);
}
~~~~

The idea of passing an FBO as data is interesting, but it's more interesting if we just go ahead and actually pass a texture as pure data, which is, unsurprisingly, what we're going to do next.


<a name="displacement"></a>
##Textures as Data (e.g. Displacement)

In this application we're going to generate some noise data and store it in a texture to then use it as a displacement value to move vertices in our vertex shader. The noise is just generated using ofNoise() and then saved in an ofPixels object, then uploaded to the graphics card in a texture.

~~~~{.cpp}
void ofApp::update(){
    float noiseScale = ofMap(mouseX, 0, ofGetWidth(), 0, 0.1);
    float noiseVel = ofGetElapsedTimef();

    unsigned char * pixels = img.getPixels();
    int w = img.getWidth();
    int h = img.getHeight();
    for(int y=0; y<h; y++) {
        for(int x=0; x<w; x++) {
            int i = y * w + x;
            float noiseVelue = ofNoise(x * noiseScale, y * noiseScale, noiseVel);
            pixels[i] = 255 * noiseVelue;
        }
    }
    img.update();
}
~~~~

The shader itself doesn't need much special and we just add a little bit of rotation to make the view a bit more dynamic. Otherwise though, nothing tricky.

~~~~{.cpp}

// bind our texture. in our shader this will now be tex0 by default
// so we can just go ahead and access it there.
img.getTextureReference().bind();

shader.begin();

ofPushMatrix();

// translate plane into center screen.
float tx = ofGetWidth() / 2;
float ty = ofGetHeight() / 2;
ofTranslate(tx, ty);

// the mouse/touch Y position changes the rotation of the plane.
float percentY = mouseY / (float)ofGetHeight();
float rotation = ofMap(percentY, 0, 1, -60, 60, true) + 60;
ofRotate(rotation, 1, 0, 0);

plane.drawWireframe();

ofPopMatrix();

shader.end();

ofSetColor(ofColor::white);
img.draw(0, 0);

~~~~


Unlike the last few instances, all the interesting stuff in this example is happening in the vertex shader since as you might have guessed from the name of the example, displacement is primarily a geometry based action rather than a pixel-shading based one. As I've mentioned elsehwere, the handy thing about texture data is that it's available everywhere all at the same time, even in the vertex shader. The *gl_Position* variable is modified using the *r* value of the texture at the texture coordinate passed in from the ofPlanePrimitive and that's really all the trickery there is.

~~~~{.cpp}
#version 150

// these are from the programmable pipeline system
uniform mat4 modelViewProjectionMatrix;
in vec4 position;
in vec2 texcoord;

// this is how we receive the texture
uniform sampler2DRect tex0;

out vec2 texCoordVarying;

void main()
{
    // get the position of the vertex relative to the modelViewProjectionMatrix
    vec4 modifiedPosition = modelViewProjectionMatrix * position;

    // we need to scale up the values we get from the texture
    float scale = 100;

    // here we get the red channel value from the texture
    // to use it as vertical displacement
    float displacementY = texture(tex0, texcoord).r;

    // use the displacement we created from the texture data
    // to modify the vertex position
    modifiedPosition.y += displacementY * scale;

    // this is the resulting vertex position
    gl_Position = modifiedPosition;

    // pass the texture coordinates to the fragment shader
    texCoordVarying = texcoord;
}

~~~~

Finally, we'll look at creating a blur effect using two shaders and two FBOs.

<a name="blurring"></a>
##Blurring

Blurring is one of the best ways to start thinking about multi-pass shading, that is, using multiple shaders in a single application to do multiple passes. Because GLSL (and GPU computing in general for that matter) is so heavily optimized towards doing specific types of operations on discrete blocks of memory, sometimes it makes more sense and gets you better performance to do multiple shading passes rather than put branching logic in your shaders. Blurring is one such operation where, though there are complex techniques for doing it in a single pass, is easier to break into two passes: an X pass and a Y pass. Making two shaders is pretty simple: declare two ofShader objects and then load two shaders into them.

~~~~{.cpp}

shaderBlurX.load("shadersGL3/shaderBlurX");
shaderBlurY.load("shadersGL3/shaderBlurY");

~~~~

In the draw() we're going to create two *ofFbo*s to draw into, run our *shaderBlurX* program on the first, draw it into the second, and then run our shaderBlurY program on the second. This is called "ping-ponging" and it's a very powerful way to create complex effects in multiple stages that is, particularly when you're using FBO objects, comparatively very fast and very effective.

~~~~{.cpp}

void ofApp::draw(){

    float blur = ofMap(mouseX, 0, ofGetWidth(), 0, 10, true);

    //----------------------------------------------------------
    fboBlurOnePass.begin();

    shaderBlurX.begin();
    shaderBlurX.setUniform1f("blurAmnt", blur);

    image.draw(0, 0);

    shaderBlurX.end();

    fboBlurOnePass.end();

    //----------------------------------------------------------
    fboBlurTwoPass.begin();

    shaderBlurY.begin();
    shaderBlurY.setUniform1f("blurAmnt", blur);

    fboBlurOnePass.draw(0, 0);

    shaderBlurY.end();

    fboBlurTwoPass.end();

    //----------------------------------------------------------
    ofSetColor(ofColor::white);
    fboBlurTwoPass.draw(0, 0);
}

~~~~

This is a pretty canonical blur fragment shader, you'll see it or something very similar to it in lots of different sources. Really you're just creating an image kernel and looking at different texels around the texture to figure out what an averaged or blurred approximation of each pixel would look like. This is another one of the places where having access to the entire texture at a given time is very helpful and lets us create complex effects very quickly by doing image processing on the graphics card. You'll notice that this is just the X pass. The Y pass looks almost identical, but with Y values in the *vec2* rather than X values. Why two passes? Let's look at the math: the computational cost for the multi-stage blur shader is 18 (9 + 9) texture look-up operations. The computational cost for the shader if it's all blured in one pass is 9*9 or 81 texture look-up operations. You can see how it'd save some time to do two passes, no?

~~~~{.cpp}

#version 150

uniform sampler2DRect tex0;
uniform float blurAmnt;
in vec2 texCoordVarying;
out vec4 outputColor;

void main()
{
    vec4 color;

    color += 1.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * -4.0, 0.0));
    color += 2.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * -3.0, 0.0));
    color += 3.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * -2.0, 0.0));
    color += 4.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * -1.0, 0.0));

    color += 5.0 * texture(tex0, texCoordVarying + vec2(blurAmnt, 0));

    color += 4.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * 1.0, 0.0));
    color += 3.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * 2.0, 0.0));
    color += 2.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * 3.0, 0.0));
    color += 1.0 * texture(tex0, texCoordVarying + vec2(blurAmnt * 4.0, 0.0));

    color /= 25.0;

    outputColor = color;
}

~~~~


## The End, Congrats!


If you've made it all the way to end of this, thanks and congratulations to you. A few further resources for you, if you're interested:

* [A trip through the graphics pipeline](http://fgiesen.wordpress.com/2011/07/09/a-trip-through-the-graphics-pipeline-2011-index/)
* [Graphics Shaders Theory and Practice](http://www.amazon.com/Graphics-Shaders-Theory-Practice-Edition/dp/1568814348)
* [OpenGL 4.0 Shading Language Cookbook](http://www.amazon.com/OpenGL-4-0-Shading-Language-Cookbook/dp/1849514763)


Check out the rest of the examples, particularly the GL ones, ask questions and share your work on the forum, and above all have fun.

