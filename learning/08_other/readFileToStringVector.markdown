---
.. title: Read a file line by line into a vector of strings
.. type: howto
---

here's a quick snippet that shows how to read a text file into a vector of strings (where each line of the file is a seperate string in the vector).  We use ofBufferFromFile to load the file into an ofBuffer and ofBuffer::getLines() to get an iterable collection of the lines of the file: 

```
vector < string > linesOfTheFile;
ofBuffer buffer = ofBufferFromFile("fileIWantToRead.txt");
for (auto line : buffer.getLines()){
    linesOfTheFile.push_back(line);
}
// now linesOfTheFile has each line of the file as an element in the vector
```