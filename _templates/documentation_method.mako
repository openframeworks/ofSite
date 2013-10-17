## -*- coding: utf-8 -*-
<%page args="method"/>
<div class="documentation_detail ${method.name}" data-lookup="${method.name}" data-item-type="method">
  	<% params = "()" if method.parameters=="" else "(...)" %> 
	<h1><a name="show_${method.name}">${method.name}${params}</a></h1>
	<h2><%self:filter chain="markdown_template">${method.returns} ${method.clazz}::${method.name}(${method.parameters})</%self:filter></h2>
	<div class="documentation_detail_description">
		${method.summary}
		<%self:filter chain="markdown_template">
${method.description}
		</%self:filter>

         % if method.inlined_description.strip("\n").strip(" ") != "":
            <div class="inlined_docs">
                <h2><strong><em>Documentation from code comments</em></strong></h2><br/>

		        <%self:filter chain="markdown_template">
${method.inlined_description}
		        </%self:filter>
            </div>
        % endif
    
	</div>
	<!--div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div-->
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
