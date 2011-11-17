<%page args="method"/>
<div class="docs_detail_table">

	<div class="docs_detail_wide_col">
		<a name="${method.clazz}-${method.syntax_resume}">${method.syntax_resume}</a>
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
		description
	</div>
	<div class="docs_detail_right_col">
		${method.description}
    </div>
    
    
	<div class="docs_detail_wide_col_nav">
	    <a href="documentation">INDEX</a> <a href="#top">UP</a>
	</div>
	
</div>


