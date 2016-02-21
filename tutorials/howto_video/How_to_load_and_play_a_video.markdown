---
.. title: How to load and play a video
.. type: howto
---

Select a video to load and play. 

Create a new folder in the bin/data folder of your OF project, name it "movies" and drop your video in it. 

####In the ```ofApp.h``` file: 

Add an instance variable of type ```ofVideoPlayer``` for the video you wish to load.

 	ofVideoPlayer fingerMovie;

####In the ```ofApp.cpp``` file:

Load the video by calling the ```load()``` method of ```ofVideoPlayer ```, with the relative path to the video:

	videoName.load("INSERT FILE PATH HERE")
	
example:

	void ofApp::setup(){
		fingerMovie.load("movies/fingers.mov");
	}
	
To start playing the video, simply call the ```play()``` method of ```ofVideoPlayer```:

	void ofApp::setup(){
		fingerMovie.load("movies/fingers.mov");
		fingerMovie.play();
	}
	
###For more information:

take a look at: ```examples/video/videoPlayerExample```
