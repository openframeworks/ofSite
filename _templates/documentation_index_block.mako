## -*- coding: utf-8 -*-
<%page args="module,classes"/>
<div class="documentation_group">
    <div class="documentation_group_head show">
			<h2>${module}<h2>
	</div>
			
	<!-- fileFuncs -->

	

	<!-- file vars -->
	

	<!-- CLASSES -->

    <div class="documentation_index_group">
        % for clazz in sorted(classes, key=lambda clazz: clazz.name):   
        	% if clazz.visible and not clazz.advanced:
        	<div class="box">
        	<ul class="documentation_class">
        	    <!-- class link -->
                <li class="docs-module-title"><a href="${module + '/' + clazz.name}.html" class="documentation_class_link"><strong>${clazz.name}</strong></a></li>
                
                
        	    <!-- class methods -->
                <% prevmethod = "" %>
                % for method in clazz.function_list:
                    % if method.visible and not method.advanced and (not hasattr(method,'access') or method.access == 'public') and method.name!=prevmethod:
                        <% htmlclass = "method" %>
                        % if len(method.description) <= 1 and len(method.inlined_description) <= 1:
                            <% htmlclass = htmlclass + " noDoc" %>
                        % endif
                        <li class="${htmlclass}"><a href="${module + '/' + clazz.name}.html#!show_${method.name}" title="${method.name}" class="documentation_func">${method.name}()</a></li>
                        <% prevmethod = method.name %>
                    % endif
                % endfor
                
                
                <!--hr/-->
                
                
        	    <!-- class variables -->
        	    % if hasattr(clazz,'var_list'):
                    % for variable in clazz.var_list:
                        % if variable.visible and not variable.advanced and variable.access == 'public':
                            <% htmlclass = "variable" %>
                            % if len(variable.description) <= 1:
                                <% htmlclass = htmlclass + " noDoc" %>
                            % endif
                            <li class="${htmlclass}"><a href="${module + '/' + clazz.name}.html#!show_${variable.name}" title="${variable.name}" class="documentation_func">${variable.name}</a></li>
                        % endif
                    % endfor
                % endif
                
                
            <!--div-->
            </ul>
            </div>
            % endif
        % endfor
    </div>
    
</div>
