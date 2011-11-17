
import os
import re
import logging

import blogofile_bf as bf

logger = logging.getLogger("blogofile.post")


class ClassParseException(Exception):

    def __init__(self, value):
        self.value = value

    def __str__(self):
        return repr(self.value)
        
        
class MethodParseException(Exception):

    def __init__(self, value):
        self.value = value

    def __str__(self):
        return repr(self.value)

class VarParseException(Exception):

    def __init__(self, value):
        self.value = value

    def __str__(self):
        return repr(self.value)     
        
        
        
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
                
    def __parse_element(self, element):
        mode = self.mode
        if mode=='module' and element[:2]=='##':
            self.name = element[2:-2]
            self.mode = 'clazz'
        elif mode=='clazz' and element is not None and element != "" and element.find('__')==-1 and element.find('###')!=-1:
            self.classes.append({'name':element[3:-3]})
        elif mode=='clazz' and element.find('__visible:')!=-1:
            if element.find('false')!=-1:
                self.classes[-1]['visible'] = False
            else:
                self.classes[-1]['visible'] = True
        elif mode=='clazz' and element.find('__methods__')!=-1:
            self.mode='methods'
            self.classes[-1]['methods']=[]
        elif mode=='methods' and element is not None and element != "" and element.find('__')==-1 and element.find('##')==-1:
            self.classes[-1]['methods'].append(element)
        elif mode=='methods' and element.find('__variables__')!=-1:
            self.mode='variables'
            self.classes[-1]['variables']=[]
        elif mode=='variables' and element is not None and element != "" and element.find('__')==-1 and element.find('##')==-1:
            self.classes[-1]['variables'].append(element)
        elif (mode=='methods' or mode=='variables') and element.find('##')!=-1:
            self.mode = 'clazz'
            self.__parse_element(element)

class Method(object):
    """
    Class to describe a documents class method and associated metadata
    """
    def __init__(self, source, clazz="Untitled", filters = []):
        self.source = source
        self.name = None
        self.access = None
        self.parameters = None
        self.syntax = None
        self.syntax_resume = None
        self.returns = None
        self.returns_description = None
        self.summary = None
        self.description = None
        self.content = None
        self.filters = filters
        self.clazz = clazz
        self.__parse()
        
    def __parse(self):        
        src_list = self.source.split('\n')
        metadata = dict()
        description = self.source[self.source.rfind('_description: _')+len('_description _')+1:]
        for src in src_list:
           element = src.split(': ')
           if(len(element)<2):
                continue
           element_value = ""
           for e in element[1:]:       
               element_value = element_value + e
           metadata[element[0]] = element_value
        
        try:
            self.name = metadata['_name'][:-1]
            self.access = metadata['_access'][:-1]
            self.parameters = metadata['_parameters'][:-1]
            self.syntax = metadata['_syntax'][:-1]
            self.returns = metadata['_returns'][:-1]
            self.returns_description = metadata['_returns_description'][:-1]
            self.summary = metadata['_summary'][:-1]
            
            if(len(self.parameters.split(','))>0):
                self.syntax_resume = self.name + '(...)'
            else:
                self.syntax_resume = self.name + '()'
                
            self.description = bf.filter.run_chain(self.filters, description)
        except:
            raise MethodParseException( 'error parsing method from ' + str(self.source) )
        
class Variable(object):
    """
    Class to describe a documents class method and associated metadata
    """
    def __init__(self, source, clazz="Untitled", filters = []):
        self.source = source
        self.name = None
        self.type = None
        self.access = None
        self.summary = None
        self.description = None
        self.content = None
        self.filters = filters
        self.clazz = clazz
        self.__parse()
        
    def __parse(self):        
        src_list = self.source.split('\n')
        metadata = dict()
        description = self.source[self.source.rfind('_description: _')+len('_description _')+1:]
        for src in src_list:
           element = src.split(': ')
           if(len(element)<2):
                continue
           element_value = ""
           for e in element[1:]:       
               element_value = element_value + e
           metadata[element[0]] = element_value
        
        try:
            self.name = metadata['_name'][:-1]
            self.type = metadata['_type'][:-1]
            self.access = metadata['_access'][:-1]
            self.summary = metadata['_summary'][:-1]                
            self.description = bf.filter.run_chain(self.filters, description)
        except:
            raise VarParseException( 'error parsing method from ' + str(self.source) )
            
            
