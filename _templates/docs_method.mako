<%page args="method"/>
<div class="docs_detail_table">
	<div class="docs_detail_wide_col">${method.returns} <a name="${method.clazz}-${method.syntax}">${method.syntax}</a></div>
	<div class="docs_detail_right_col">
		${method.summary}
		<%self:filter chain="syntax_highlight,markdown_template">
			${method.description}
		</%self:filter>
	</div>
	<div class="docs_detail_wide_col_nav"><a href="../">&larr;INDEX</a> <a href="#top">&uarr;UP</a></div>
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
