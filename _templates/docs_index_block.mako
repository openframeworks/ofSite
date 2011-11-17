<%page args="block"/>
<div class="docs_group">
    <div class="docs_group_head">&#160;&#160;
			${block.name}			
	</div>
			
	<!-- fileFuncs -->

	

	<!-- file vars -->
	

	<!-- CLASSES -->

    % for clazz in block.classes:   
    	% if clazz['visible'] and not clazz['advanced']:
    	<div class="docs_class">
    	    <!-- class link -->
            &#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html" class="docs_class_link"><strong>${clazz['name']}</strong></a><br />
            
            
    	    <!-- class methods -->
            % if 'methods' in clazz:
                % for method in clazz['methods']:
                    &#160;&#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html#${clazz['name']}-${method}" title="${method}" class="docs_func">${method}</a><br />
                % endfor
            % endif
            
            
            <hr/>
            
            
    	    <!-- class variables -->
            % if 'variables' in clazz:
                % for variable in clazz['variables']:
                    &#160;&#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html#${clazz['name']}-${variable}" title="${variable}" class="docs_func">${variable}</a><br />
                % endfor
            % endif
            
            
        </div>
        % endif
    % endfor
</div>
