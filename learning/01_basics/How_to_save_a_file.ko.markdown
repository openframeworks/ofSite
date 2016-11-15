---
.. title: 파일 저장/내보내기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

오픈프레임웍스는 파일경로를 별도로 지정해주지 않는 한 bin/data에 저장하게 됩니다.

![File location bin/data](How_to_save_a_file_output_whereTo.png)

만일 여러 파일들을 저장하고 싶으시다면, 각 파일명은 유일해야합니다. 가장 빠른 방법은 현재의 타임스탬프를 사용하는것입니다. 절대 같을 수 없기 때문이죠. 따라서 저장할때마다 파일을 덮어씌우는 ```"myFile.xml"``` 를 사용하는 대신, 매번 저장할때마다 각 파일이 자신의 이름을 갖도록 ```"myFiile_" + ofGetTimeStampString() + .xml"``` 로 사용할 수 있습니다.

![using timeStamps versus not](How_to_save_a_file_usingTimeStamps.png)

어플리케이션의 어느 부분에서라도 파일을 저장할 수 있습니다만, 아마도 특정한 상황에 동작하게 하고 싶으실겁니다. 아마 특정 키를 눌렀을때마다 파일을 저장하게 할 수 있겠죠.

	void ofApp::keyPressed  (int key){
		if(key == 's'){
		// save your file in here!!
		}
	}

Or you might want to call it everytime you exit your application.
또는 프로그램을 종료할 때마다 저장하게 할 수도 있습니다.

	void ofApp::exit (){
		// save your file in here!!
	}

노트: exit()은 앱을 종료하거나 esc키를 눌렀을 때 자동으로 호출됩니다. 하지만 IDE에서 앱을 중지(stop버튼)할 경우에는 동작하지 않습니다.

## 텍스트 파일

### 헤더파일에서 (.h)

```ofFile myTextFile;```

### 구현파일에서 (.cpp)

파일을 생성하기 위해 setup에. 

```myTextFile.open("text.txt",ofFile::WriteOnly);```

이와같이 작성합니다. 만약 이미 존재하는 txt 파일에 추가하려면 아래와 같이 작성합니다.

```myTextFile.open("text.txt",ofFile::Append);```

텍스트를 추가하기 위해서는, 아래와같이 코드를 작성하면 됩니다.

```myTextFile << "some text"```

이는 자동으로 저장하기 떄문에, 별도로 저장 함수를 호출할 필요가 없습니다.

## XML 세팅

### 헤더파일에서 (.h)
	
상단에 XML 애드온을 include합니다.

```#include "ofxXmlSettings.h"```

변수를 초기화 합니다:

```ofxXmlSettings XML;```
	
### 구현파일에서 (.cpp)
	
XML에 뭔가를 추가합니다:

```XML.setValue("settings:number", 11);```

저장합니다!

```XML.saveFile("mySettings.xml");```

보다 많은 정보는 examples/utils/xmlExample을 참고해주세요.

## 이미지

### 헤더파일에서 (.h)

```ofImage img;```

### 구현파일에서 (.cpp)

이미지를 만듭니다. 이미지를 만드는 방법은 아주 다양합니다! 카메라에서 가져오거나, 픽셀 하나하나를 생성할 수도 있고, FBO에서 가져올 수도 있습니다. 여기서는 옵션중 하나인, 화면면에 그려내고, 이것을 하나의 이미지로 가져오는 방법입니다.

	//in draw
	ofSetColor(255,130,0);
    ofFill();
    ofDrawCircle(100,100,50);   
    // in keyPressed
    img.grabScreen(0,0,300,300);

그리고 여러분이 원하는 지점에서 저장하도록 합니다. 아마도 keyPressed내 혹은 exit 함수내에 작성할 수 있겠죠. 저장할때에는 .png나 .jpg중 하나를 선택할 수 있습니다.

```img.save("myPic.jpg");```

옵션으로 추가적인 파라매터를 사용하여 이미지 화질을 지정할 수도 있습니다.

```img.save("myPic.jpg",OF_IMAGE_QUALITY_LOW);```

디폴트는 ```OF_IMAGE_QUALITY_BEST```이며, 다른 모든 옵션들은 이와 같습니다: options are: ```OF_IMAGE_QUALITY_BEST, OF_IMAGE_QUALITY_HIGH, OF_IMAGE_QUALITY_MEDIUM, OF_IMAGE_QUALITY_LOW, OF_IMAGE_QUALITY_WORST```

이러한 케이스에서 결과는 아래와 같습니다.

![image of outpu](How_to_save_a_file_output.jpg)

보다 많은 정보는 examples/graphics/imageSaverExample를 참고해주세요.

