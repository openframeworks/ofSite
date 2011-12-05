google.load("feeds", "1");
 // Our callback function, for when a feed is loaded.
function feedGithubLoaded(result) {
  if (!result.error) {
    // Grab the container we will put the results into
    var container = document.getElementById("github");
    container.innerHTML = '<h3>github</h3>';

    // Loop through the feeds, putting the titles onto the page.
    // Check out the result object for a list of properties returned in each entry.
    // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
    var ul = document.createElement("ul");
    for (var i = 0; i < result.xmlDocument.getElementsByTagName('entry').length; i++) {
      var entry = result.xmlDocument.getElementsByTagName('entry')[i];
      var li = document.createElement("li");
      var a = document.createElement("a");
      var img = document.createElement("img");
      var div = document.createElement("div");
      div.className="github_avatar";
      img.src = entry.getElementsByTagNameNS("*","thumbnail")[0].getAttribute("url");
      a.href = entry.getElementsByTagName("link")[0].getAttribute("href");
      a.appendChild(document.createTextNode(entry.getElementsByTagName("title")[0].textContent));
      //a.appendChild(document.createTextNode(entry.getElementsByTagNameNS("*","thumbnail")[0].getAttribute("url")));
      /*for( p in entry.getElementsByTagName("link")){
         a.appendChild(document.createTextNode(p.tagName));
         a.appendChild(document.createElement("br"));
      }*/
      //a.appendChild(document.createTextNode(entry.textContent));
      div.appendChild(img);
      li.appendChild(div);
      li.appendChild(a);
      li.appendChild(document.createElement("br"));
      li.appendChild(document.createTextNode(entry.getElementsByTagName("updated")[0].textContent));
      ul.appendChild(li);
    }
    container.appendChild(ul);
  }
}

    // Our callback function, for when a feed is loaded.
function feedForumLoaded(result) {
  if (!result.error) {
    // Grab the container we will put the results into
    var container = document.getElementById("forum");
    container.innerHTML = '<h3>forum</h3>';
    
    

    // Loop through the feeds, putting the titles onto the page.
    // Check out the result object for a list of properties returned in each entry.
    // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
    var ul = document.createElement("ul");
    for (var i = 0; i < result.feed.entries.length; i++) {
      var entry = result.feed.entries[i];
      var li = document.createElement("li");
      var a = document.createElement("a");
      a.href = entry.link;
      a.appendChild(document.createTextNode(entry.author + ": " + entry.title));
      li.appendChild(a);
      li.appendChild(document.createElement("br"));
      li.appendChild(document.createTextNode(Encoder.htmlDecode(entry.contentSnippet)));
      ul.appendChild(li);
    }
    container.appendChild(ul);
  }
}

// Our callback function, for when a feed is loaded.
function feedFlickrLoaded(result) {
  if (!result.error) {
    // Grab the container we will put the results into
    var container = document.getElementById("flickr");
    container.innerHTML = '';

    // Loop through the feeds, putting the titles onto the page.
    // Check out the result object for a list of properties returned in each entry.
    // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
    for (var i = 0; i < result.feed.entries.length; i++) {
      var entry = result.feed.entries[i];
      if(entry["mediaGroups"]==undefined || entry.mediaGroups.lenght<1 || entry.mediaGroups[0].lenght < 1)
        continue;
      var h3 = document.createElement("h3");
      var a = document.createElement("a");
      var div = document.createElement("div");
      var img = document.createElement("img");
      a.href = entry.link;
      h3.appendChild(document.createTextNode(entry.title + " by " + entry.author.substr(entry.author.indexOf('(')+1, entry.author.indexOf(')')-entry.author.indexOf('(')-1)))
      a.appendChild(img);
      a.appendChild(h3)
      div.appendChild(a);
      img.src = entry.mediaGroups[0].contents[0].url;

      container.appendChild(div);
    }
  }
    $('#flickr').cycle({
        fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
    });
}
    
function OnLoad() {
    var feedGithub = new google.feeds.Feed("https://github.com/openframeworks/openFrameworks/commits/develop.atom");
    feedGithub.setNumEntries(3);
    feedGithub.setResultFormat(google.feeds.Feed.XML_FORMAT);
    // Calling load sends the request off.  It requires a callback function.
    feedGithub.load(feedGithubLoaded);

    var feedForum = new google.feeds.Feed("http://feeds.feedburner.com/openframeworks-forum");
    feedForum.setNumEntries(3);
    // Calling load sends the request off.  It requires a callback function.
    feedForum.load(feedForumLoaded);

    var feedFlickr = new google.feeds.Feed("http://api.flickr.com/services/feeds/groups_pool.gne?id=476246@N23&lang=es-us&format=rss_200");
    feedFlickr.setNumEntries(20);
    feedFlickr.load(feedFlickrLoaded);
    
    
    $(".tweet").tweet({
      avatar_size: 32,
      count: 5,
      query: "openFrameworks",
      loading_text: "searching twitter...",
      template: "{avatar} {text}"
    });
    $(".tweet").prepend("<h3>twitter</h3>");
    
}

google.setOnLoadCallback(OnLoad);


