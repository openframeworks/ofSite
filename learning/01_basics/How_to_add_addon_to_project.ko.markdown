---
.. title: How to add an addon to a project
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

# 프로젝트에 애드온 추가하기

## 애드온은 어디에서 찾을 수 있나요?

애드온은 오픈프레임웍스 설치경로의 ```addons```폴더에 위치해 있습니다. 오픈프레임웍스를 다운받았다면, 이미 이곳에서 몇가지 핵심 애드온들을 발견할 수 있을 겁니다. 직접 만들었거나 [다른분들의 애드온](http://ofxaddons.com/)에서 다운받은 애드온이 있다면 마찬가지로 이 폴더에 위치시키면 됩니다.

## Makefile 기반의 프로젝트들

만약 여러분의 프로젝트를 Makefile로 컴파일한다면, ```addons.make```이라 불리는 파일에 포함하고자 하는 애드온의 이름을 작성하는 것만으로 애드온을 추가할 수 있습니다. 이 파일은 반드시 프로젝트의 취상위 폴더의 Makefile 바로 옆에 위치키셔야 합니다. 아래는 ```addons.make```의 예시입니다:

```
ofxXmlSettings
ofxGui
```

## 프로젝트 생성기 사용하기

## Xcode
