---
.. title: Issue a command to the command line
.. type: howto
---


In C++ we can use the [system](http://www.cplusplus.com/reference/cstdlib/system/) command to call anything we would from the command line. 

For example, on osx: 

```cpp
void ofApp::keyPressed(int key){
    if (key == ' '){
        system("say 'hello world'");
    }
}
```

Depending on your operating system there might be other things to consider.  For example, on posix systems, you might want to use the & at the end of your command so that it runs in the background. 

The [systemSpeakExample](https://github.com/openframeworks/openFrameworks/tree/master/examples/input_output/systemSpeakExample) in examples/input_output has good information about this and more details per-platform. 

