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
            <div id="docstitle"><h1>${module}</h1></div>
            <div id="editdocs">
                <a href="https://github.com/openframeworks/ofSite/edit/master/documentation/${module}/introduction.markdown" class="nohover"><img title="edit module intro on GitHub" src="/images/editmodule.png?a=5"/></a>
    	    </div>
    	</div>
	    <div class="page-wide-tutorial">
    	    <div class="article">
                ${intro_content}
    		</div>
        </div><!-- End Page Wide Tutorial --> 
        <div class="page-wide">
        	<%include file="documentation_index_block.mako" args="module=module,classes=classes,show_header=False,subtitle=''" />
		</div><!-- End Page Wide -->   
      </div><!-- End Body Wrap -->
</%block>


