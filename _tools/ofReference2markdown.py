from markdown_file import getclass, setclass
import os
from documentation_members import DocsMethod, DocsVar
import re
import shutil
import codecs

ofReference_path = '/home/arturo/Documentos/ofReference'
documentation_root = '/home/arturo/Documentos/new_of_site/_documentation/'

def remove_links(string):
    ret = ""
    state = 'normal'
    for c in string:
        if state == 'normal' and c =='[':
            state = 'link_name'
        elif state == 'link_name' and c!=']':
            ret = ret + c
        elif state == 'link_name' and c==']':
            state = 'link_end_name'
        elif state == 'link_end_name' and c=='(':
            state = 'link_url'
        elif state == 'link_url' and c==')':
            state = 'normal'
        elif state == 'normal':
            ret = ret + c
    return ret


def parse_function(element):
    if re.match('.*operator\s*\[\s*\]',element) is None: 
        clean_element = remove_links(element)
    else:
        clean_element = element
    clean_element = html_encode_templates(clean_element)
    #print re.match('operator\b*\[\b*\]\b*\(.*\)',element) is None
    #print clean_element
    m = DocsMethod(0)
    function_name = "" 
    function_return = ""
    function = clean_element.split('(')[0].lstrip(' ').rstrip(' ').split(' ')
    print str(function) + ": " + str(len(function)) + ": " + function[len(function)-1]
    
    #print function
    if len(function)>1:
        if element.find("operator")!=-1 and len(function)>2:
            function_name = function[len(function)-2] + function[len(function)-1]
        else:
            function_name = function[len(function)-1]
            print function_name
        for r in function[:len(function)-1]:
            if r == 'static':
                m.static = True
                continue
            if r == 'operator':
                continue
            if r == 'virtual':
                continue

            function_return = function_return + " " + r
    else:
        function_name = function[0]
    #print clean_element
    
    if clean_element.rfind('const') > clean_element.rfind(')'):
        clean_element = clean_element[:clean_element.rfind('const')]
        m.constant = True
        
    function_parameters = clean_element.split('(')[1].strip('\n').strip(' ').strip(')').strip(' ')
        
    m.name = function_name
    m.returns = function_return
    m.parameters = function_parameters
    m.syntax = function_name + "("
    for p in get_parameter_names(function_parameters):
        m.syntax = m.syntax + p + ", "
    m.syntax = m.syntax.rstrip(', ')
    m.syntax = m.syntax + ")"
    return m
        
def get_parameter_types(parameters_list):
    parameters_types = []
    if len(parameters_list.strip(' '))==0:
        return parameters_types
    for p in parameters_list.split(','):
        parameter = ""
        for e in p.split(' ')[:len(p.split(' '))-1]:
            parameter = parameter + " " + e
        parameters_types.append(parameter)
    return parameters_types
    
def get_parameter_names(parameters_list):
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
    
def html_encode_templates(line):
    return line.replace('<','&lt;').replace('>','&gt;')

def ofReferenceConvert():
    method = DocsMethod(0)  #from ofReference
    var = DocsVar(0)
    clazzmethod = DocsMethod(0)  #from markdown

    for root, dirs, files in os.walk(os.path.join(ofReference_path)):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]==".jpeg" or file_split[1]==".jpg" or file_split[1]==".gif" or file_split[1]==".png":
                try:
                    os.mkdir(os.path.join(documentation_root,os.path.basename(root)))
                except:
                    pass
                shutil.copyfile(os.path.join(root,name), os.path.join(documentation_root,os.path.basename(root),name))
            if file_split[1]=='.markdown': 
                print '###################get_class ' + file_split[0]
                clazz = getclass(file_split[0])
                clazztosave = getclass(file_split[0])
                if clazztosave.new:
                    clazztosave.module = root
                    print os.path.basename(root)

                f = open(os.path.join(root,name),'r')
                state = 'clazz'
                for line in f:
                    if state == 'clazz' and line.find('## Functions')==0:
                        state = 'functions'
                        
                    elif (state == 'clazz' or state=='method' or state=='var' or state=='functions') and line.find('###')==0:
                        element = line.replace("const ### ","const ").split('###')[1].rstrip('#').strip(' ')
                        if element.find('(')!=-1 and element.find(')')!=-1:
                            method = parse_function(element)
                            clazzmethod = clazztosave.function_by_signature(method.name,method.returns,method.parameters)
                            state = 'method'
                        else:
                            state = 'var'
                    
                    elif (state == 'clazz' or state=='method' or state=='var' or state=='functions') and line.find('##')==0:
                        #print 'class: ' + line.strip('\n')
                        clazz_name = line.split('##')[1].rstrip('#').strip(' ').strip('\n')
                        clazz = getclass(clazz_name)
                        clazztosave = getclass(file_split[0])
                        if clazztosave.new:
                            clazztosave.module = os.path.basename(root)
                            print clazztosave.module
                        state = 'clazz'
                        print clazz_name + '\n\n'
                    
                    
                    elif state == 'clazz':
                        if line.find("//----------------------")==0:
                            continue
                        line = line.replace('```cpp','$$code(lang=c++)')
                        line = line.replace('```','$$/code')
                        print unicode(line,errors='ignore')
                        clazztosave.reference = clazztosave.reference + unicode(line, errors='ignore') #.decode('cp1252'))
                        
                    elif state == 'method':
                        if line.find("//----------------------")==0:
                            continue
                        line = line.replace('```cpp','$$code(lang=c++)')
                        line = line.replace('```','$$/code')
                        clazzmethod.description = clazzmethod.description + unicode(line, errors='ignore')
                    
                    elif state == 'function':
                        pass
                    elif state == 'functions' and line.find('###')==0:
                        pass
                    
                f.close()
                setclass(clazztosave)

ofReferenceConvert()

