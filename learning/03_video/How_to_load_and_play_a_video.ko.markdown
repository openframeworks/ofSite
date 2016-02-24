---
.. title: 비디오를 불러와 재생하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

불러와서 재생할 비디오를 선택합니다.

여러분의 오픈프례임웍스 프로젝트의 bin/data 폴더안에 "movies"라는 새로운 폴더를 생성하고, 이 폴더에 비디오를 던져놓습니다.

#### ```ofApp.h``` 파일에서: 

불러올 비디오를 위한 ```ofVideoPlayer``` 타입의 인스턴스 변수를 추가합니다.

 	ofVideoPlayer fingerMovie;

#### ```ofApp.cpp``` 파일에서:

```setup``` 함수에서:

```ofVideoPlayer```의 ```load()```메소드를 호출하여 비디오를 불러옵니다. 비디오 파일의 상대경로를 사용합니다.

	videoName.load("파일의 경로를 이곳에 작성합니다");
	

비디오 재생을 시작합니다:

	videoName.play();

예제:

	void ofApp::setup(){
		fingerMovie.load("movies/fingers.mov");
		fingerMovie.play();
	}
	
	
``update()`` 함수에서:


	videoPlayer.update();


예제:

	void ofApp::update(){
		fingerMovie.update();
	}

``draw()`` 함수에서:


	videoPlayer.draw(xPosition, yPosition, width, height);


예제:

	void ofApp::draw(){
		fingerMovie.draw(0, 0, 400, 300);
	}
	
### 더 많은 정보:

```examples/video/videoPlayerExample```를 살펴보세요.
