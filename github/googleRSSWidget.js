////////////////////////////////////////////////////////////////////////////////
/// Google Reader RSS widget
////////////////////////////////////////////////////////////////////////////////

var DateHelper = {
  time_ago_in_words: function(from) {
    return this.distance_of_time_in_words(new Date, from);
  },

  distance_of_time_in_words: function(to, from) {
    var distance_in_seconds = ((to - from) / 1000);
    var distance_in_minutes = Math.floor(distance_in_seconds / 60);

    if (distance_in_minutes == 0) { return 'seconds ago'; }
    if (distance_in_minutes == 1) { return 'a minute ago'; }
    if (distance_in_minutes < 45) { return distance_in_minutes + ' minutes ago'; }
    if (distance_in_minutes < 90) { return '1 hour ago'; }
    if (distance_in_minutes < 1440) { return Math.floor(distance_in_minutes / 60) + ' hours ago'; }
    if (distance_in_minutes < 2880) { return '1 day ago'; }
    if (distance_in_minutes < 43200) { return Math.floor(distance_in_minutes / 1440) + ' days ago'; }
    if (distance_in_minutes < 86400) { return '1 month ago'; }
    if (distance_in_minutes < 525960) { return Math.floor(distance_in_minutes / 43200) + ' months ago'; }
    if (distance_in_minutes < 1051199) { return '1 year ago'; }

    return Math.floor(distance_in_minutes / 525960) + ' years ago';
  }
};

function commitsRSSRender (blog) {
  if (!blog || !blog.items) return;
  var container=document.getElementById("commitsRSS");
  var code="";
  for (var i = 0; i < blog.items.length; i++) {
    var item = blog.items[i];
    code=code+"<tr><td><img src='/site_img/git.logo.gif' style='position: relative; top: 0px; height: 15px;'></td><td><span class='timeref'>"+
      DateHelper.time_ago_in_words(new Date(item.published*1000))+
      "</span> <a class='title' href='"+item.alternate.href+"'>"+item.title+"</a></td>";
  }
  container.innerHTML="<table>"+code+"</table>";
}

////////////////////////////////////////////////////////////////////////////////
