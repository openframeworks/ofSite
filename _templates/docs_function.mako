<%page args="function"/>
<div class="docs_detail">
  	<% params = "()" if function.parameters=="" else "(...)" %> 
	<h1><a name="${function.name}">${function.name}${params}</a></h1>
	<h2>${function.returns} ${function.name}(${function.parameters})</h2>
	<div class="docs_detail_description">
		${function.summary}
		<%self:filter chain="syntax_highlight,markdown_template">
${function.description}
		</%self:filter>
	</div>
	<div class="docs_detail_wide_col_nav"><a href="#top">&uarr;</a>&nbsp;<a href="http://github.com/openframeworks/ofSite/blob/master/${function.file}">GIT</a></div>
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
