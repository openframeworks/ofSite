## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script src="/assets/js/jquery.columnizer.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/2.1.08/jquery.masonry.min.js"></script>
    <script src="/assets/js/documentation_index.js"></script>
    <script src="/assets/js/documentation.js"></script>
</%block>

<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide-tutorial">
            <!--ul class="submenu">
                <li><a href="/documentation">reference</a></li>
                <li><a href="/tutorials">tutorials</a></li>
            </ul-->
    	    <h1>${module}</h1>
    	    <div class="article">
                ${intro_content}
    		</div>
        </div><!-- End Page Wide Tutorial --> 
        <div class="page-wide">
        	<%include file="documentation_index_block.mako" args="module=module,classes=classes,show_header=False,subtitle=''" />
		</div><!-- End Page Wide -->   
      </div><!-- End Body Wrap -->
</%block>


