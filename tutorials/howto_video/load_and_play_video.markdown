---
.. title: Load and play a video file
.. type: howto
---


In your header file (``*.h``), add this line:
    
```cpp
ofVideoPlayer videoPlayer;
```

In your ``.cpp`` file, there are only a few more lines of code we need, this is what you'll need to add to the ``setup()`` function:

```cpp
videoPlayer.load("myLovelyVideo.mp4");
```

In your ``update()`` function:

```cpp
videoPlayer.update();
```


In your ``draw()`` function:

```cpp
videoPlayer.draw(0, 0, 400, 300);
```