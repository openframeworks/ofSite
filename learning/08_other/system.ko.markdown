---
.. title: 커맨드라인 명령 사용하기
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---


C++에서는 [system](http://www.cplusplus.com/reference/cstdlib/system/)명령을 사용하여 커맨드 라인에서 사용할 수 있는 명령을 호출 할 수 있습니다.

예를들어 매킨토시 상에서:

```cpp
void ofApp::keyPressed(int key){
    if (key == ' '){
        system("say 'hello world'");
    }
}
```

여러분이 사용하고 있는 운영체제에 따라서 다른 것들을 고려할 필요가 있습니다. 예를들어 POSIX 시스템의 경우, 명령의 끝에 &를 붙여 백그라운드에서 동작하게 할 수도 있습니다.

example/input_output의 [systemSpeakExample](https://github.com/openframeworks/openFrameworks/tree/master/examples/input_output/systemSpeakExample)에서 이에 관한 보다 상세한 플랫폼별 정보를 얻으실 수 있습니다.
