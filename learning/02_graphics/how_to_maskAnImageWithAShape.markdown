---
.. title: Mask an image with a shape
.. summary: How to mask an image with a shape
.. type: howto
---

Since 0.9.0 openFrameworks has had the ability to set the alpha mask for a texture with another texture. In this example, we draw a path into an FBO (offscreen image) and then pass the result to the image we want to mask.

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