<%page args="method"/>
<div class="documentation_detail">
  	<% params = "()" if method.parameters=="" else "(...)" %> 
	<h1><a name="${method.name}">${method.name}${params}</a></h1>
	<h2><%self:filter chain="markdown_template">${method.returns} ${method.clazz}::${method.name}(${method.parameters})</%self:filter></h2>
	<div class="documentation_detail_description">
		${method.summary}
		<%self:filter chain="markdown_template">
${method.description}
		</%self:filter>
	</div>
	<div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div>
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
