#!/usr/bin/python

from lxml import etree
from lxml import objectify
import os
import sys
import re
import HTMLParser
from lxml.html.soupparser import fromstring 

from documentation_class import DocsClass
from markdown_file import getclass,setclass,getfunctionsfile,setfunctionsfile
from documentation_members import DocsMethod, DocsVar
from documentation_function import DocsFunctionsFile, DocsFunction

of_root = "/home/arturo/Code/openFrameworks/"
of_documentation = of_root + 'cldocs/xml/'
of_addons_documentation = of_root + 'addons/cldocs/xml/'
documentation_root = '/home/arturo/Documents/ofSite/documentation/'
#index = open(documentation_root + "index.html.mako",'w')

print of_documentation

missing_functions = []

currentversion = "0.9.0"


def update_moved_functions(filename,is_addon=False):
    xml = objectify.parse(filename)
    doxygen = xml.getroot()
    
    xmlfunctionsfile = doxygen.compounddef

    
    if xmlfunctionsfile.find('sectiondef')!=None:
        if len([ s for s in xmlfunctionsfile.sectiondef if s.get('kind')=='func'])>0:
            file_split = os.path.splitext(xmlfunctionsfile.compoundname.text)
            functionsfile = getfunctionsfile(file_split[0])
            for section in xmlfunctionsfile.sectiondef:
                if section.get('kind')=='func':
                    for xmlfunction in section.memberdef:
                        for function in missing_functions:
                            if function.name == xmlfunction.name.text:
                                argstring = str(xmlfunction.argsstring.text)
                                params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                                returns = xmlfunction.type.ref.text if hasattr(xmlfunction.type,'ref') else xmlfunction.type.text
                                moved_function = functionsfile.function_by_signature(xmlfunction.name.text, returns, params)
                                moved_function.returns = returns
                                moved_function.description = moved_function.description + '\n\n' + function.description
                                print "moved function: " + function.name
                                
            setfunctionsfile(functionsfile,is_addon)
    
    
            
def serialize_functionsfile(filename,is_addon=False):
    print("functions file " + filename)
    xml = objectify.parse(filename)
    cldoc = xml.getroot()
    
    xmlfunctionsfile = cldoc.compounddef

    
    if xmlfunctionsfile.find('sectiondef')!=None:
        if len([ s for s in xmlfunctionsfile.sectiondef if s.get('kind')=='func'])>0:
            #print '\n'
            file_split = os.path.splitext(xmlfunctionsfile.compoundname.text)
            #print file_split[0]
            functionsfile = getfunctionsfile(file_split[0])
            #print 'new: ' + str(functionsfile.new)
            functions_fromxml = []
            for section in xmlfunctionsfile.sectiondef:
                if section.get('kind')=='func':
                    for xmlfunction in section.memberdef:
                        argstring = str(xmlfunction.argsstring.text)
                        params = argstring[argstring.find('(')+1:argstring.rfind(')')]
                        returns = xmlfunction.type.ref.text if hasattr(xmlfunction.type,'ref') else xmlfunction.type.text
                        function = functionsfile.function_by_signature(xmlfunction.name.text, returns, params)
                        #function.description = function.description.replace("~~~~{.brush cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
                        function.description = function.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')
                        function.returns = returns
                        functions_fromxml.append(function.name)
                        
                        if xmlfunction.find("briefdescription")!=None and    xmlfunction.briefdescription.find("para")!=None:
                            function.inlined_description = ""
                            for p in xmlfunction.briefdescription.para:
                                function.inlined_description = function.inlined_description + serialize_doxygen_paragraph(p)
                            
                        if xmlfunction.find("detaileddescription")!=None and xmlfunction.detaileddescription.find("para")!=None:
                            function.inlined_description = function.inlined_description + "\n"
                            for p in xmlfunction.detaileddescription.para:
                                function.inlined_description = function.inlined_description + serialize_doxygen_paragraph(p)
                        
                        #print function.returns + " " + function.name + xmlfunction.argsstring.text + " new: " + str(function.new)
            
            #print "missing functions"
            thisfile_missing_functions = []
            #[f for f in functionsfile.function_list if f not in functions_fromxml.function_list]
            for function in functionsfile.function_list:
                if not function.name in functions_fromxml:
                    #print function.name+"("+function.parameters+")"
                    missing_functions.append(function)
                    thisfile_missing_functions.append(function)
            
            for function in thisfile_missing_functions:
                functionsfile.function_list.remove(function)
                
            deprecated_functions = []
            for function in functionsfile.function_list:
                if function.name.find("OF_DEPRECATED_MSG")!=-1:
                    deprecated_functions.append(function)
            for function in deprecated_functions:
                functionsfile.function_list.remove(function);
                        
            functionsfile.function_list.sort(key=lambda function: function.name)
            setfunctionsfile(functionsfile,is_addon)
    
