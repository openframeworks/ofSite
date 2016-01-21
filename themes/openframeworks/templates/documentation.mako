## -*- coding: utf-8 -*-
<%inherit file="base.tmpl" />

<%block name="extra_head">
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/2.1.08/jquery.masonry.min.js"></script>
    <script src="/assets/js/documentation_index.js"></script>
</%block>


<%block name="content">
      <div id="body-wrap">	
	    <div class="page-wide">
	        <div class="page-left-split">
                <!--ul class="submenu">
                    <li><a href="/documentation">reference</a></li>
                    <li><a href="/tutorials">tutorials</a></li>
                </ul-->

                
                <h1 class="documentation">reference</h1> 
                <!--ul class="docsadvanced">
                    <li><a href="/documentation" class="active">basic</a></li> 
                    <li><a href="/doxygen/annotated.html">advanced</a></li> 
                </ul-->
            </div>  
		    <div class="page-right-narrow">
			    ${ docs_intro }
		    </div>
	   </div>


    	<div class="page-wide sectiontitle">
		    <h2>core</h2> 
		    <a class="hide_core_functions">hide functions</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_core">expand all</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide core">
            % for module, classes in sorted(core.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
        
    	<div class="page-wide">
        </div><!-- End Page Wide -->
        
    	<div class="page-wide sectiontitle">
		    <h2>addons</h2> <a class="hide_addons_functions">hide functions</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a class="collapse_addons">expand all</a>
        </div><!-- End Page Wide -->

    	<div class="page-wide addons">
            % for module, classes in sorted(addons.items(), key=lambda module: module):
                <%include file="documentation_index_block.mako" args="module=module, classes=classes, show_header=True, subtitle=module_subtitles[module]" />
            % endfor
        </div><!-- End Page Wide -->
              
      </div><!-- End Body Wrap -->
</%block>
