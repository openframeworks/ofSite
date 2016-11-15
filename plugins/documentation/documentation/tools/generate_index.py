import markdown_file
import copy
import sys

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

def parse_index():
    indexhtml_file = open("_documentation/" + "index.markdown",'r')
    indexhtml = indexhtml_file.read()
    columns = []
    columns_src = indexhtml.split('___column___')
    blocks = []
    last_block_name = ""
    for column in columns_src:    
        blocks_src = column.split('//----------------------')
        for block in blocks_src:
            b = Block(block)
            if b.name is not None and b.name != "":
                blocks.append(b)
                last_block_name = b.name
        columns.append(last_block_name)
    return blocks,columns


def get_class(name,block_list):
    for block in block_list:
        for clazz in block.classes:
            if clazz["name"] == name:
                return clazz
    return None

def get_block(name,block_list):
    for block in block_list:
        if block.name == name:
            return block
    return None
    
def check_new_column(block_name,columns):
    for column in columns:
        if column==block_name:
            return True
            
    return False


# main

block_list,columns = parse_index()
new_block_list = []
modules = markdown_file.list_all_modules()
    

# parse current code + set correct visibility from old index
for module in modules:
    if module == "addons": 
        continue
    append_block = False
    block = get_block(module,block_list)
    if block==None:
        #sys.stderr.write (module + " not found, creating new\n")
        block = Block()
        block.name = module
        append_block = True
    
    files = markdown_file.list_all_files(module)
    for clazz in files:
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
                
    if append_block:   
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
    if check_new_column(block.name,columns):
        print('___column___')
        print '\n\n\n'
                

"""ordered_modules_list = index()
for module in module_list.modules:
    new_module = index_module()
    new_module.name = module.name
    for functionsfile in module.functionsfiles_list:
        new_module.functionsfiles_list.append(get_functionsfile(functionsfile.name,new_module_list))
    for classfile in module.classfiles_list:
        new_module.classfiles_list.append(get_classfile(classfile.name,new_module_list))
    ordered_modules_list.modules.append(new_module)
    
        
ordered_modules_list = module_list

for module in ordered_modules_list.modules:
    print '//----------------------\n\n'
    print "##" + module.name + "##\n\n"
    for f in module.functionsfiles_list:
        print "###" + f.name + "###\n"
        visibility = "__visible: "
        if f.visible:
            visibility = visibility + "true__\n"
        else:
            visibility = visibility + "false__\n"
        
        advanced = "__advanced: "
        if f.advanced:
            advanced = advanced + "true__\n"
        else:
            advanced = advanced + "false__\n"
            
        print visibility
        print advanced
        print '__functions__'
        for function in f.function_list:
            print function + '\n'
        
    for f in module.classfiles_list:
        print "###" + f.name + "###\n"
        visibility = "__visible: "
        if f.visible:
            visibility = visibility + "true__\n"
        else:
            visibility = visibility + "false__\n"
        
        advanced = "__advanced: "
        if f.advanced:
            advanced = advanced + "true__\n"
        else:
            advanced = advanced + "false__\n"
            
        print visibility
        print advanced
        
    print '\n\n\n'
    if check_new_column(module.name,module_list):
        print('___column___')
        print '\n\n\n'"""
        

     
    
