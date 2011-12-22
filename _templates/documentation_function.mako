<%page args="function"/>
<div class="documentation_detail">
  	<% params = "()" if function.parameters=="" else "(...)" %> 
	<h1><a name="${function.name}">${function.name}${params}</a></h1>
	<h2><%self:filter chain="markdown_template">${function.returns} ${function.name}(${function.parameters})</%self:filter></h2>
	<div class="documentation_detail_description">
		${function.summary}
		<%self:filter chain="syntax_highlight,markdown_template">
${function.description}
		</%self:filter>
	</div>
	<div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div>
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
