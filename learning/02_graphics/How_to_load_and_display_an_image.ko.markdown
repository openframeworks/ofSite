---
.. title: 이미지를 불러와 그리기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

불러와서 그려낼 이미지를 선택합니다. 이미지는 .gif, .jpg, 또는 .png 파일형식이 될 수 있습니다.

오픈프레임웍스 프로젝트의 bin/data내에 "images"라는 이름으로 새로운 폴더를 생성한 뒤 이미지를 던져놓습니다.

#### ```ofApp.h``` 파일에서: 

불러올 각각 이미지를 위한 ```ofImage``` 타입의 인스턴스 변수를 추가합니다.

 	ofImage bikers;
 	ofImage bikeIcon;

#### ```ofApp.cpp``` 파일에서:

```ofImage```의 ```load()```메소드를 호출하여 이미지를 불러옵니다. 이 때 이미지의 상대 경로를 사용합니다.

	imageName.load("파일경로를 이곳에 넣어줍니다")

예제:

	void ofApp::setup(){
		bikers.load("images/bikers.jpg");
		bikeIcon.load("images/bike_icon.png");
	}
	

```ofImage```의 ```draw()```를 호출하여 이미지를 그릴 수 있으며, 가로및 세로의 좌표를 지정하여 화면상에 그려질  위치를 지정할 수 있습니다. 이때 지정한 좌표에는 이미지의 좌측 최상단 코너가 위치하게 됩니다.

	imageName.draw(xPosition, yPosition)

example:

	void ofApp::draw(){
		bikers.draw(0, 0);
		bikeIcon.draw(190, 490);
	}
	
추가적으로, 이미지를 그릴때 이미지의 *가로*와 *세로*크기를 지정해 크기를 변경할 수도 있습니다.

	imageName.getColor(xPosition, yPosition, width, height)
	
example:
	
	void ofApp::draw(){
		bikeIcon.draw(190, 490, 20, 20);
	}
	
### 더 많은 정보:

```examples/graphics/imageLoaderExample```를 살펴보세요.

