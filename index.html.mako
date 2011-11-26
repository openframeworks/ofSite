<%inherit file="_templates/home.mako" />
<div id="page-title">
    <!--h1>News</h1-->
</div>
<!--Here's the main <a href="${bf.util.site_path_helper(bf.config.blog.path)}">chronological blog page</a><br/><br/-->

<h1>openFrameworks is an open source C++ toolkit<br />for creative coding.</h1>

<p>
    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/label_video.gif" width="78" height="31" alt="watch me" />
    <object width="550" height="415"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=921725&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" /><embed src="http://vimeo.com/moogaloop.swf?clip_id=921725&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=0&amp;show_portrait=0&amp;color=00ADEF&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="550" height="415"></embed></object>
</p>

<br /><br /><br />

<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/label_follow.gif" width="78" height="31" alt="watch me" />
<div id="home_follow">
<h2>openFrameworks on the web</h2>

<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_twitter.gif" width="16" height="16" alt="twitter" /> <a href="http://twitter.com/openframeworks" title="openFrameworks on twitter">openFrameworks on twitter</a><br /><br />

<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_vimeo.gif" width="16" height="16" alt="twitter" /> <a href="http://vimeo.com/tag:openframeworks" title="openFrameworks on vimeo">search on vimeo</a><br />
<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_youtube.gif" width="16" height="16" alt="twitter" /> <a href="http://www.youtube.com/results?search_query=openframeworks&search=tag&search_sort=video_date_uploaded" title="openFrameworks on youtube">search on youtube</a><br />
<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_flickr.gif" width="16" height="16" alt="twitter" /> <a href="http://www.flickr.com/search/?q=openFrameworks&s=rec&z=t" title="openFrameworks on flickr">search on flickr</a><br />
<img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/icon_twitter.gif" width="16" height="16" alt="twitter" /> <a href="http://search.twitter.com/search?q=openframeworks" title="openFrameworks search on twitter">search on twitter</a><br />
</div>



<ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="${post.path}">${post.title}</a></li>
    % endfor
</ul>

