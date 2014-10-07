~~~~{.h}

int res;

~~~~


~~~~{.cpp}

void ofApp::setup(){
    res = 5;
}

//--------------------------------------------------------------
void ofApp::draw(){
    
	ofSetColor(0, 255, 0);
    ofFill();
    ofSetSphereResolution(res);
    ofDrawSphere(ofGetWidth() * .5, ofGetHeight() * .5, 100);
    
    string sphereres = ofToString(ofGetSphereResolution());
    ofDrawBitmapString("Sphere Resolution: " + sphereres, 30, 30);
                       
    //NOTE: to better see the 3D shape you need to create a light spot...
    //check `ofLight' documentation
    

}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
    switch (key) {
        case 'q':
            res--;
            break;
        case 'w':
            res++;
            break;
 
        default:
            break;
    }

}


~~~~
