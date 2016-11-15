## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script src="/assets/js/documentation.js" type="text/javascript"></script>
</%block>

<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide-tutorial">
                ${post.text()}            
        </div><!-- End Page Wide -->      
      </div><!-- End Body Wrap -->
</%block>


