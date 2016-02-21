## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />
<%namespace name="of" file="of_helpers.tmpl"/>

<%block name="extra_head">
    <script src="/assets/js/documentation.js" type="text/javascript"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.1.0/css/font-awesome.min.css">
<style>
</style>
</%block>

<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide-tutorial">
            &lt; <a href="/tutorials#how_tos">back to all how-tos</a>
            <!--ul class="submenu">
                <li><a href="/documentation">reference</a></li>
                <li><a href="/tutorials">tutorials</a></li>
            </ul-->

    	    <h1>${post.title()}</h1>
    	    
        	% if post.meta[lang]["translator"] != "":
            	<span class="article_meta">${of.msg("translation", locals())}&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;<a href="${post.meta[lang]["translator_site"]}">${post.meta[lang]["translator"]}</a></span><br/>
        	% endif
    	    <div class="article">
                ${post.text()}
    		</div>
            
        </div><!-- End Page Wide -->      
      </div><!-- End Body Wrap -->
</%block>