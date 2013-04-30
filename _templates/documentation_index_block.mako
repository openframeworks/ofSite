<%page args="block"/>
<div class="documentation_group">
    <div class="documentation_group_head show">
			<h2>- ${block.name}<h2>
	</div>
			
	<!-- fileFuncs -->

	

	<!-- file vars -->
	

	<!-- CLASSES -->

    <div class="documentation_index_group">
        % for clazz in sorted(block.classes, key=lambda clazz: clazz['name']):   
        	% if clazz['visible'] and not clazz['advanced']:
        	<div class="box">
        	<ul class="documentation_class">
        	    <!-- class link -->
                <li><a href="${block.name + '/' + clazz['name']}.html" class="documentation_class_link"><strong>${clazz['name']}</strong></a></li>
                
                
        	    <!-- class methods -->
                % if 'methods' in clazz:
                    % for method in clazz['methods']:
                        <li class="method"><a href="${block.name + '/' + clazz['name']}.html#show_${method[:method.find('(')]}" title="${method}" class="documentation_func">${method}</a></li>
                    % endfor
                % endif
                
                
                <!--hr/-->
                
                
        	    <!-- class variables -->
                % if 'variables' in clazz:
                    % for variable in clazz['variables']:
                        <li class="variable"><a href="${block.name + '/' + clazz['name']}.html#show_${variable[:variable.find('(')]}" title="${variable}" class="documentation_func">${variable}</a></li>
                    % endfor
                % endif
                
                
            <!--div-->
            </ul>
            </div>
            % endif
        % endfor
    </div>
    
</div>
