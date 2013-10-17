## -*- coding: utf-8 -*-
<%page args="var"/>
<div class="documentation_detail  ${var.name}" data-lookup="${var.name}" data-item-type="var">
	<h1>${var.type} <a name="show_${var.name}">${var.name}</a></h1>
	<h2><%self:filter chain="markdown_template">${var.type} ${var.clazz}::${var.name}</%self:filter></h2>
	<div class="documentation_detail_description">
		<%self:filter chain="markdown_template">
${var.description}
		</%self:filter>
	</div>
	<!--div class="documentation_detail_wide_col_nav"><a href="#top">&uarr;</a></div-->
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
