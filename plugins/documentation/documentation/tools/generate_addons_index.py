import markdown_file
import copy
import sys

addons = markdown_file.list_all_addons()
block_list = []

def uniqify(seq):
    seen = set()
    seen_add = seen.add
    return [ x for x in seq if x not in seen and not seen_add(x)]
        
class Block(object):
    def __init__(self, source=""):
        self.source = source
        self.name = None
        self.classes = []
        self.mode = 'module'
        if source!="":
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

def get_class(name,block_list):
    for block in block_list:
        for clazz in block.classes:
            if clazz["name"] == name:
                return clazz
    return None

    
for addon in addons:
    block = Block()
    block.name = addon
    #print '//----------------------\n\n'
    #print "##" + addon + "##\n\n"
    files = markdown_file.list_all_addon_files(addon)
    for clazz in files:
        #print "###" + f + "###\n\n"
        #print "__visible: true__\n\n"
        #print "__advanced: false__\n\n"
        
        onlyfunctionsfile = False
        if clazz.endswith("_functions"):
            clazz = clazz[:-10]
            onlyfunctionsfile = True
        clazzname = clazz
        if clazz.endswith("_"):
            clazz = clazz[:-1]
            if clazz in files:
                continue
        current_class = get_class(clazz,block_list)
        append_class = False
        if current_class!=None:
            pass
            #current_class["methods"]=[]
        else:
            current_class = {"name":clazz,"visible":True,"advanced":False,"methods":[]}
            append_class = True
        
        if onlyfunctionsfile:    
            functionsfile = markdown_file.getfunctionsfile(clazz)
            prevfunction = ""
            for function in functionsfile.function_list:
                if prevfunction == function.name:
                    continue
                params = "()"
                current_class["methods"].append(function.name + params)
                prevfunction = function.name
        else:
            classfile = markdown_file.getclass(clazzname)
            prevfunction = ""
            for function in classfile.function_list:
                if prevfunction == function.name:
                    continue
                if function.access!='public' or function.advanced or not function.visible:
                    continue
                params = "()"
                current_class["methods"].append(function.name + params)
                prevfunction = function.name
        
        if append_class:        
            block.classes.append(current_class)
    
    block_list.append(block)
            
print '//----------------------\n\n'
for block in block_list:
    print "##" + block.name + "##\n\n"
    for clazz in block.classes:
        visible = "__visible: "
        if clazz['visible']:
            visible = visible + "true__\n"
        else:
            visible = visible + "false__\n"
        
        advanced = "__advanced: "
        if clazz['advanced']:
            advanced = advanced + "true__\n"
        else:
            advanced = advanced + "false__\n"
            
        print "###" + clazz['name'] + "###\n"
        print visible
        print advanced
        print '__functions__'
        for function in clazz['methods']:
            print function + '\n'
        if len(clazz['methods'])==0:
            print '\n\n\n'
    
    print '//----------------------\n\n'
    print '\n\n\n'

