google.load("feeds", "1");
 // Our callback function, for when a feed is loaded.
function feedCANLoaded(result) {
  if (!result.error) {
    // Grab the container we will put the results into
    var container = document.getElementById("gallery");
    container.innerHTML = '';

    // Loop through the feeds, putting the titles onto the page.
    // Check out the result object for a list of properties returned in each entry.
    // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
    for (var i = 0; i < result.xmlDocument.getElementsByTagName('item').length; i++) {
      var entry = result.xmlDocument.getElementsByTagName('item')[i];
      var title = entry.getElementsByTagName("title")[0].textContent;
      var h2 = document.createElement("h2");
      var a = document.createElement("a");
      var moreLink = document.createElement("a");
      var p = document.createElement("p");
      var img = document.createElement("img");
      var hr = document.createElement("hr");
      var br = document.createElement('br');
      a.href = entry.getElementsByTagName("link")[0].textContent;
      moreLink.href = entry.getElementsByTagName("link")[0].textContent;
      moreLink.appendChild(document.createTextNode("  more >>"));
      
      var content = entry.getElementsByTagNameNS("*","encoded")[0].textContent;
      var indexOfFirstImg = content.indexOf('<img');
      var endImg = content.indexOf("/>",indexOfFirstImg);
      var imgHTML = content.substr(indexOfFirstImg,endImg-indexOfFirstImg);
      var indexOfSrc = imgHTML.indexOf('src="')+5;
      img.src = imgHTML.substr(indexOfSrc,imgHTML.indexOf('"',indexOfSrc)-indexOfSrc);
     
      a.appendChild(document.createTextNode(title.substr(0,title.indexOf('['))));
      h2.appendChild(a)
      var description = entry.getElementsByTagName("description")[0].textContent;
      if(description.indexOf('...')!=-1){
        description = Encoder.htmlDecode(description.substr(0,description.indexOf('...')+3));
      }else{
        description = Encoder.htmlDecode(description);
      }
      p.appendChild(document.createTextNode(description));
      p.appendChild(moreLink);
      
      container.appendChild(h2);
      container.appendChild(br);
      container.appendChild(img);
      container.appendChild(p);
      if(i<result.xmlDocument.getElementsByTagName('item').length-1) 
        container.appendChild(hr);
    }
  }
}
    
function OnLoad() {
    var feedCAN = new google.feeds.Feed("http://www.creativeapplications.net/category/openframeworks/feed/");
    feedCAN.setNumEntries(5);
    feedCAN.setResultFormat(google.feeds.Feed.XML_FORMAT);
    // Calling load sends the request off.  It requires a callback function.
    feedCAN.load(feedCANLoaded);
    
}

google.setOnLoadCallback(OnLoad);
