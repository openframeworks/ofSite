---
.. title: Introdution Math api
.. type: documentation
.. translator: jongun won
.. translator_site: http://scripter.co.kr
---
## Vector math classes, geometry utils and other mathematical functions
## 수리 벡터 클래스, 기하학 유틸 및 기타 수학관련 함수들

This module contains classes and functions that provide mathematical utilities helpful to work with graphics and other media. 
이 모듈은 그래픽과 미디어작업에 도움을 주는 수학과 관련된 유틸리티 클래스와 함수들을 포함 하고 있습니다. 

The classes in this module allow to work with vector math, [ofVec2f](ofVec2f.html), [ofVec3f](ofVec3f.html) and [ofVec4f](ofVec4f.html) for example represent vectors in 2, 3 and 4 dimensions. </br>
이 클래스들은 수학벡터인  [ofVec2f](ofVec2f.html), [ofVec3f](ofVec3f.html), [ofVec4f](ofVec4f.html)을 사용 하게 합니다. 예를들어 2차원 3차원 혹은 4차원 나타냅니다. </br>

[ofMatrix4x4](ofMatrix4x4.html) allows to represent scaling, rotations, translations and perspective transformations in an way that allows to transform any point in 3D space just by multiplying it by the matrix, [ofMatrix4x4](ofMatrix4x4.html) can be easily uploaded to the graphics card through shaders or the ofLoadMatrix functions in [ofGraphics](../graphics/ofGraphics.html).

[ofMatrix4x4](ofMatrix4x4.html)는 3차원 공간의 메트릭스에 의한 곱샘과 3D 공간상의 어떠한 점의 스케일 , 회전 ,평행이동과 투시 변환에 사용할 수 있고, [ofMatrix4x4](ofMatrix4x4.html) 는 [ofGraphics](../graphics/ofGraphics.html)의 ofLoadMatrix 함수들과 그래픽 카드의 쉐이더를 통하여 쉽게 업로드 됩니다. </br>

[ofMath](ofMath.html) contains functions for various mathematical operations like generating a random number with ofRandom, or calculating the intersection of two line segments with ofLineSegmentIntersection.</br>
[ofMath](ofMath.html)는 랜덤숫자 생성기과 같은 다양한 수학적 기능과, ofLineSegmentIntersection 의 라인 세그먼트들의 충돌 계산을 포함 합니다.

=====
###### 코멘트 (완료시 지울것) </br>
..* c++ Vector와 혼선을 방지 하고자 Vector math 를 단순하게 수학 벡터 로 번역 하였습니다.  
..* 한국어로 옮기려니, 한국말 능력자가 필요 한가 봅니다 ^^; 
..* 개발자 입장에서 완곡하게 읽을 수 있도록 약간 의역을 하였습니다.

