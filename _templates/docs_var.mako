<%page args="var"/>
<div class="docs_detail_table">

	<div class="docs_detail_wide_col">
		<a name="${var.clazz}-${var.name}">${var.name}</a>
	</div>

	<div class="docs_detail_wide_col_tiny">
		${var.clazz}::${var.name}	
	</div>
	
	
	<div class="docs_detail_left_col">
		type
	</div>
	<div class="docs_detail_right_col">
		<strong>${var.type}</strong><br />
    </div>
    
    
    <div class="docs_detail_left_col">
		summary
	</div>
	<div class="docs_detail_right_col">
		${var.summary}<br />
    </div>
    
	<div class="docs_detail_left_col">
		description
	</div>
	<div class="docs_detail_right_col">
		${var.description}
    </div>
    
    
	<div class="docs_detail_wide_col_nav">
	    <a href="documentation">INDEX</a> <a href="#top">UP</a>
	</div>
	
</div>