class Clazz(object):
    """
    Class to describe a documents class and associated metadata
    """
    def __init__(self, source, filename="Untitled", folder=""):
        self.source = source
        self.name = None
        self.description = None
        self.methods = []
        self.vars = []
        self.content = None
        self.filters = None
        self.folder = folder
        self.filename = filename
        self.__parse()
        
    def __parse(self):
        if self.filters is None:
            try:
                file_extension = os.path.splitext(self.filename)[-1][1:]
                self.filters = bf.config.controllers.blog.post_default_filters[
                    file_extension]
            except KeyError:
                self.filters = []
        methods_content = self.source.split('//----------------------')
        
        if(len(methods_content)<3):
            raise ClassParseException( 'error parsing class from \n' + self.filename + '\n' + self.source )
              
        clazz_description = methods_content[1] + methods_content[2] + methods_content[3]
        self.description = bf.filter.run_chain(self.filters, clazz_description)
        
        #clazz_metadata = clazz_description.split('\n')
        title = methods_content[0].split(' ')
        
        if(len(title)!=2):
            raise ClassParseException( 'error parsing class name from ' + methods_content[0] )      
            
        self.name = title[1].split('\n')[0] 
        
        print self.name
        
        methods_content = methods_content[4:]
        
        for method_content in methods_content:
            if method_content.replace('\n','')[:len('##Variables')]=='##Variables':
                continue
            try:
                p = Method(method_content, clazz=self.name, filters=self.filters)
                self.methods.append(p)
            except MethodParseException as e:
                try:
                    v = Variable(method_content, clazz=self.name, filters=self.filters)
                    self.vars.append(v)
                except VarParseException as e:
                    logger.warning(u"{0} : Skipping this element, coudln't parse as method or var.".format(e.value))
                continue
        #self.content = bf.filter.run_chain(self.filters, self.source)
        
        env = {
            "methods": self.methods,
            "clazz": self.description,
        }
        bf.writer.materialize_template("docs_class.mako", ('docs',self.folder+"/"+self.name+".html"), env )

def run():
    classes = []
    directory = "_docs"
    docs = bf.config.controllers.docs

    #Parse the classes docs
    docs.dir = bf.util.path_join(bf.writer.output_dir, docs.path)
    
    class_filename_re = re.compile(
        ".*((\.textile$)|(\.markdown$)|(\.org$)|(\.html$)|(\.txt$)|(\.rst$))")
    if not os.path.isdir("_docs"):
        logger.warn("This site has no _docs directory.")
        return []
    classes_paths = [f.decode("utf-8") for f in bf.util.recursive_file_list(
            directory, class_filename_re) if class_filename_re.match(f)]

    try:
        os.mkdir(docs.dir)
    except:
        pass

    # process each class
    for class_path in classes_paths:
        class_fn = os.path.split(class_path)[1]
        class_dir = os.path.split(class_path)[0][len(directory):]
        logger.debug(u"Parsing docs class: {0}".format(class_path))

        try:
            src = open(class_path, "r").read().decode(
                    bf.config.controllers.blog.post_encoding)
        except:
            logger.exception(u"Error reading post: {0}".format(class_path))
            raise
        try:
            p = Clazz(src, filename=class_fn, folder=class_dir)
        except ClassParseException as e:
            logger.warning(u"{0} : Skipping this class.".format(e.value))
            continue

    # process index file
    indexhtml_file = open("_docs/" + "index.markdown",'r')
    indexhtml = indexhtml_file.read()
    blocks_src = indexhtml.split('//----------------------')
    blocks = []
    for block in blocks_src:
        b = Block(block)
        if b.name is not None and b.name != "":
            blocks.append(b)
        
    bf.writer.materialize_template("docs.mako", ('docs',"index.html"), {'blocks':blocks} )
    #html = open(docs.dir + "/" + class_fn + ".html",'w')
    #html.write(p.content)
    #html.close()
    
            
    
