---
.. title: 画像を形を指定してマスクする
.. summary: 画像を形を指定してマスクする方法
.. type: howto
---

 openFrameworks 0.9.0から、テクスチャーを使用して他のテキスチャーのアルファマスクを指定できるようになりました。下記の例では、描いたパスをFBO (オフスクリーンイメージ) に格納して、マスクしたい画像にパスを描いた画像を適用しています。

```
ofPath path;
ofImage img;
ofFbo fbo;


void setup(){
    path.lineTo(...);
    // パスを描く、グレーの濃さがアルファに相当する

    //もしプログラマブル・レンダラーを使っている場合は、GL_REDでもよい
    fbo.allocate(w,h,GL_LUMINANCE); 
    fbo.begin();
    path.draw();
    fbo.end();

    img.getTexture().setAlphaMask(fbo.getTexture());
}

void draw(){
    img.draw();
}
```