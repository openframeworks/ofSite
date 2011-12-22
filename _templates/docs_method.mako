<%page args="method"/>
<div class="docs_detail">
  	<% params = "()" if method.parameters=="" else "(...)" %> 
	<h1><a name="${method.name}">${method.name}${params}</a></h1>
	<h2>${method.returns} ${method.clazz}::${method.name}(${method.parameters})</h2>
	<div class="docs_detail_description">
		${method.summary}
		<%self:filter chain="markdown_template">
			${method.description}
		</%self:filter>
	</div>
	<div class="docs_detail_wide_col_nav"><a href="#top">&uarr;</a>&nbsp;<a href="http://github.com/openframeworks/ofSite/blob/master/${method.file}">GIT</a></div>
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
