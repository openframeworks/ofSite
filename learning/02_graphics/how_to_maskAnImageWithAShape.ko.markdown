---
.. title: 이미지를 도형으로 마스킹하기
.. summary: How to mask an image with a shape
.. type: howto
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

오픈프레임웍스 0.9.0부터 텍스쳐를 다른 텍스쳐로 알파 마스킹 처리를 할 수 있습니다. 아래 예제에서는, FBO(offscreen 이미지)에 path를 그리고, 이것의 결과를 마스킹할 이미지로 전달합니다.

```
ofPath path;
ofImage img;
ofFbo fbo;


void setup(){
    path.lineTo(...);
    // draw on the path, level of gray means alpha

    fbo.allocate(w,h,GL_LUMINANCE); //or GL_RED if you are using the programmable renderer
    fbo.begin();
    path.draw();
    fbo.end();

    img.getTexture().setAlphaMask(fbo.getTexture());
}

void draw(){
    img.draw();
}
```