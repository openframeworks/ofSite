# 오픈프레임웍스 사이트

이 저장소는 [openFrameworks](http://openFrameworks.cc/)웹사이트를 생성하기 위한 콘텐츠와 코드를 담고 있습니다.

다른 언어는 아래에서 보실 수 있습니다.
=======
- 영어(English) : [readme.md](readme.md)
- 일본어(日本語) : [readme.ja.md](readme.ja.md)
- 중국어-간체(简体中文) : [readme.zh_cn.md](readme.zh_cn.md)

## 참여하기

웹페이지나 도큐먼트를 수정하는데 참여하기 위해, 이 저장소를 fork하여 작어하시고, github을 통해 pull request를 보내주시면 됩니다.

대부분의 콘텐츠는 `content`내에 마크다운으로 담겨 있습니다.

`tutorials` 폴더는 카테고리를 의미하는 폴더가 담겨있고, 각 폴더안에는 `.markdown` 확장자를 가진 텍스트파일이 담겨 있습니다. 이 각 카테고리의 튜토리얼에 포함되는 이미지/다른 자료들은 텍스트 파일명과 같은 이름의 폴더에 담겨있습니다. 각 튜토리얼은 최종으로 생성되 때 이런 리소스들과 같은 레벨에 위치하게 되므로, 이미지/자료들의 링크를 작성할때에는 상대적인 경로로 작성해야 하며, 폴더를 포함해서는 안됩니다. 예시는 아래와 같습니다:

```md
![img](image.png)
```

`documentation` 폴더는 OF API 레퍼런스들을 담고 있으며, 역시 마크다운포맷입니다. 이 문서들은 코드에 의해 생성되나, 모든 클래스, 함수 및 변수들의 `description`필드는 마크다운으로 직접 편집할 수 있습니다.

## 로컬 사이트 구축을 위한 세팅

이 사이트는 [nikola](https://getnikola.com)를 기반으로 합니다. 손쉬운 구축 및 설치, 사용을 위한 스크립트가 최상위 폴더에 준비되어 있습니다.

- ./install.sh는 nikola및 필요한 의존성 패키지를 설치해줍니다. 현재는 리눅스와 매킨토시에서 테스트되었습니다. 매킨토시에서는, 스크립트를 실행하기 전에, 우선 아래 패키지들을 설치해주어야 합니다.

  ```bash
  brew install python3
  sudo easy_install pip
  brew linkapps python3
  ```

  그리고 나서 .bashrc 또는 .zshrc 파일에 아래 코드를 추가해주시면 됩니다.

  `export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"`

- ./auto_build.sh는 수정된 파일이 있을때마다 nikola를 구동하고 수정된 파일이 있을 때마다 웹을 빌드합니다. 만약 매킨토시에서 `FileNotFoundError: [Errno 2] No such file or directory: 'asciidoctor'` 에러가 발생할 경우, [이곳](http://asciidoctor.org/docs/install-asciidoctor-macosx/)에서 설명하는 가이드를 따라 asciidoctor를 설치하고 난 뒤, 스크립트를 다시 실행해주십시오.

- ./serve.sh는 브라우저에서 확인할 수 있도록 로컬 웹서버를 시작하여 웹사이트를 제공합니다. 

번역에 참여하는 것과 같이 큰 수정을 할 계획이 있으시다면, 가장 쉬운 방법은 위에서 언급한 마지막 2개의 스크립트를 실행시켜둔 상태에서 콘텐츠 파일을 수정하는 것입니다. 파일의 변경이 있으면 사이트는 자동으로 업데이트 됩니다.

## 마크다운 도큐먼트-스타일 

사이트의 일부분 도큐먼트들은 마크다운으로 작성되어 있습니다. 마크다운은 위키-스타일 문법입니다. 자세한 사항은 [Daringfireball](http://daringfireball.net/projects/markdown/)를 살펴보시기 바랍니다.

문법을 체크하는 가장 쉬운 방법은 사이트의 많은 페이지들을 살펴보는 것이지만, 아래에 몇가지 유용한 팁을 알려드립니다:

코드를 삽입하려면, 아래와 같이 작성하시면 됩니다. 시작과 끝을 주의하시고, 시작의 끝은 "cpp"로 마치시면 됩니다.

	```cpp
	for(int i = 0; i < 16; i++) {
		ofLog() << i;
	}
	```


이미지는 일반적인 마크다운 포맷을 사용하여 추가합니다:

    ![Image Title](filename.png "alt text")

도큐먼트 공헌에 관한 최종 설명은, [문서 공헌하기](http://openframeworks.cc/ko/learning/08_other/contributing/) 튜토리얼을 참고해주시기 바랍니다.

