<%page args="method"/>
<div class="docs_detail_table">

	<div class="docs_detail_wide_col">
		<a name="${method.clazz}-${method.syntax}">${method.syntax}</a>
	</div>

	<div class="docs_detail_wide_col_tiny">
		${method.clazz}::${method.name}	
	</div>


	<div class="docs_detail_left_col">
		syntax
	</div>
	<div class="docs_detail_right_col">
		${method.syntax}	
    </div>
	
	
	<div class="docs_detail_left_col">
		returns
	</div>
	<div class="docs_detail_right_col">
		<strong>${method.returns}</strong><br />
    </div>
    
    
	<div class="docs_detail_left_col">
		&nbsp;
	</div>
	<div class="docs_detail_right_col">
        ${method.returns_description}<br />     
    </div>
    
    <div class="docs_detail_left_col">
		summary
	</div>
	<div class="docs_detail_right_col">
		${method.summary}<br />
    </div>
    
	<div class="docs_detail_left_col">
		description
	</div>
	<div class="docs_detail_right_col">
	    <%self:filter chain="syntax_highlight,markdown_template">
		    ${method.description}
		</%self:filter>
    </div>
    
    
	<div class="docs_detail_wide_col_nav">
	    <a href="documentation">INDEX</a> <a href="#top">UP</a>
	</div>
	
</div>

<%def name="filter(chain)">
  ${bf.filter.run_chain(chain, capture(caller.body))}
</%def>
