## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script src="/assets/js/documentation.js" type="text/javascript"></script>
</%block>

<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide-tutorial">
            <!--ul class="submenu">
                <li><a href="/documentation">reference</a></li>
                <li><a href="/tutorials">tutorials</a></li>
            </ul-->
    	    <h1>${post.title()}</h1>
    	    
    	    <span class="article_meta">${post.date}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;
        	<a href="${post.meta[lang]["author_site"]}">${post.author()}</a></span><br/>
    	    <div class="article">
                ${post.text()}
    		</div>
            
        </div><!-- End Page Wide -->      
      </div><!-- End Body Wrap -->
</%block>