def istag(element, name):
    return element.tag[-len(name):] == name
    
def substitutetype(ty, qualifier):
    if ty.find("std::__cxx11::string")==0:
        ty = "string"
    elif ty.find("std::vector")==0:
        ty = re.sub(r"std::vector<(.*),(.*)>","vector<\\1>",ty)
    
    if qualifier == " &":
        ty = ty + " &"
    elif qualifier == "&":
        ty = ty + " &"
    elif qualifier == " const &":
        ty = "const " + ty + " &"    
    elif qualifier == " *":
        ty = ty + " *"    
    elif qualifier == "*":
        ty = ty + " *"
    elif qualifier == " const *":
        ty = "const " + ty + " *"
    elif qualifier == " const":
        ty = "const " + ty
    return ty

def parse_doc_element(element):
    element = element.strip()
    if element.find("< ") == 0:
        element = element[2:]
    if element.find("\\todo") == 0:
        element = ""
    if element.find("\\tparam") == 0:
        element = re.sub(r"\\tparam.*","",element)
    if element.find("TODO:") == 0:
        element = ""
    element = element.replace("\\warning","\nwarning:")
    element = element.replace("\\author","\nby:")
    return element
    
def parse_docs(element):
    docs = ""
    if hasattr(element, 'brief'):
        try:
            brief = parse_doc_element(str(element.brief))
            docs = docs + HTMLParser.HTMLParser().unescape(brief)
        except:
            try:
                docs = docs + brief
            except:
                pass
        docs = docs + "\n"
    if hasattr(element, 'doc'):
        try:
            doc = parse_doc_element(str(element.doc))
            docs = docs + HTMLParser.HTMLParser().unescape(doc)
        except:
            try:
                docs = docs + doc
            except:
                pass
    docs = docs + "\n\n"
    return docs

