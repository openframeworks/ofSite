<%inherit file="_templates/site.mako" />
<div id="page-title">
    <h1>News</h1>
</div>
<!--Here's the main <a href="${bf.util.site_path_helper(bf.config.blog.path)}">chronological blog page</a><br/><br/-->

<div class="page-left-medium">

    <div class="tweet"></div>

</div>



<div class="page-right-narrow">

    <div id="rss-feeds"></div>
    
</div>


<ul>
    % for post in bf.config.blog.posts[:5]:
        <li><a href="${post.path}">${post.title}</a></li>
    % endfor
</ul>

