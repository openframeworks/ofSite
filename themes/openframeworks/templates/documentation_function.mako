## -*- coding: utf-8 -*-
<%page args="function"/>
<div class="documentation_detail ${function.name}" data-lookup="${function.name}" data-item-type="function">
  	<% params = "()" if function.parameters=="" else "(...)" %> 
	<h1><a name="show_${function.name}">${function.name}${params}</a></h1>
	<h2>${function.returns} ${function.name}(${function.parameters})</h2>
	<div class="documentation_detail_description">
        ${function.summary}
        ${function.description}

         % if function.inlined_description.strip("\n").strip(" ") != "" and function.get_inlined_docs_similarity()<0.8:
            % if function.description.strip("\n").strip(" ") != "":
                <div class="inlined_docs">
            % endif
            <h2><strong><em>Documentation from code comments</em></strong></h2><br/>
            ${function.inlined_description}
            
            % if function.description.strip("\n").strip(" ") != "":
                </div>
            % endif
        % endif

	</div>
	<!--div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div-->
</div>
