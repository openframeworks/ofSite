## -*- coding: utf-8 -*-
---
.. date: 2013/10/21 7:40:00
.. title: 도큐먼트작성에 공헌하기
.. summary: 도큐먼트를 수정하고 오픈프레임웍스를 빌드하는 법
.. author: David Newbury
.. author_site: http://workergnome.com
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

오픈프레임웍스 도큐먼트는 커뮤니티의 노력에 의해 만들어졌으며, 많은 사람들이 참여하여 부족한 오타를 수정하거나, 예제를 추가하여 토큐먼트를 완성해 나가기를 고대하고 있습니다. 이런 도움을 주는데 관심이 있으시더나 뭔가에 대해서 힘들하신다면, 토큐먼트를 수정하는데 공한할 수 있는 두가지 방법이 있습니다. 하나는 쉬운 방법이고, 다른것은 좀 어려운 방법입니다.
우선, 토큐먼트의 구조와 포맷에 대해 잠깐 살펴봅시다.

## 토큐먼트의 구조와 포맷팅

오픈프레임웍스 사이트의 토큐먼트는 [.markdown](http://daringfireball.net/projects/markdown/syntax)파일들로 작성되어 [openFrameworks ofSite Github](https://github.com/openframeworks/ofSite/)에 저장되어있습니다. 각 클래스의 도큐먼트는 해당 클래스이름으로 된 .markdown파일로 작성되어 있으며, 안에는 해당 클래스의 모든 메소드와 변수들이 담겨있죠. 도큐먼트 웹사이트의 폴더구조는 오픈프레임웍스 클래스 구조와 동일하게 되어있습니다.

예를들어, ``ofMesh`` 도큐먼트를 살펴보면 아래와 같습니다:

    _documentation/3d/ofMesh.markdown

헤매지 않도록, 플래스의 함수들은 자신만의 파일에 작성되어있습니다.

    _documentation/3d/ofMesh_functions.markdown


도큐먼트 문서는 약간 수정된 [마크다운(markdown) 문법](http://daringfireball.net/projects/markdown/syntax)으로 작성되어있으며, 아래의 구조를 따릅니다:

```
# class ofClass

## Description

<description of the class goes here>

## Methods

methods of the class

_description: _



<Description & documentation goes here>



## Variables

variables of the class

_description: _


<Description & documentation goes here>



```

편집을 할때에는, ``##Description``이나 ``_description: _``의 뒷부분에 작성해야합니다: 다른 모든 라인들은 자동으로 생성되며, 사이트 내의 빌드 스크립트로 생성될 때 사용됩니다.

링크를 걸때는 일반적인 마크다운 문법을 사용합니다:

    [링크제목](http://google.com "대체 텍스트")

이미지도 일반적인 마크다운 문법을 사용합니다:

    ![이미지제목](filename.png "대체 텍스트")

일반적인 표준 마크다운 문법과 가장 큰 차이를 보이는 곳은 코드 블럭 작성입니다. 표준 들여쓰기 방법 대신, 코드블럭은 내게의 틸드(~)와 괄호로 묶인 ".cpp"로 시작됩니다. 블럭이 끝날때 역시 네개의 틸드를 사용합니다.

예를 들면 다음과 같습니다:

    ~~~~{.cpp}
    
    // Get the area of that rectangle
    float areaValue = myRect.getArea();
    
    // areaValue will be 20000.0.
    ~~~~

틸드 사이의 모든것은 C++코드로 구문 하이라이트 되어 보여집니다.

#### 하지 말아야 할 것들:

``### 이것은 헤더입니다``문법을 사용하여 설명에 헤더를 추가하지 **마십시오** : 헤더는 개별적인 함수들을 구별하는데 사용되므로, 사이트를 빌드할 때에 사이트를 망가뜨리게 됩니다.

도큐먼트에 새로운 함수를 작성하지 **마십시오**: 오픈프레임웍스의 새 버젼이 릴리즈될 때마다 자동으로 생성됩니다.

_field: value_ 로 작성된 필드를 수정하지 **마십시오**: 이부분은 사이트를 빌드할때 사용되는 플래그입니다.



----

## 오픈프레임웍스 도큐먼트를 수정하는, 쉬운방법 :

[오픈프레임웍스](https://github.com/openframeworks/openFrameworks) 프로젝트와 마찬가지로, [오픈프레임웍스 웹사이트](/)역시 [Github](https://github.com/openframeworks/ofSite)에 저장되어있습니다. Github는 웹사이트로, [깃](http://git-scm.com)시스템을 사용하는 거대한 분산 버전관리 온라인 코드 저장소입니다. Github는 오픈소스친화적이며, 이곳에 점점 많은 오픈소스 소프트웨어들이 저장, 수정, 업데이트되고 있습니다.

누구든지 Github를 통해 [pull requests](https://help.github.com/articles/using-pull-requests)를 하여 웹사이트를 업데이트 할 수 있습니다. 여러분이 뭔갈 바꾸고 싶으나 깃의 동작법에 대해서 잘 모른다 하더라도, Github은 웹 페이지에서 아주 쉽게 텍스트파일을 수정할 수 있는 방법을 제공하고 있습니다. Github계정을 만들기만 하면 말이죠. 이 계정이 있으면 무료로 오픈소스 프로젝트를 운영하거나, 사람들과 함께 오픈소스프로젝트를 진행 할 수 있습니다.

[github.com](https://github.com)에 가입하여 계정을 얻으세요! 

#### Github에 있는 오픈프레임웍스 OF 도큐먼트 수정하기

#### 단계 1 : 클래스 찾기

[오픈프레임웍스 도큐먼트 페이지](/ko/documentation/)에서, 클래스의 매 페이지 상단에 보면, 두 개의 버튼이 있을겁니다. "Edit Clas" 그리고/혹은 "Edit Functions"입니다:

![](editclass.png)

두 버튼중 하나를 클릭하면, github의 문서 전체의 내용이 담긴 텍스트 편집창으로 이동할것입니다. 이 텍스트들은 클래스 혹은 함수들의 세트입니다. 아마도 이렇게 보일것입니다:

![](editscreen.png)

#### 단계 2: 문서 편집하기 

텍스트의 블록에서, 편집하고 싶은 메소드, 편수, 함수를 찾습니다. 텍스트를 바로 편집하세요. 편집이 완료되었다면, 텍스트박스 하단에서 편집을 완료할 수 있습니다.

![](edit_save.png)

여러분이 변형한 내용들에 대해서 간단한 설명이나 요약을 덧붙일 수 있습니다. "Propose File Change"버튼을 클릭하시면 됩니다.

#### 단계 3: 변경 리뷰하기

과정이 완료되고 나면, 변경된 내용을 리뷰할 수 있습니다:

![](review.png)

아레에 보시면 변경된 텍스트들의 모든 내용이 있습니다. 변경한 내용들을 쭉 훑어보면서 실수로 삭제했거나 잘못 작성한 곳이 있는지 확인해보세요. 여러분의 코드를 리뷰한
사람에게 메시지를 보내고 싶다면 그것도 가능합니다. 

변경된 내용이 맘에 든다면, "Send Pull Request"버튼을 클릭하세요. 리뷰된 내용은 pull request 되어 submit될 것입니다. pull request 리스트에 등록되고, 추후 관리자에 의해 승인되어, 사이트에 반영될것입니다.이 과정들은 보통 순식간에 벌어지지만, 지원자 팀이므로 가끔은 며칠이 소요될 수 있습니다. 기다리시면 변경된 내용이 사이트에 merge되었다는 이메일을 Github에서 받으실 수 있습니다. 

축하드립니다! 오픈프레임웍스 토큐먼트 페이지를 수정했군요. 커뮤니티에 공헌도 했고, 미래의 사람들의 인생을 더 낫게 했습니다. 아주 쉽죠?
    

----

<small>본 튜토리얼은 [Bernardo Schorr](https://twitter.com/bernardoschorr)와 [Chris Coleman](https://twitter.com/digitalcoleman)의 도움을 받아 [David Newbury](https://twitter.com/workergnome)의해 작성되었습니다.</small>
<br/><small>본 튜토리얼의 초기버전은 [Frank-Ratchye STUDIO for Creative Inquiry](http://studioforcreativeinquiry.org)에서 2013년 10월 11-13일에 열린 [오픈프레임웍스/라즈베리파이 워크샵](http://studioforcreativeinquiry.org/events/creative-coding-on-the-raspberry-pi-with-openframeworks)에서 작성되었습니다.</small>

