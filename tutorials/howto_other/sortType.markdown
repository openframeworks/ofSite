---
.. title: Sort a vector of a more complex data type 
.. type: howto
---


If you have an object that has multiple variables it becomes trickier to sort.  We can use ofSort(...) with a boolean function that helps tell ofSort what to sort on.  
    

Here's a short example -- First, we are definining the object at the top of ofApp (this could also be in seperate files, etc).  We also define a boolean function called sortMe which takes two references to the objects to compare and returns true if a should be before b.  In this case we are sorting on age (youngest first) but we could sort on another property.   


```cpp
#include "ofApp.h"

// create an object which has data inside it we want to sort
class myObject {
    public:
        float age;
        int id;
};

// a boolean function that tells ofSort how to compare two items
bool sortMe(myObject & a, myObject & b){
    if (a.age < b.age){
        return true;
    } else {
        return false;
    }
}

//--------------------------------------------------------------
void ofApp::setup(){

    
    // make three objects give them different data
    
    myObject a;
    myObject b;
    myObject c;
    
    a.id = 0;
    b.id = 1;
    c.id = 2;
    
    a.age = 100;
    b.age = 1000;
    c.age = 5;
    
    // add them to a vector
    
    vector < myObject > objects =  {a,b,c};
    
    // print out the data pre sorted 
    
    cout << "pre sort" << endl;
    
    for (int i = 0; i < objects.size(); i++){
        cout << objects[i].id << " " << objects[i].age << endl;
    }
    
    ofSort(objects, sortMe);
    
    // print out the data post sorted
    
    cout << "post sort" << endl;
    
    for (int i = 0; i < objects.size(); i++){
        cout << objects[i].id << " " << objects[i].age << endl;
    }
}
 
```

when you run this code, you'll see the following: 

```
pre sort
0 100
1 1000
2 5
post sort
2 5
0 100
1 1000
```

Note you can change the boolean function -- this, for example, would sort the objects from oldest to youngest (we've switched the < to a > : 

```
bool sortMe(myObject & a, myObject & b){
    if (a.age > b.age){
        return true;
    } else {
        return false;
    }
}
```

