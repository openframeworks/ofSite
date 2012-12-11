
import os
import re
import logging

import blogofile_bf as bf
import shutil
import sys

import argparse
import shutil
import glob

import sets

sys.path.append(os.path.join(os.path.realpath(__file__)[0:-(len(os.path.join('_controllers','documentation.py'))+1)],'_tools'))
#sys.path.append( os.path.realpath('')+"/../_tools" )
import markdown_file

logger = logging.getLogger("blogofile.post")    
        
def uniqify(seq):
    seen = set()
    seen_add = seen.add
    return [ x for x in seq if x not in seen and not seen_add(x)]
        
class Block(object):
    def __init__(self, source):
        self.source = source
        self.name = None
        self.classes = []
        self.mode = 'module'
        self.__parse()
    
    def __parse(self):
        src_list = self.source.split('\n')
        for element in src_list:
            self.__parse_element(element)
        for clazz in self.classes:
            if 'methods' in clazz:
                clazz['methods'] = uniqify(clazz['methods']) #sets.Set(clazz['methods']) 
            if 'variables' in clazz:
                clazz['variables'] = uniqify(clazz['variables']) #sets.Set(clazz['variables'])
                
    def __parse_element(self, element):
        mode = self.mode
        if mode=='module' and element[:2]=='##':
            self.name = element[2:-2]
            self.mode = 'clazz'
        elif mode=='clazz' and element is not None and element != "" and element.find('__')==-1 and element.find('###')!=-1:
            #print element[3:-3]
            self.classes.append({'name':element[3:-3]})
        elif mode=='clazz' and element.find('__visible:')!=-1:
            if element.find('false')!=-1:
                self.classes[-1]['visible'] = False
            else:
                self.classes[-1]['visible'] = True
        elif mode=='clazz' and element.find('__advanced:')!=-1:
            if element.find('false')!=-1:
                self.classes[-1]['advanced'] = False
            else:
                self.classes[-1]['advanced'] = True
        elif mode=='clazz' and element.find('__methods__')!=-1:
            self.mode='methods'
            self.classes[-1]['methods']=[]
        elif mode=='methods' and element is not None and element != "" and element.find('__')==-1 and element.find('##')==-1:
            self.classes[-1]['methods'].append(element)
        elif mode=='methods' and element.find('__variables__')!=-1:
            self.mode='variables'
            self.classes[-1]['variables']=[]
        elif mode=='clazz' and element.find('__functions__')!=-1:
            self.mode='methods'
            self.classes[-1]['methods']=[]
        elif mode=='variables' and element is not None and element != "" and element.find('__')==-1 and element.find('##')==-1:
            self.classes[-1]['variables'].append(element)
        elif (mode=='methods' or mode=='variables') and element.find('##')!=-1:
            self.mode = 'clazz'
            self.__parse_element(element)

def run():
    classes = []
    directory = "_documentation"
    documentation = bf.config.controllers.documentation
        
    classes = markdown_file.getclass_list()
    for clazz_name in classes:
        clazz = markdown_file.getclass(clazz_name,True)
        methods_to_remove = []
        for method in clazz.function_list:
            if method.name==clazz.name or method.name[0]=="~" or method.name.find("OF_DEPRECATED_MSG")!=-1:
                methods_to_remove.append(method)
        for method in methods_to_remove:
            clazz.function_list.remove(method)
        functions_file = markdown_file.getfunctionsfile(clazz_name)
        #print clazz.name
        #print clazz.function_list
        env = {
            "modulename": clazz.name,
            "clazz": clazz,
            "functions": functions_file
        }
        bf.writer.materialize_template("documentation_class.mako", ('documentation',clazz.module+"/"+clazz.name+".html"), env )
    
    function_files = markdown_file.getfunctionsfiles_list()
    for functionfile_name in function_files:
        if functionfile_name in classes:
            continue
        functions_file = markdown_file.getfunctionsfile(functionfile_name)
        functions_to_remove = []
        for function in functions_file.function_list:
            if function.name.find("OF_DEPRECATED_MSG")!=-1:
                functions_to_remove.append(method)
        for function in functions_to_remove:
            functions_file.function_list.remove(method)
        env = {
            "modulename": functions_file.name,
            "clazz": None,
            "functions": functions_file
        }
        bf.writer.materialize_template("documentation_class.mako", ('documentation',functions_file.module+"/"+functions_file.name+".html"), env )
        

    # process index file
    indexhtml_file = open("_documentation/" + "index.markdown",'r')
    indexhtml = indexhtml_file.read()
    columns = []
    columns_src = indexhtml.split('___column___')
    for column in columns_src:    
        blocks_src = column.split('//----------------------')
        blocks = []
        for block in blocks_src:
            b = Block(block)
            if b.name is not None and b.name != "":
                blocks.append(b)
        columns.append(blocks)
    
    indexhtml_file = open("_documentation/" + "indexAddons.markdown",'r')
    indexhtml = indexhtml_file.read()
    addons_columns = []
    columns_src = indexhtml.split('___column___')
    for column in columns_src:    
        blocks_src = column.split('//----------------------')
        blocks = []
        for block in blocks_src:
            b = Block(block)
            if b.name is not None and b.name != "":
                blocks.append(b)
        addons_columns.append(blocks)
        
    bf.writer.materialize_template("documentation.mako", ('documentation',"index.html"), {'columns':columns,'addons_columns':addons_columns} )
    
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
    
            
    
