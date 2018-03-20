---
.. title: 파일을 한줄 한줄을 문자열의 벡터에 넣기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

본 문서에서는 텍스트 파일을 읽어서 문자열의 벡터로 넣는 방법(파일의 각 라인이 벡터에 담깁니다.)을 간략하게 다룹니다. ofBufferFromFile을 사용하여 파일을 ofBuffer로 로드한 다음 ofBuffer::getlines()을 반복하여 라인을 얻습니다:

```
vector < string > linesOfTheFile;
ofBuffer buffer = ofBufferFromFile("fileIWantToRead.txt");
for (auto line : buffer.getLines()){
    linesOfTheFile.push_back(line);
}
// now linesOfTheFile has each line of the file as an element in the vector
```

또한 이렇게도 가능합니다:

```
auto lines = ofSplitString(ofBufferFromFile("file.txt").getText(), "\n");
```

for 반복문을 사용하지 않는 방법입니다. 다만 이 방법의 경우 윈도우 운영체제의 breakline인 `\r`은 인식되지 않습니다.

