<%inherit file="_templates/home.mako" />


<div class="page-left-medium">

<p>
<!-- OF video -->
    <img src="http://www.openframeworks.cc/wp-content/themes/ofw/images/label_video.gif" width="78" height="31" alt="watch me" />
    <iframe src="http://player.vimeo.com/video/921725?title=0&amp;byline=0&amp;portrait=0" width="550" height="415" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</p>

</div>


<div class="page-right-narrow">
    <div class="home-links">
        <h2>openFrameworks is an open source C++ toolkit for creative coding.</h2>
        <br/>
        <h3><a href="download/">download</a></h3>
        don't forget to check the setup guide for your platform<br/><br/>
        <h3><a href="docs/">documentation</a></h3>
        openFrameworks reference, there's also guides, tutorials and other educational resources in the <a href="http://wiki.openframeworks.cc">wiki</a><br/><br/>
        <h3><a href="http://forum.openframeworks.cc">forum</a></h3>
        search and ask in the forum if you don't know how to do something or have problems setting up openFrameworks.
    </div>
</div>

<div class="page-wide">

    <hr/>
    
    <!--h3><a href="http://twitter.com/#!/search/openframeworks">twitter</a></h3-->
    <div class="tweet">
        <h3>twitter</h3>
        <div class="tweets"></div>
    </div>
    
    <!--h3><a href="http://forum.openframeworks.cc">forum</a></h3-->
    <div id="forum"></div>
    
    <!--h3><a href="http://gihub.com/openframeworks/openFrameworks">github</a></h3-->
    <div id="github"></div>

    <br class="clearboth">
    <hr/>
</div>

<div class="page-wide">
                
    <!--flickr-->
    <div id="flickr"></div>
    <div id="vimeo"></div>

    <br class="clearboth">
</div>




<!--ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="${post.path}">${post.title}</a></li>
    % endfor
</ul-->

