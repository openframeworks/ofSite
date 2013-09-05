---
date: 2013/03/07 10:00:00
title: Having fun with Maps, specifically std::map
summary: Overview of the non-vector containers in std::
author: Joshua Noble
---

In the previous tutorial you learned about the std::vector but that's not the only kind of container that C++ provides for you. In fact, for almost any kind of data storage that you can think of, there's a container that's going to allow you to express it elegantly. In this little tutorial we're going to look at one that's really handy when you need something more specific than a vector. Maps are containers that store elements formed by a combination of a key value and a mapped value, following a specific order. If you've used Javascript or Ruby or Python you're already familiar with these and you've used them any time you want to do something like:
~~~~{.cpp}
images["Portland"].draw();
~~~~

Neat right? Instead of needing to look through a vector to find the right image, you can just store it with a key that will allow you to look it later in a way that goes better with your data. If you ever find yourself doing things like this:
~~~~{.cpp}
int theImageIWant, otherImageIWant;
vector<ofTexture> images;
~~~~
You might want to consider a map, because what you're saying is: I need a good way of storing the indexes to objects (really, they're "keys") so that I can get them later. The big problem with storing indices is that as soon as you reorder your vector, add something to beginning, remove something, your indices don't mean anything any more. Wouldn't it be nicer to have something like:
~~~~{.cpp}
string firstImageKey = "Portland", secondImageKey = "Tokyo";
map<string, ofTexture> images;
~~~~
This has a few advantages: "Portland" and "Tokyo" are always going to point to the same ofTextures, no matter what you do to the map and the names are human readable: you can just read them and see what they are. Let's look at a quick example. In my ofApp.h file, I add the following:
~~~~{.cpp}
map<string, ofImage> images;
~~~~
This says: I will be storing images with a key that is a string. In my cpp file, I can do the following:
~~~~{.cpp}
void ofApp::setup(){
    // make 2 images to store
    ofImage pImage;
    pImage.loadImage("portland.jpg");
    
    ofImage tImage;
    tImage.loadImage("tokyo.jpg");
    
    // now store them with nice name
    images["Portland"] = pImage;
    images["Tokyo"] = tImage;
}

void ofApp::draw(){
    // now I can access them with just their names:
    images["Portland"].draw(0, 0, 100, 100);
    images["Tokyo"].draw(100, 0, 100, 100);
}
~~~~
You can see how, though this isn't the most powerful example of that, that it might be really nice to be able to keep track of things by something concrete that will keep it's "location" no matter what. So, in a general sense in a map, the key values are generally used to sort and uniquely identify the elements, while the mapped values store the content associated to this key. What kinds of things can you use as a value? Anything. Really, anything can be a value. You will want to be careful storing pointers, but unlike a vector, once inserted into a map objects don't move around even if other elements are added or removed, however, storing pointers is good, especially if you're working with lots of textures or other large data objects. Make sure you don't invalidate your pointers (i.e. delete the object that is being pointed to) and you'll be good to go. What kinds of things can you use as a key? Well, pretty much all the things you probably want to: strings, floats, stuff like that. There are some limits to this though, you might try doing the following:
~~~~{.cpp}
map<ofVec2f, string> locations;
~~~~
And this will throw a pretty obscure error, something like: "/usr/include/c++/4.2.1/bits/stl_function.h:227:20: error: invalid operands to binary expression ('const ofVec2f' and 'const ofVec2f')". This actually makes sense because the idea of a "less than" vector is a bit odd. There's a mathematical definition of it, but it doesn't make much common sense and the common sense one doesn't make much sense mathematically and that's not actually the point. The point is, anything that has a "<" operator can be used as a key. Let's make one:
~~~~{.cpp}
class vec2Key
{
    
public:
    
    float x, y;
    
    vec2Key( float xValue, float yValue )
    {
        x = xValue;
        y = yValue;
    }
    
