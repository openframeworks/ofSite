---
.. title: 사운드를 불러와 재생하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

사운드를 불러와 재생하는것은 아주 간단합니다. ofSoundPlater를 초기화하고, 사운드 파일을 불러온 뒤, 사운드 파일을 재생하면 됩니다.

시작하기전에 bin/data 폴더에 사운드 파일을 저장해두어야 합니다.

![Screenshot of Example)](screenshot.png)

### 헤더파일에서 (.h)

ofSoundPlayer를 초기화합니다.

	ofSoundPlayer 	mySound;


### 구현파일에서 (.cpp)

setup 메소드에서 사운드를 불러옵니다. .mpr, .wav와 같은 다양한 사운드파일을 불러올 수 있습니다.

	void ofApp:setup(){
		mySound.load("fileName.mp3");
	}

다음, 사운드파일을 재생합니다. 만약 setup 메소드에 추가할 경우, 사운드는 앱이 시작할 때 단 한번만 재생될 것입니다. 만약 사운드가 계속 재생되게 하고싶다면 반복 재생을 하도록 설정할 수도 있습니다.

	void ofApp:setup(){
		mySound.load("fileName.mp3");
		mySound.play();
	}


또한 마우스를 클릭하거나, 키를 눌렀을때, 마우스 드래그 등등 특정한 상황에 play 함수를 호출할 수도 있습니다.

	void testApp::keyPressed  (int key){
		if(key == "p"){
			mySound.play();
		}
	}

### 추가 정보
오픈프레임웍스를 사용해 사운드를 조작하는 방법에 관한 보다 많은 정보는 ofBook의 [사운드 챕터](http://openframeworks.cc/ofBook/chapters/sound.html)를 살펴보세요.
