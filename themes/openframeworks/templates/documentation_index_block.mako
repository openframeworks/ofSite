## -*- coding: utf-8 -*-
<%page args="module,classes,show_header,subtitle"/>
<div class="documentation_group">
    % if show_header:
    <div class="documentation_group_head hide">
			<div class="title">
			    <h2>${module}</h2>
			    % if subtitle is not None:
    			    <h3>${subtitle}</h3>
			        <a href="${module}/introduction.html">module documentation</a>
    			% endif
			</div>
	</div>
	% endif
	

	<!-- CLASSES -->

    <div class="documentation_index_group">
        % for clazz in sorted(classes, key=lambda clazz: clazz.name):   
        	% if clazz.visible and not clazz.advanced:
        	<div class="box">
        	<ul class="documentation_class">
        	    <!-- class link -->
                <li class="docs-module-title"><a href="${'/documentation/' + module + '/' + clazz.name}/" class="documentation_class_link"><strong>${clazz.name}</strong></a>&nbsp;
                % if clazz.is_class():
                    <img src="/icons/class.png" alt="C++ Class"/>
                % else:
                    <img src="/icons/functions.png" alt="Functions file"/>
                % endif
                </li>
                
        	    <!-- class methods -->
                <% prevmethod = "" %>
                % for method in clazz.function_list:
                    % if method.visible and not method.advanced and (not hasattr(method,'access') or method.access == 'public') and method.name!=prevmethod:
                        <% htmlclass = "method" %>
                        % if len(method.description) <= 1 and len(method.inlined_description) <= 1:
                            <% htmlclass = htmlclass + " noDoc" %>
                        % endif
                        <li class="${htmlclass}"><a href="${'/documentation/' + module + '/' + clazz.name}/#!show_${method.name}" title="${method.name}" class="documentation_func">${method.name}()</a></li>
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
                            <li class="${htmlclass}"><a href="${'/documentation/' + module + '/' + clazz.name}/#!show_${variable.name}" title="${variable.name}" class="documentation_func">${variable.name}</a></li>
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
