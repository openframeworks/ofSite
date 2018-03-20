//google.load("feeds", "1");

 // Our callback function, for when a feed is loaded.
function feedGithubLoaded(data) {
    // Grab the container we will put the results into
    var container = document.getElementById("github");
    container.innerHTML = '<h3>' + githubTitle + '</h3>';

    // Loop through the feeds, putting the titles onto the page.
    // Check out the result object for a list of properties returned in each entry.
    // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
    var ul = document.createElement("ul");
    var totalElements = 0;
    $.each(data, function( key, val ) {
        if(val.commit.message.indexOf("Merge") == 0 || totalElements>20){
            return
        }
        var li = document.createElement("li");
        var a = document.createElement("a");
        var img = document.createElement("img");
        var div = document.createElement("div");
        div.className="github_avatar";
        img.src = val.author.avatar_url;
        a.href = val.html_url;
        var title;
        if (val.commit.message.length > 80) {
             title = val.commit.message.substr(0,80) + "...";
        }else{
             title = val.commit.message;
        }
        var date = val.commit.author.date;
        var dateTag = document.createElement("span");
        dateTag.className = "github_time";
        dateTag.title = date;
        dateTag.appendChild(document.createTextNode(jQuery.timeago(date)));
        a.appendChild(document.createTextNode(title));
        div.appendChild(img);
        li.appendChild(div);
        li.appendChild(a);
        li.appendChild(dateTag);
        li.appendChild(document.createElement("br"));
        ul.appendChild(li);
        totalElements++;
    })
    container.appendChild(ul);
}

    // Our callback function, for when a feed is loaded.
function feedForumLoaded(result) {
    if (!result.error) {
        // Grab the container we will put the results into
        var container = document.getElementById("forum");
        container.innerHTML = '<h3>' + forumTitle + '</h3>';

        // Loop through the feeds, putting the titles onto the page.
        // Check out the result object for a list of properties returned in each entry.
        // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
        var ul = document.createElement("ul");
        var totalElements = 0;
        $(result).find("item").each(function(key, entry){
            if(totalElements>10){
                return;
            }
            var li = document.createElement("li");
            var a = document.createElement("a");
            var title = entry.getElementsByTagName("title")[0].textContent;
            a.href = entry.getElementsByTagName("link")[0].textContent;
            a.appendChild(document.createTextNode(Encoder.htmlDecode(title)));
            li.appendChild(a);
            li.appendChild(document.createElement("br"));
            var span = document.createElement("span")
            span.innerHTML = entry.getElementsByTagName("description")[0].textContent.substr(0,250) + "...</p>"
            li.appendChild(span);
            ul.appendChild(li);
            totalElements += 1;
        });
        container.appendChild(ul);
    }
}

// Our callback function, for when a feed is loaded.
function feedFlickrLoaded(result) {
    if (!result.error) {
        console.log(result)
        // Grab the container we will put the results into
        var container = document.getElementById("flickr");
        container.innerHTML = '';

        // Loop through the feeds, putting the titles onto the page.
        // Check out the result object for a list of properties returned in each entry.
        // http://code.google.com/apis/ajaxfeeds/documentation/reference.html#JSON
        $(result).find("item").each(function(key, entry){
            /*if(entry["mediaGroups"]==undefined || entry.mediaGroups.length<1 || entry.mediaGroups[0].length < 1 || ("" + entry.mediaGroups[0].contents[0].type).indexOf("image")!=0){
                console.log("entry with no media " + entry.mediaGroups[0].contents[0].type);
                return;
            }*/
            var h3 = document.createElement("h3");
            var a = document.createElement("a");
            var aText = document.createElement("a");
            var div = document.createElement("div");
            var img = document.createElement("img");
            a.href = entry.getElementsByTagName("link")[0].textContent;
            aText.href = entry.getElementsByTagName("link")[0].textContent;
            aText.className="flickrTitle";
            //entry.title +
            //" by " + entry.author.substr(entry.author.indexOf('(')+1, entry.author.indexOf(')')-entry.author.indexOf('(')-1))
            var title = entry.getElementsByTagName("title")[0].textContent;
            var author = entry.getElementsByTagName("author")[0].textContent;
            var label = " by " + author.substr(author.indexOf('(')+1, author.indexOf(')')-author.indexOf('(')-1);
            h3.appendChild(document.createTextNode(Encoder.htmlDecode(label)));
            a.appendChild(img);
            a.className  = "img";
            aText.appendChild(h3)
            div.appendChild(a);
            div.appendChild(aText);
            div.className="imgContainer";
            img.src = entry.getElementsByTagName("media:content")[0].attributes["url"].textContent;

            container.appendChild(div);
        });
    }
    $('#flickr').cycle({
        fx: 'fade' // choose your transition type, ex: fade, scrollUp, shuffle, etc...
    });
}

// Our callback function, for when a feed is loaded.
function feedVimeoLoaded(result) {
    if (!result.error && result.xmlDocument.getElementsByTagName('item').length>0) {
        var numEntry = Math.floor(Math.random()*result.xmlDocument.getElementsByTagName('item').length)
        var entry = result.xmlDocument.getElementsByTagName('item')[numEntry];
        var url = entry.getElementsByTagName("link")[0].textContent;
        var id = url.substr(url.lastIndexOf("/")+1);
        var vidURL = 'http://player.vimeo.com/video/' + id + '?title=1&amp;byline=0&amp;portrait=0';

        var w=440;
        var h=300;

        var vimHTML = $(document.createElement('iframe')).attr({src:vidURL, width:w, height:h, frameborder:0});
        $('#vimeo').append(vimHTML);
    }
}
