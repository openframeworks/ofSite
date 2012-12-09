<%page args="block"/>
<div class="documentation_group">
    <div class="documentation_group_head">&#160;&#160;
			${block.name}			
	</div>
			
	<!-- fileFuncs -->

	

	<!-- file vars -->
	

	<!-- CLASSES -->

    % for clazz in sorted(block.classes, key=lambda clazz: clazz['name']):   
    	% if clazz['visible'] and not clazz['advanced']:
    	<div class="documentation_class">
    	    <!-- class link -->
            &#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html" class="documentation_class_link"><strong>${clazz['name']}</strong></a><br />
            
            
    	    <!-- class methods -->
            % if 'methods' in clazz:
                % for method in clazz['methods']:
                    &#160;&#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html#${method[:method.find('(')]}" title="${method}" class="documentation_func">${method}</a><br />
                % endfor
            % endif
            
            
            <!--hr/-->
            
            
    	    <!-- class variables -->
            % if 'variables' in clazz:
                % for variable in clazz['variables']:
                    &#160;&#160;&#160;&#160;<a href="${block.name + '/' + clazz['name']}.html#${variable[:variable.find('(')]}" title="${variable}" class="documentation_func">${variable}</a><br />
                % endfor
            % endif
            
            
        </div>
        % endif
    % endfor
</div>