    bool operator < ( const vec2Key& other) const
    {
        if ( x == other.x ) {
            return y < other.y;
        }
        
        return x < other.x;
    }
    
};
~~~~
Note that < operator. This is key because it tells the map how to organize all the values that it's containing so that it's relatively quick to look-up needed values. Maps are usually a Red-Black Tree underneath and for those interested in what that is, [knock yourself out](http://en.wikipedia.org/wiki/Red%E2%80%93black_tree). Ok, so we've got a key object that we can use, let's go go ahead and use it:
~~~~{.cpp}
vec2Key k1(100, 200, 1);
vec2Key k2(100, 300, 1);
vec2Key k3(100, 400, 1);

map<vec2Key, string> stringToLocation;

stringToLocation[k1] = "first";
stringToLocation[k2] = "second";
stringToLocation[k3] = "third";
~~~~
Alright, let's test it:
~~~~{.cpp}
cout << stringToLocation[vec2Key(100, 300)] << endl; // prints "second", all good
~~~~
Anything that knows whether it's greater than something else can be put into a list. Let's say we want to look this up in a fuzzy kind of way, because we're doing a weird quadtree implementation or something like that, well we can make that < operator do a lot for us. Let's give our vector a slightly more fluid comparison operator:
~~~~{.cpp}
    bool operator < ( const vec2Key& other) const
    {
        if ( fabs(x - other.x) < 0.1 ) {
              return fabs(y - other.y) > 0.1;
        }
        
        return x < other.x;
    }
~~~~
Now:
~~~~{.cpp}
 cout << stringToLocation[vec2Key(100.01, 299.99)] << endl; // returns "second" because 100,300 is both < 0.1 away
~~~~
As far as adding things goes, doing this:
~~~~{.cpp}
 map[key] = value;
~~~~

isn't the only way that you'll see objects added to a map. Using the std::pair construct is also very common and allows you to use objects that aren't instantiated elsewhere:
~~~~{.cpp}
pair<vec2Key, string> p1(vec2Key(400, 400), "fourth");
pair<vec2Key, string> p1(vec2Key(300, 700), "fifth");
pair<vec2Key, string> p1(vec2Key(100, 600), "sixth");
~~~~
A declaration for a pair just looks like the declaration of the map itself:
~~~~{.cpp}
typedef pair<const Key, T> value_type;
~~~~
Not particularly revelatory yet, but just wait. So, we know how to put things into a map and get them out, what about looking through them? You can't just loop through them with an int like a vector, so you need to use an iterator. So, let's put pairs and even maps on hold for just a moment and talk iterators because they make maps a lot more usable:


The iterator is the C++ std version of a pointer. You use it to point to location in a container, kind of the same way that with a vector you might keep an index around that references a place in the vector that you're interested in, an iterator is like that index, but more so, it is that object in the vector. All containers have a begin() function, which returns an iterator pointing to the beginning of the container (the first element) and a function end() that returns an iterator corresponding to having reached the end of the container. Let's make a for loop with an iterator to see how they work a little better:

~~~~{.cpp}
map<float,string>::iterator it; // make the iterator, say it's going to iterate over a map<float, string>
for ( it = aMap.begin(); // say the iterator should point to the beginning of a map called "aMap"
      it != aMap.end();  // say let's stop when we get to the end aMap
      ++it) {            // increment the iterator
}
~~~~
The iterator for a vector of ofImages would look like this: vector<ofImage>::iterator while an iterator for a map with string keys and ofMatrix4x4 values would be: map<string, ofMatrix4x4>::iterator. You can move an iterator forward with ++ and backward with --. Interesting thing: you can move an iterator with two positions with advance(it, 2) or twenty with advance(it, 20), though you'll probably never need to be able to do that. Ok, back to maps, let's iterate over our map:
~~~~{.cpp}
for (map<vec2Key,string>::iterator it=stringToLocation.begin(); it!=stringToLocation.end(); ++it){
    cout << " this is the key " << it->first.x << " " << it->first.y << endl;
    cout << " this is the value  " << it->second << endl;
}
~~~~
So what's that iterator pointing to? Well, a pair, in this case a pair of vec2Key,string, like:
~~~~{.cpp}
pair<vec2Key,string> p;
~~~~
This is handy when you don't know what's in a map and want to check it out. This is also pertinent to what happens when you want to see if something is in a map. If I do 
~~~~{.cpp}
cout << stringToLocation[vec2key(301,301)] << endl;
~~~~
what happens? Because that's not in our example maps values, bizarrely, the std::map adds a pair like this:

~~~~{.cpp}
pair<vec2key,key>(vec2key(301,301), "");
~~~~
You can check it like:

~~~~{.cpp}
cout << stringToLocation.size(); // should be 3
stringToLocation[vec2Key(100.01, 699.99)];
cout << stringToLocation.size(); // will now be 4!
~~~~
which is not what we want at all. We didn't want std::map to go ahead and add that element, we just wanted to know if it was there. Happily the map has a way around this: find().

~~~~{.cpp}
if(stringToLocation.find(vec2Key(400.01, 299.99)) != stringToLocation.end()) {
    cout << " has it " << endl;
} else {
    cout << " doesn't have it " << endl;
}
~~~~
Notice the end() call there? That's because find() is actually returning an iterator, so if the element is inside the map, we get an iterator to it and if it isn't then we can an iterator that's pointing to the end of the iterator. There's a few other methods that the map provides that we'll list out in slightly abbreviated fashion:

empty - if the container is empty returns true, otherwise returns false

size - returns the number of elements in the map

lower_bound - This gives you back an iterator to the first element not less than the given value, so:
upper_bound - returns an iterator to the first element greater than a certain value 

As an example of these two:

~~~~{.cpp}
map<float, string> floatToString;

floatToString[3.14] = "PI";
floatToString[2.71] = "E";
floatToString[2.29] = "UPC";
floatToString[0.83] = "Gauss's constant";

cout << floatToString[0.83] << endl;

map<float, string>::iterator lb = floatToString.lower_bound(2.6);
map<float, string>::iterator ub = floatToString.upper_bound(2.8);
~~~~
And that concludes our adventures with the std::map. For a more complete explanation of the map, check [cppreference](en.cppreference.com/w/cpp/container/map). Go forth and use them where appropriate