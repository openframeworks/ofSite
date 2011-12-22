#import documentation_files
from documentation_members import DocsMethod
from documentation_members import DocsVar
from documentation_class import DocsClass
from documentation_function import DocsFunctionsFile, DocsFunction
import os

documentation_root = '_documentation/'

def list_all_addons():
    modules = []
    for root, dirs, files in os.walk(documentation_root+"addons"):
        for name in dirs:
            modules.append(name)
    return modules
    
def list_all_modules():
    modules = []
    for root, dirs, files in os.walk(documentation_root):
        for name in dirs:
            if name.find("ofx")!=0:
                modules.append(name)
    return modules
    
def list_all_addon_files(addon=''):
    module_files = []
    for root, dirs, files in os.walk(os.path.join(documentation_root, 'addons', addon)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown': 
                module_files.append(file_split[0])
    return module_files
            
def list_all_files(module=''):
    module_files = []
    for root, dirs, files in os.walk(os.path.join(documentation_root, module)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown': 
                module_files.append(file_split[0])
    return module_files
    
def addfield(method,line):
    field = line.split(':')[0].lstrip('_').rstrip(' ')
    value = line.split(':')[1].lstrip(' ').rstrip('\n').rstrip('_')
    if field=='constant' or field=='advanced' or field=='visible' or field=='static':
        value = ((value == '1') or (value == 'True') or (value=='true') or (value=='TRUE'))
    #print field, "=", value
    setattr(method,field,value)


def getfunctionsfiles_list():
    functionsfiles_list = []
    for root, dirs, files in os.walk(os.path.join(documentation_root)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown':
                f = open(os.path.join(root,name),'r')
                state = 'begin'
                for line in f:
                    if state == 'begin' and line.find('#functions') == 0:
                        functionsfile = file_split[0].replace('_functions','')
                        functionsfiles_list.append(functionsfile)
                        f.close()
                        break
    return functionsfiles_list
    
def getfunctionsfile(filename):
    functionsfile = DocsFunctionsFile(0)
    functionsfile.name = filename
    functionsfile.new = 1                        
    function = DocsFunction(0)
    for root, dirs, files in os.walk(os.path.join(documentation_root)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown' and file_split[0] == filename+"_functions": 
                f = open(os.path.join(root,name),'r')
                state = 'begin'
                linenum = 0
                for line in f:
                    if state == 'begin' and line.find('#functions') == 0:
                        state = 'functionsfile'
                        functionsfile.module = os.path.basename(root)
                        functionsfile.new = False
                    elif state == 'functionsfile' and line.find('##Description') == 0:
                        state = 'filedescription'
                    elif state == 'filedescription' and line.find('<!----------------------------------------------------------------------------->')==-1 and line!='\n':
                        functionsfile.description = functionsfile.description + line
                    elif state == 'filedescription' or state=='description' and line.find('###')==0:
                        if(state=='description'):
                            functionsfile.function_list.append(function)
                        state = 'function'
                        function = DocsFunction(0)
                    elif state == 'function' and line.find('_')==0 and line.find('_description')==-1:
                        #print "##########field: " + line
                        addfield(function,line)
                    elif state == 'function' and line.find('_description')==0:
                        state = 'description'
                    elif state == 'description' and line.find('<!----------------------------------------------------------------------------->')==-1 and line!='\n':
                        function.description = function.description + line
    return functionsfile

def getclass_list():
    class_list = []
    for root, dirs, files in os.walk(os.path.join(documentation_root)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown':
                f = open(os.path.join(root,name),'r')
                state = 'begin'
                for line in f:
                    if state == 'begin' and line.find('#class') == 0 and line.find(file_split[0])!=-1:
                        class_name = file_split[0]
                        class_list.append(class_name)
                        f.close()
                        break
    return class_list
      
def getclass(clazz):
    method = DocsMethod(0)
    var = DocsVar(0)
    documentation_clazz = DocsClass(0)
    var.clazz  = clazz
    documentation_clazz.name = clazz
    documentation_clazz.new = True
    for root, dirs, files in os.walk(os.path.join(documentation_root)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown' and file_split[0] == clazz: 
                f = open(os.path.join(root,name),'r')
                state = 'begin'
                linenum = 0
                for line in f:
                    if state == 'begin' and line.find('#class') == 0 and line.find(clazz)!=-1:
                        state = 'class'
                        documentation_clazz.module = os.path.basename(root)
                        documentation_clazz.new = False
                        
                    elif state == 'class' and line.rstrip('\n').rstrip(' ') == '##Methods':
                        state = 'methods'
                        
                    elif state == 'methods' and line.find('###') == 0:
                        #print "##########method: " + line
                        state = 'method'
                        
                    elif state == 'method' and line.find('_')==0 and line.find('_description')==-1:
                        #print "##########field: " + line
                        addfield(method,line)
                        
                    elif state == 'method' and line.find('_description')==0:
                        state = 'description'
                        
                    elif state == 'description' and line.find('##')!=0 and line.find('<!----------------------------------------------------------------------------->')==-1 and line!='\n':
                        method.description = method.description + line
                        
                    elif state == 'description' and line.find('###') == 0:
                        state = 'method'
                        documentation_clazz.function_list.append(method)
                        method = DocsMethod(0)
                        method.clazz = documentation_clazz.name
                        method.linenum = linenum
                        method.file = os.path.join(root,name)
                        
                    elif state == 'description' and line.rstrip('\n').rstrip(' ') == '##Variables':
                        documentation_clazz.function_list.append(method)
                        state = 'vars'
                        
                    elif state == 'vars' and line.find('###') == 0:
                        #print line
                        state = 'var'
                        
                    elif state == 'var' and line.find('_')==0 and line.find('_description')==-1:
                        addfield(var,line)
                        
                    elif state == 'var' and line.find('_description') == 0:
                        state = 'vardescription'
                        
                    elif state == 'vardescription' and line.find('##')!=0 and line.find('<!----------------------------------------------------------------------------->')==-1 and line!='\n':
                        var.description = var.description + line
                        
                    elif state == 'vardescription' and line.find('###') == 0:
                        #print line
                        state = 'var'
                        documentation_clazz.var_list.append(var)
                        var = DocsVar(0)
                        var.clazz  = documentation_clazz.name
                        var.linenum = linenum
                        var.file = os.path.join(root,name)
                        
                    elif state == 'class' and line.find('##Description')==-1:
                        documentation_clazz.reference  = documentation_clazz.reference + line
                    linenum = linenum + 1
                if state == 'vardescription':
                    documentation_clazz.var_list.append(var)
                f.close()
                return documentation_clazz   


    return documentation_clazz
    
    
def serialize_function(f,function,member):
    f.write('###' + function.returns + " " + function.syntax + "\n\n")
    f.write("<!--\n");
    f.write("_syntax: " + function.syntax + "_\n")
    f.write("_name: " + function.name + "_\n")
    f.write("_returns: " + function.returns + "_\n")
    f.write("_returns_description: " + function.returns_description + "_\n")
    f.write("_parameters: " + function.parameters + "_\n")
    if(member):
        f.write("_access: " + function.access + "_\n")
    f.write("_version_started: " + function.version_started + "_\n")
    f.write("_version_deprecated: " + function.version_deprecated + "_\n")
    f.write("_summary: " + function.summary + "_\n")
    f.write("_constant: " + str(function.constant) + "_\n")
    f.write("_static: " + str(function.static) + "_\n")
    f.write("_visible: " + str(function.visible) + "_\n")
    f.write("_advanced: " + str(function.advanced)  + "_\n")
    f.write("-->\n\n");
    f.write("_description: _\n\n")
    f.write(function.description)
    f.write('\n\n\n\n\n\n')
    f.write('<!----------------------------------------------------------------------------->\n\n')

def serialize_var(f,var):
    f.write('###' + var.type + " " + var.name + "\n\n")
    f.write("<!--\n");
    f.write("_name: " + var.name + "_\n")
    f.write("_type: " + var.type + "_\n")
    f.write("_access: " + var.access + "_\n")
    f.write("_version_started: " + var.version_started + "_\n")
    f.write("_version_deprecated: " + var.version_deprecated + "_\n")
    f.write("_summary: " + var.summary + "_\n")
    f.write("_visible: " + str(var.visible) + "_\n")
    f.write("_constant: " + str(var.constant) + "_\n")
    f.write("_advanced: " + str(var.advanced) + "_\n")
    f.write("-->\n\n");
    f.write("_description: _\n\n")
    f.write(var.description)  
    f.write("\n\n\n\n\n\n")
    f.write('<!----------------------------------------------------------------------------->\n\n')
    
def setclass(clazz):
    try:
        os.mkdir(os.path.join(documentation_root,clazz.module))
    except:
        pass
    f = open(os.path.join(documentation_root,clazz.module,clazz.name)+".markdown",'w')
    f.write('#class ' + clazz.name + '\n\n\n')
    
    #f.write('//----------------------\n\n')
    #f.write('##Example\n\n' + clazz.example + '\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    f.write('##Description\n\n' + clazz.reference + '\n\n\n\n')

    #f.write('//----------------------\n\n')
    f.write('##Methods\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    for method in clazz.function_list:
        serialize_function(f,method,True)

    f.write('##Variables\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    for var in clazz.var_list:
        serialize_var(f,var)
    f.close()
    return
    
def setfunctionsfile(functionfile):
    try:
        os.mkdir(os.path.join(documentation_root,functionfile.module))
    except:
        pass
    f = open(os.path.join(documentation_root,functionfile.module,functionfile.name)+"_functions.markdown",'w')
    f.write('#functions\n\n')
    f.write('##Description\n\n' + functionfile.description + '\n\n\n\n')
    
    f.write('<!----------------------------------------------------------------------------->\n\n')
    for function in functionfile.function_list:
        serialize_function(f,function,False)
        