def serialize_class(filename,is_addon=False):
    xml = objectify.parse(filename)
    cldocs = xml.getroot()
    
    clazz = cldocs
    classname = clazz.get('id')
    try:
        if classname=="ofVideoPlayer":
            print filename
            print dir(clazz)
            print str(clazz.brief)
    except:
        pass
        
    documentation_class = getclass(classname)
    
    current_variables_list = []
    current_methods_list = []
    
    
    #f = open('documentation/' + classname + ".html.mako",'w')
    
    #index.write("[" + classname + "](" + classname + ".html)\n\n")
    
    #f.write( '<%inherit file="_templates/documentation.mako" />\n' )
    #f.write( '___' + classname + "___\n" )
    
    inheritsfrom = []
    for base in clazz.iterchildren():
        if istag(base, "base"):
            print base.type.get("name")
            inheritsfrom.append(base.type.get("name"))
        

    documentation_class.detailed_inline_description = ""
   
    #clazz_for_description = doxygen_compound.parse(filename).compounddef 
    documentation_class.detailed_inline_description = parse_docs(clazz)

    for member in clazz.iterchildren():
        #if section.get("kind") == public TODO: access, virtual, pure virtual
        if istag(member, "enum"):
            pass
        elif istag(member, 'field'):
            var = documentation_class.var_by_name(member.get("name"))
            if not var:
                var = DocsVar(0)
                var.name = member.get("name")
                var.access = "public"
                var.version_started = currentversion
                var.version_deprecated = ""
                var.constant = True
                var.static = False
                var.clazz = documentation_class.name
                #member.type.ref.text if hasattr(member.type,'ref') else member.type.text
                var.type = substitutetype(member.type.get("name"), member.type.get("qualifier"))
            try:
                var.inlined_description = parse_docs(member)
            except:
                pass
            current_variables_list.append(var)
            #f.write( str(member.type.text) + " " + str(member.name.text) + "\n" )
        elif istag(member, 'method') or istag(member, 'methodtemplate') or istag(member, 'constructor'):
            params = ""
            returns = ""
            for arg in member.iterchildren():
                if istag(arg,"argument"):
                    if len(params) > 0:
                        params += ", "
                    argtype = arg.type.get("name")
                    argtype = substitutetype(argtype, arg.type.get("qualifier"))
                    if argtype[-1] == '&' or argtype[-1]=='*':
                        params += argtype + arg.get("name")
                    else:
                        params += argtype + " " + arg.get("name")
                if istag(arg,"return"):
                    returns = substitutetype(arg.type.get("name"), arg.type.get("qualifier"))
            
                
            returns = ("" if returns is None else returns)
            method = documentation_class.function_by_signature(member.get("name"), returns, params)
            method.static = member.get("static")!="no"
            method.clazz = documentation_class.name
            method.access = "public"
            method.returns = returns
            #method.description = method.description.replace("~~~~{.brush: cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
            method.description = method.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')
            
            if method.new:
                print "new method " + returns + " " + member.get("name") + "(" + params + ")" + " in " + method.clazz
                method.version_started = currentversion
                
            method.inlined_description = ""
            method.inlined_description = parse_docs(member)
                
            current_methods_list.append(method)
                
            #f.write( str(member.type.text) + " " + str(member.name.text) + str(member.argsstring.text) + "\n" )
        """if member.name.text.find("OF_DEPRECATED_MSG")!=-1:
            print "found deprecated function " + member.name.text
            print "argstring = " + str(member.argsstring.text)
            print "params = " + member.argsstring.text[member.argsstring.text.find('(')+1:member.argsstring.text.rfind(')')]
            returns = member.type.ref.text if hasattr(member.type,'ref') else member.type.text
            print "returns = " + ("" if returns is None else returns)"""
        #f.write( "$$/code\n\n\n\n" )
        
    #f.close()
    deprecated_methods = []
    for method in documentation_class.function_list:
        if method.name.find("OF_DEPRECATED_MSG")!=-1:
            deprecated_methods.append(method)
    for method in deprecated_methods:
        documentation_class.function_list.remove(method);
    
    class_name_printed = False
    
    for method in documentation_class.function_list:
        if not method in current_methods_list:
            if method.description.strip("\n ") != "":
                if not class_name_printed:    
                    print "\n\n\n\n"
                    print "========================================"
                    print "class " + documentation_class.name
                    class_name_printed = True
                print "\n\n\n\n"
                print "removing method " + method.returns + " " + method.name + "(" + method.parameters + ")"
                print "with description:"
                print method.description
    documentation_class.function_list = current_methods_list
    
    for var in documentation_class.var_list:
        if not var in current_variables_list:
            if var.description.strip("\n ") != "":
                if not class_name_printed:    
                    print "\n\n\n\n"
                    print "========================================"
                    print "class " + documentation_class.name
                    class_name_printed = True
                print "removing " + var.name
                print "with description:"
                print var.description
    documentation_class.var_list = current_variables_list
        
    documentation_class.function_list.sort(key=lambda function: function.name)
    documentation_class.var_list.sort(key=lambda variable: variable.name)
    setclass(documentation_class,is_addon)

#serialize_class ("/home/arturo/Desktop/openFrameworks/libs/openFrameworksCompiled/project/doxygen/build/xml/classof_log.xml")
#quit()

#index.write( '<%inherit file="_templates/documentation.mako" />\n' )
dir_count=0
file_count=0
for root, dirs, files in os.walk(of_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('of')==0 and name.find('of::priv')!=0 and name!="of.xml":
            serialize_class(filename)

for root, dirs, files in os.walk(of_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('of')==0 and name.find('8h.xml')!=-1:
            update_moved_functions(filename)

#serialize_functionsfile(of_documentation + "/index.xml",True)

for root, dirs, files in os.walk(of_addons_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('class')==0:
            serialize_class(filename,True)
        elif name.find('ofx')==0 and name.find('8h.xml')!=-1:
            serialize_functionsfile(filename,True)

for root, dirs, files in os.walk(of_addons_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('ofx')==0 and name.find('8h.xml')!=-1:
            update_moved_functions(filename,True)
            
print ""+str(dir_count)+" dirs/"+str(file_count)+" files"

