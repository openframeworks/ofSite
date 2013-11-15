
import os
import re
import logging

import blogofile_bf as bf
import shutil
import sys
import random

import argparse
import shutil
import glob

sys.path.append(os.path.join(os.path.realpath(__file__)[0:-(len(os.path.join('_controllers','documentation.py'))+1)],'_tools'))
#sys.path.append( os.path.realpath('')+"/../_tools" )
import markdown_file

logger = logging.getLogger("blogofile.post")    
        
def uniqify(seq):
    seen = set()
    seen_add = seen.add
    return [ x for x in seq if x not in seen and not seen_add(x)]
        

def run():
    classes = []
    directory = "_documentation"
    documentation = bf.config.controllers.documentation
        
    classes = markdown_file.getclass_list()
    classes_simple_name = markdown_file.getclass_list(False)
    addon_classes = markdown_file.list_all_addons()
    
    module_lookup = dict()
    core_index = dict()
    addons_index = dict()
    
    # Create an index of which module each class is in for generated links to other classes
    for class_name in classes:
        clazz = markdown_file.getclass(class_name)
        if clazz.istemplated:
            module_lookup[class_name[:-1]] = clazz.module    
        else:
            module_lookup[class_name] = clazz.module
        
    for clazz_name in classes:
        clazz = markdown_file.getclass(clazz_name)
        if clazz.istemplated:
            clazz.name = clazz.name[:-1]

        methods_to_remove = []
        for method in clazz.function_list:
            if method.name[0]=="~" or method.name.find("OF_DEPRECATED_MSG")!=-1:
                methods_to_remove.append(method)
        for method in methods_to_remove:
            clazz.function_list.remove(method)

        clazz.detailed_inline_description = str(clazz.detailed_inline_description.encode('ascii', 'ignore'))
        for class_name in classes_simple_name:
            rep = class_name + "[\s]"
            clazz.detailed_inline_description = re.sub(rep, "<a href=\"../"+module_lookup[class_name]+"/"+class_name+".html\" class=\"docs_class\" >"+class_name+"</a> ", clazz.detailed_inline_description)
            rep = class_name + "[(]"
            clazz.detailed_inline_description = re.sub(rep, "<a href=\"../"+module_lookup[class_name]+"/"+class_name+".html\" class=\"docs_class\" >"+class_name+"</a>(", clazz.detailed_inline_description)

        clazz.reference = str(clazz.reference.encode('ascii', 'ignore'))
        for class_name in classes_simple_name:
            rep = class_name + "[\s]"
            clazz.reference = re.sub(rep, "<a href=\"../"+module_lookup[class_name]+"/"+class_name+".html\" class=\"docs_class\" >"+class_name+"</a> ", clazz.reference)
            rep = class_name + "[(]"
            clazz.reference = re.sub(rep, "<a href=\"../"+module_lookup[class_name]+"/"+class_name+".html\" class=\"docs_class\" >"+class_name+"</a>(", clazz.reference)

        functions_file = markdown_file.getfunctionsfile(clazz.name)
        #print clazz.name
        #print clazz.function_list 
        env = {
            "modulename": clazz.name,
            "clazz": clazz,
            "functions": functions_file,
            "classes_list": classes,
            "is_addon": (clazz.name in addon_classes)
        }
        
        bf.template.materialize_template("documentation_class.mako", ('documentation',clazz.module+"/"+clazz.name+".html"), env )
        
        if not clazz.module in addon_classes:
            if not clazz.module in core_index.keys():
                core_index[clazz.module] = []
            if functions_file!=None:
                for function in functions_file.function_list:
                    clazz.function_list.append(function)
            core_index[clazz.module].append(clazz)
        else:
            if not clazz.module in addons_index.keys():
                addons_index[clazz.module] = []
            if functions_file!=None:
                for function in functions_file.function_list:
                    clazz.function_list.append(function)
            addons_index[clazz.module].append(clazz)
        
    
    function_files = markdown_file.getfunctionsfiles_list()
    for functionfile_name in function_files:
        if functionfile_name in classes_simple_name:
            continue
        functions_file = markdown_file.getfunctionsfile(functionfile_name)

# might be needed at some point?
#        functions_file.reference = str(functions_file.reference)
#        for func in function_files:
#            functions_file.reference = str.replace(functions_file.reference, class_name, "<a href=\"../"+clazz.module+"/"+class_name+".html\">"+class_name+"</a>")


        functions_to_remove = []
        for function in functions_file.function_list:
            if function.name.find("OF_DEPRECATED_MSG")!=-1:
                functions_to_remove.append(method)
        for function in functions_to_remove:
            functions_file.function_list.remove(method)
        env = {
            "modulename": functions_file.name,
            "clazz": None,
            "functions": functions_file,
            "is_addon": (functions_file.name in addon_classes) 
        }
        bf.template.materialize_template("documentation_class.mako", ('documentation',functions_file.module+"/"+functions_file.name+".html"), env )
        
        if not functions_file.module in addon_classes:
            if not functions_file.module in core_index:
                core_index[functions_file.module] = []
            core_index[functions_file.module].append(functions_file)
        else:
            if not functions_file.module in addons_index:
                addons_index[functions_file.module] = []
            addons_index[functions_file.module].append(functions_file)
        
        

    # process index file        
    bf.template.materialize_template("documentation.mako", ('documentation',"index.html"), {'core':core_index,'addons':addons_index} )
    
    for root, dirs, files in os.walk(directory):
        for name in files:
            file_split = os.path.splitext(name)
            if file_split[1]==".jpeg" or file_split[1]==".jpg" or file_split[1]==".gif" or file_split[1]==".png":
                try:
                    os.mkdir(os.path.join('_site','documentation',os.path.basename(root)))
                except:
                    pass
                shutil.copyfile(os.path.join(root,name), os.path.join('_site','documentation',os.path.basename(root),name))
                
    #html = open(documentation.dir + "/" + class_fn + ".html",'w')
    #html.write(p.content)
    #html.close()
    
            
    
