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
                
    def function_by_signature(self, name, returns, parameters):
        function = DocsFunction(0)
        function.name = name
        function.parameters = parameters
        function.syntax = name + "("
        for p in self.get_parameter_names(parameters):
            function.syntax = function.syntax + p + ", "
        function.syntax = function.syntax.rstrip(', ')
        function.syntax = function.syntax + ")"
        function.returns = returns
        function.new = True
        found = False
        for f in self.function_list:
            if f.name == name:
                dst_parameters_types = self.get_parameter_types(f.parameters.replace('const ',''))
                src_parameters_types = self.get_parameter_types(parameters.replace('const ',''))

                if(len(src_parameters_types)==len(dst_parameters_types)):
                    a = -1
                    for i in range(len(src_parameters_types)):
                        if src_parameters_types[i] != dst_parameters_types[i]:
                            break
                        else:
                            a = i
                    if a == len(src_parameters_types)-1:
                        f.new = False
                        f.parameters = parameters
                        return f
                        found = True
                        #print 'found ' + function.name
                        break
        if not found:
            #print 'not found ' + method.name
            #clazzmethod = method
            self.function_list.append(function)   
        return function
        

