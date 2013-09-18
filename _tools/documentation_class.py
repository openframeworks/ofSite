#!/usr/bin/python
#import documentation_functions
import sys
from documentation_members import DocsMethod,DocsVar
#sys.path.append( "/var/www/test_new_documentation/" )

import os
import fileinput
import traceback

class DocsClass:
    def __init__(self,classid):
        self.id = classid
        self.module = ""
        self.name = ""
        self.new = 0
        self.advanced = False
        self.visible = True
        self.example = ""
        self.reference = ""
        self.addons = False
        self.function_list = []
        self.var_list = []
        self.detailed_inline_description = ""
        self.istemplated = False
        

    def functions(self):
        return self.function_list  
         
    def get_parameter_types(self, parameters_list):
        parameters_types = []
        if len(parameters_list.strip(' '))==0:
            return parameters_types
        for p in parameters_list.split(','):
            parameter = ""
            for e in p.split(' ')[:len(p.split(' '))-1]:
                parameter = parameter + " " + e
            parameters_types.append(parameter)
        return parameters_types
    
    def get_parameter_names(self,parameters_list):
        parameters_names = []
        if len(parameters_list.strip(' '))==0:
            return parameters_names
        for p in parameters_list.split(','):
            p = p.strip(' ')
            if p.find('=')!=-1:
                e = p.split('=')[0].strip(' ')
                parameters_names.append(e.split(' ')[len(e.split(' '))-1] + ' = ' + p.split('=')[1])
            else:
                parameters_names.append(p.split(' ')[len(p.split(' '))-1])
        return parameters_names
    
    def function_by_signature(self, name, returns, parameters):
        method = DocsMethod(0)
        method.name = name
        method.parameters = parameters
        method.syntax = name + "("
        for p in self.get_parameter_names(parameters):
            method.syntax = method.syntax + p + ", "
        method.syntax = method.syntax.rstrip(', ')
        method.syntax = method.syntax + ")"
        method.returns = returns
        method.new = True
        for function in self.function_list:
            if function.name == name:
                dst_parameters_types = self.get_parameter_types(function.parameters)
                src_parameters_types = self.get_parameter_types(parameters)
                if(len(src_parameters_types)==len(dst_parameters_types)):
                    a = -1
                    for i in range(len(src_parameters_types)):
                        if src_parameters_types[i] != dst_parameters_types[i]:
                            break
                        else:
                            a = i
                    if a == len(src_parameters_types)-1 and function.returns == returns:
                        function.new = False
                        function.parameters = parameters
                        return function
                        
        self.function_list.append(method)   
        return method

    def var_by_name(self, name):
        for var in self.var_list:
            if var.name == name:
                return var
        return False
        

