<%inherit file="_templates/home.mako" />


<div class="page-left-medium">

<p>
<!-- OF video -->
    <iframe src="http://player.vimeo.com/video/921725?title=0&amp;byline=0&amp;portrait=0" width="550" height="415" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>
</p>

</div>


<div class="page-right-narrow">
    <div class="home-links">
        <h2>openFrameworks is an open source C++ toolkit for creative coding.</h2>
        <br/>
        <h3><a href="download/">download</a></h3>
        Grab the most recent release and follow the setup guide to get openFrameworks running.<br/><br/>
        <h3><a href="docs/">documentation</a></h3>
	Reference for openFrameworks classes, functions and addons. For guides and tutorials, see the <a href="http://wiki.openframeworks.cc/">wiki</a>.<br/><br/>
        <h3><a href="http://forum.openframeworks.cc/">forum</a></h3>
	The forum is a place to meet other people working with openFrameworks. It's a place to share your work, or find help solving problems.<br/><br/>
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

