## -*- coding: utf-8 -*-
<%inherit file="/_templates/markdown.mako" />

# osxVideoRecorderExample

This example shows how to use the OS X specific video grabber (Quicktime - `ofQTKitGrabber`) to record synced video and audio to disk.

It offers some options to control sources (video input device, audio input device) and video recording.

Once recorded, the video is saved in a .mov file (check the bin/data/MyMovieFile.mov file inside the example folder) and played in a loop in the right frame of the app.

![videoGrabberExample Screenshot](images/osxVideoRecorderExample.png)

## Classes used

- `ofVideoGrabber`
- `ofQTKitGrabber`
- `ofVideoPlayer`

## Tags
video, cameras, quicktime, 
