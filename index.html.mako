<%inherit file="_templates/home.mako" />
<!--div id="page-title">
</div-->
<!--Here's the main <a href="${bf.util.site_path_helper(bf.config.blog.path)}">chronological blog page</a><br/><br/-->

<h2>openFrameworks is an open source C++ toolkit for creative coding.</h2>

<p>
<!-- creative applications -->
    <!--h3><a href="http://creatveapplications.net">creativeapplications.net</a></h3>
    <br/><br/>
    <div id="gallery"></div-->
    
<br /><br /><br />



<!-- OF video -->
    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/label_video.gif" width="78" height="31" alt="watch me" />
    <iframe src="http://player.vimeo.com/video/921725?title=0&amp;byline=0&amp;portrait=0" width="550" height="415" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</p>

<br /><br /><br />


<!--flickr-->
<div id="flickr"></div>



<br /><br /><br />








<ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="${post.path}">${post.title}</a></li>
    % endfor
</ul>

