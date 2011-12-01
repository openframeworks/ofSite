import docs_files
from docs_members import DocsMethod
from docs_members import DocsVar
from docs_class import DocsClass
import os

docs_root = '/home/arturo/Documentos/new_of_site/_docs/'

def list_all_addons():
    modules = []
    for root, dirs, files in os.walk(docs_root+"addons"):
        for name in dirs:
            modules.append(name)
    return modules
    
def list_all_modules():
    modules = []
    for root, dirs, files in os.walk(docs_root):
        for name in dirs:
            if name.find("ofx")!=0:
                modules.append(name)
    return modules
    
def list_all_addon_files(addon=''):
    module_files = []
    for root, dirs, files in os.walk(os.path.join(docs_root, 'addons', addon)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown': 
                module_files.append(file_split[0])
    return module_files
            
def list_all_files(module=''):
    module_files = []
    for root, dirs, files in os.walk(os.path.join(docs_root, module)):
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
    print field, "=", value
    setattr(method,field,value)
    
def getclass_list():
    class_list = []
    for root, dirs, files in os.walk(os.path.join(docs_root)):
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
    docs_clazz = DocsClass(0)
    var.clazz  = clazz
    docs_clazz.name = clazz
    docs_clazz.new = True
    for root, dirs, files in os.walk(os.path.join(docs_root)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]=='.markdown' and file_split[0] == clazz: 
                f = open(os.path.join(root,name),'r')
                state = 'begin'
                for line in f:
                    if state == 'begin' and line.find('#class') == 0 and line.find(clazz)!=-1:
                        state = 'class'
                        docs_clazz.module = os.path.basename(root)
                        docs_clazz.new = False
                        
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
                        
                    elif state == 'description' and line.find('##')!=0:
                        method.description = method.description + line
                        
                    elif state == 'description' and line.find('###') == 0:
                        state = 'method'
                        docs_clazz.function_list.append(method)
                        method = DocsMethod(0)
                        method.clazz  = docs_clazz.name
                        
                    elif state == 'description' and line.rstrip('\n').rstrip(' ') == '##Variables':
                        docs_clazz.function_list.append(method)
                        state = 'vars'
                        
                    elif state == 'vars' and line.find('###') == 0:
                        print line
                        state = 'var'
                        
                    elif state == 'var' and line.find('_')==0 and line.find('_description')==-1:
                        addfield(var,line)
                        
                    elif state == 'var' and line.find('_description') == 0:
                        state = 'vardescription'
                        
                    elif state == 'vardescription' and line.find('##')!=0:
                        var.description = var.description + line
                        
                    elif state == 'vardescription' and line.find('###') == 0:
                        print line
                        state = 'var'
                        docs_clazz.var_list.append(var)
                        var = DocsVar(0)
                        var.clazz  = docs_clazz.name
                        
                    elif state == 'class' and line.find('##Description')==-1:
                        docs_clazz.reference  = docs_clazz.reference + line
                        
                if state == 'vardescription':
                    docs_clazz.var_list.append(var)
                f.close()
                return docs_clazz   


    return docs_clazz
    
    
def serialize_function(f,function):
    f.write('###' + function.returns + " " + function.syntax + "\n\n")
    f.write("<!--\n\n");
    f.write("_syntax: " + function.syntax + "_\n\n")
    f.write("_name: " + function.name + "_\n\n")
    f.write("_returns: " + function.returns + "_\n\n")
    f.write("_returns_description: " + function.returns_description + "_\n\n")
    f.write("_parameters: " + function.parameters + "_\n\n")
    f.write("_access: " + function.access + "_\n\n")
    f.write("_version_started: " + function.version_started + "_\n\n")
    f.write("_version_deprecated: " + function.version_deprecated + "_\n\n")
    f.write("_summary: " + function.summary + "_\n\n")
    f.write("_constant: " + str(function.constant) + "_\n\n")
    f.write("_static: " + str(function.static) + "_\n\n")
    f.write("_visible: " + str(function.visible) + "_\n\n")
    f.write("_advanced: " + str(function.advanced)  + "_\n\n\n\n")
    f.write("-->\n\n");
    f.write("_description: _\n\n")
    f.write(function.description)
    f.write('\n\n\n\n\n\n')
    #f.write('//----------------------\n\n')

def serialize_var(f,var):
    f.write('###' + var.type + " " + var.name + "\n\n")
    f.write("<!--\n\n");
    f.write("_name: " + var.name + "_\n\n")
    f.write("_type: " + var.type + "_\n\n")
    f.write("_access: " + var.access + "_\n\n")
    f.write("_version_started: " + var.version_started + "_\n\n")
    f.write("_version_deprecated: " + var.version_deprecated + "_\n\n")
    f.write("_summary: " + var.summary + "_\n\n")
    f.write("_visible: " + str(var.visible) + "_\n\n")
    f.write("_constant: " + str(var.constant) + "_\n\n")
    f.write("_advanced: " + str(var.advanced) + "_\n\n\n\n")
    f.write("-->\n\n");
    f.write("_description: _\n\n")
    f.write(var.description)  
    f.write("\n\n\n\n\n\n")
    #f.write('//----------------------\n\n')
    
def setclass(clazz):
    try:
        os.mkdir(os.path.join(docs_root,clazz.module))
    except:
        pass
    f = open(os.path.join(docs_root,clazz.module,clazz.name)+".markdown",'w')
    f.write('#class ' + clazz.name + '\n\n\n')
    
    #f.write('//----------------------\n\n')
    #f.write('##Example\n\n' + clazz.example + '\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    f.write('##Description\n\n' + clazz.reference + '\n\n\n\n')

    #f.write('//----------------------\n\n')
    f.write('##Methods\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    for method in clazz.function_list:
        serialize_function(f,method)

    f.write('##Variables\n\n\n\n')
    
    #f.write('//----------------------\n\n')
    for var in clazz.var_list:
        serialize_var(f,var)
    f.close()
    return
