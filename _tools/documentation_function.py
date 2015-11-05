import Levenshtein
import re

class DocsFunction:
    def __init__(self,functionid):
        self.id = functionid
        self.new = 0
        self.name = ""
        self.description = ""
        self.returns = ""
        self.returns_description = ""
        self.inlined_description = ""
        self.parameters = ""
        self.syntax = ""
        self.summary = ""
        self.version_started = ""
        self.version_deprecated = ""
        self.constant = False
        self.static = False
        self.visible = True
        self.advanced = False
        self.functionsfile = ""
        self.linenum = 0
        self.file = ""
        
    def get_inlined_docs_similarity(self):
        return Levenshtein.ratio(self.inlined_description, self.description)
        
class DocsFunctionsFile:
    def __init__(self,fileid):
        self.id = fileid
        self.module = ""
        self.name = ""
        self.new = 0
        self.advanced = False
        self.visible = True
        self.description = ""
        self.addons = False
        self.function_list = []
    
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
        
    def test_alternative_types(self, ty, other_ty, alternatives):
        """print "-----------------------"
        print ty.strip()
        print other_ty.strip()
        print "ty in alternatives " + str(ty in alternatives)
        if ty in alternatives:
            print "alternatives[ty].count(other_ty) " + str(alternatives[ty].count(other_ty))"""
        return ty in alternatives and alternatives[ty].count(other_ty)>0
        
    def fuzzy_function_search(self, name, returns, parameters, alternatives, already_found):
        most_similar_function = None
        max_similarity = 0
        for function in self.function_list:
            if function in already_found:
                continue
            if function.name == name:
                dst_parameters_types = self.get_parameter_types(function.parameters)
                src_parameters_types = self.get_parameter_types(parameters)
                if len(src_parameters_types)==len(dst_parameters_types):
                    a = -1
                    for i in range(len(src_parameters_types)):
                        ty = src_parameters_types[i].strip()
                        other_ty = dst_parameters_types[i].strip()
                        non_const_ty = re.sub(r"const (.*)","\\1",ty).strip()
                        non_const_other_ty = re.sub(r"const (.*)","\\1",other_ty).strip()
                        if ty != other_ty and \
                           not self.test_alternative_types(ty, other_ty, alternatives) and \
                           non_const_ty != other_ty and \
                           not self.test_alternative_types(non_const_ty, other_ty, alternatives) and \
                           non_const_ty != non_const_other_ty and \
                           not self.test_alternative_types(non_const_ty, non_const_other_ty, alternatives) and \
                           ty != non_const_other_ty and \
                           not self.test_alternative_types(ty, non_const_other_ty, alternatives):
                            non_const_ty = re.sub(r"(.*)::(.*)","\\2",non_const_ty).strip()
                            if ty != other_ty and \
                               not self.test_alternative_types(ty, other_ty, alternatives) and \
                               non_const_ty != other_ty and \
                               not self.test_alternative_types(non_const_ty, other_ty, alternatives) and \
                               non_const_ty != non_const_other_ty and \
                               not self.test_alternative_types(non_const_ty, non_const_other_ty, alternatives) and \
                               ty != non_const_other_ty and \
                               not self.test_alternative_types(ty, non_const_other_ty, alternatives):
                                break
                        else:
                            a = i
                    fuzzy_return = returns.replace("&","").replace("*","").strip()
                    other_fuzzy_return = function.returns.replace("&","").replace("*","").strip()
                    non_const_return = re.sub(r"const (.*)","\\1",fuzzy_return).strip()
                    non_const_other_return = re.sub(r"const (.*)","\\1",other_fuzzy_return).strip()
                    if a == len(src_parameters_types)-1 and \
                       (fuzzy_return == other_fuzzy_return or \
                       self.test_alternative_types(fuzzy_return, other_fuzzy_return, alternatives) or \
                       fuzzy_return == non_const_other_return or \
                       self.test_alternative_types(fuzzy_return, non_const_other_return, alternatives) or \
                       non_const_return == non_const_other_return or \
                       self.test_alternative_types(non_const_return, non_const_other_return, alternatives) or \
                       non_const_return == other_fuzzy_return or \
                       self.test_alternative_types(non_const_return, other_fuzzy_return, alternatives)):                        
                        function.new = False
                        return function
                if most_similar_function == None or Levenshtein.ratio(parameters,str(function.parameters))>max_similarity:
                    most_similar_function = function
        return most_similar_function
    
    def function_by_signature(self, name, returns, parameters, alternatives, already_found, fuzzy):
        passed_function = DocsFunction(0)
        passed_function.name = name
        passed_function.parameters = parameters
        passed_function.syntax = name + "("
        for p in self.get_parameter_names(parameters):
            passed_function.syntax = passed_function.syntax + p + ", "
        passed_function.syntax = passed_function.syntax.rstrip(', ')
        passed_function.syntax = passed_function.syntax + ")"
        passed_function.returns = returns
        passed_function.new = True
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
        if fuzzy and len(alternatives)>0:
            alternative_func = self.fuzzy_function_search(name, returns, parameters, alternatives, already_found)
            if alternative_func != None:        
                alternative_func.parameters = passed_function.parameters
                alternative_func.syntax = passed_function.syntax
                alternative_func.returns = passed_function.returns
                return alternative_func
            else:
                self.function_list.append(passed_function)
                return passed_function
        else:
            return None

    def is_class(self):
        return False
