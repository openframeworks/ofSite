## -*- coding: utf-8 -*-
<%page args="method"/>
<div class="documentation_detail ${method.name}" data-lookup="${method.name}" data-item-type="method">
  	<% params = "()" if method.parameters=="" else "(...)" %> 
	<h1><a name="show_${method.name}">${method.name}${params}</a></h1>
	<h2>${method.returns} ${method.clazz}::${method.name}(${method.parameters})</h2>
	<div class="documentation_detail_description">
		${method.summary}
        ${method.description}

        % if method.inlined_description.strip("\n").strip(" ") != "" and method.get_inlined_docs_similarity()<0.8:
            % if method.description.strip("\n").strip(" ") != "":
            <div class="inlined_docs">
            % endif
                <h2><strong><em>Documentation from code comments</em></strong></h2><br/>
                ${method.inlined_description}
            % if method.description.strip("\n").strip(" ") != "":
            </div>
            % endif
       % endif
    
	</div>
</div>
