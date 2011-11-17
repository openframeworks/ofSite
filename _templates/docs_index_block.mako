<%page args="block"/>
<div class="docs_group">
    <div class="docs_group_head">&#160;&#160;
			${block.name}			
	</div>
			
	<!-- fileFuncs -->

	

	<!-- file vars -->
	

	<!-- CLASSES -->

	<div class="docs_class">
    % for clazz in block.classes:   
    	% if clazz['visible']:
            &#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html" class="docs_class_link"><strong>${clazz['name']}</strong></a><br />
            % if 'methods' in clazz:
                % for method in clazz['methods']:
                    &#160;&#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html#${clazz['name']}-${method}" title="${method}" class="docs_func">${method}</a><br />
                % endfor
            % endif
        % endif
    % endfor
    </div>
</div>
