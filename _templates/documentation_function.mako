## -*- coding: utf-8 -*-
<%page args="function"/>
<div class="documentation_detail ${function.name}" data-lookup="${function.name}" data-item-type="function">
  	<% params = "()" if function.parameters=="" else "(...)" %> 
	<h1><a name="show_${function.name}">${function.name}${params}</a></h1>
	<h2><%self:filter chain="markdown_template">${function.returns} ${function.name}(${function.parameters})</%self:filter></h2>
	<div class="documentation_detail_description">
		${function.summary}
		<%self:filter chain="markdown_template">
${function.description}
		</%self:filter>

     % if function.inlined_description.strip("\n").strip(" ") != "":
        <div class="inlined_docs">
            <h2><strong><em>Documentation from code comments</em></strong></h2><br/>

        <%self:filter chain="markdown_template">
${function.inlined_description}
        </%self:filter>
        </div>
      % endif

	</div>
	<!--div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div-->
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
