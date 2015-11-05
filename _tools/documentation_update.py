#!/usr/bin/python

from lxml import etree
from lxml import objectify
import os
import sys
import re
import HTMLParser

from documentation_class import DocsClass
from markdown_file import getclass,setclass,getfunctionsfile,setfunctionsfile
from documentation_members import DocsMethod, DocsVar
from documentation_function import DocsFunctionsFile, DocsFunction
import clang_utils
from clang.cindex import CursorKind

of_root = "/home/arturo/Code/openFrameworks"
of_source = os.path.join(of_root, "libs/openFrameworks")
of_addons = os.path.join(of_root, "addons")
official_addons = [
                    "ofxAccelerometer",
                    "ofxAndroid",
                    "ofxAssimpModelLoader",
                    "ofxEmscripten",
                    "ofxGui",
                    "ofxNetwork",
                    "ofxOpenCv",
                    "ofxOsc",
                    "ofxSvg",
                    "ofxThreadedImageLoader",
                    "ofxXmlSettings",                    
                  ]
currentversion = "0.9.0"
alternatives = { 
                 'size_t': ['int', 'unsigned int', 'long', 'unsigned long'],
                 'filesystem::path': ['string'],
                 'ofIndexType': ['int', 'unsigned int', 'long'],
                 'unsigned long': ['int', 'unsigned int', 'long'],
                 'unsigned long long': ['int', 'unsigned int', 'long'],
               }

def substitutetype(ty):
    """ fix types to match the standard format in the final docs,
        removes std:: and adds a leading and trailing space between
        triangular brackets """
        
    ty = ty.replace("std::", "")
    ty = re.sub(r"(.*)<(.*)>","\\1< \\2 >",ty)
    return ty
    
def parse_docs(element):
    """ parse an inlined documentation block """
    doc = str("" if element.raw_comment is None else element.raw_comment)
    doc = doc.strip()
    if doc.find("< ") == 0:
        doc = doc[2:]
    if doc.find("\\todo") == 0:
        doc = ""
    if doc.find("\\tparam") == 0:
        doc = re.sub(r"\\tparam.*","",doc)
    if doc.find("TODO:") == 0:
        doc = ""
    doc = doc.replace("\\warning ","\nWarning: ")
    doc = doc.replace("\\author ","\nBy: ")
    doc = doc.replace("\\param ","\nParameters:\n",1)
    doc = doc.replace("\\param ","")
    doc = doc.replace("\\brief ","")
    doc = doc.replace("\\returns ","\nReturns: ")
    docs = ""
    for line in iter(doc.splitlines()):
        line = line.strip()
        line = line.replace("/// ","")
        line = line.replace("///","")
        line = re.sub("\\class (.*)","",line)
        docs += line + "\n"
    try:
        docs = HTMLParser.HTMLParser().unescape(docs)
    except:
        pass
    docs += "\n"
    return docs
    
def is_class(member):
    return member.kind == CursorKind.CLASS_DECL or member.kind == CursorKind.CLASS_TEMPLATE or member.kind == CursorKind.STRUCT_DECL
    
def is_variable(member):
    return member.kind == CursorKind.VAR_DECL or member.kind == CursorKind.FIELD_DECL
    
def is_method(member):
    return member.kind == CursorKind.CXX_METHOD or member.kind == CursorKind.CONSTRUCTOR or member.kind == CursorKind.DESTRUCTOR or member.kind == CursorKind.FUNCTION_TEMPLATE
    
def is_function(member):
    return (member.kind == CursorKind.FUNCTION_DECL or member.kind == CursorKind.FUNCTION_TEMPLATE) and not is_class(member.semantic_parent)

def parse_variable(documentation_class, clazz, member):
    var = documentation_class.var_by_name(member.displayname)
    if not var:
        var = DocsVar(0)
        var.name = member.spelling
        var.access = member.access_specifier.name.lower()
        var.version_started = currentversion
        var.version_deprecated = ""
        var.constant = member.result_type.is_volatile_qualified()
        var.static = member.kind == CursorKind.VAR_DECL
        var.clazz = documentation_class.name
        #member.type.ref.text if hasattr(member.type,'ref') else member.type.text
        var.type = substitutetype(member.type.spelling)
    try:
        var.inlined_description = parse_docs(member)
    except:
        pass
    return var
    
    
def parse_function(documentation_class, clazz, member):
    params = ""
    for arg in member.get_children():
        if arg.kind.is_attribute():
            print "function attribute " + member.spelling + " " + arg.displayname
            # TODO: we suppose only attributes are the deprecated ones 
            return None
        if arg.kind != CursorKind.PARM_DECL:
            continue
        if len(params) > 0:
            params += ", "
        argtype = substitutetype(arg.type.spelling)
        if argtype[-1]=='&' or argtype[-1]=='*':
            params += argtype + arg.spelling
        else:
            params += argtype + " " + arg.spelling
        
        for part in arg.get_children():
            if part.kind == CursorKind.INTEGER_LITERAL or \
               part.kind == CursorKind.CHARACTER_LITERAL or \
               part.kind == CursorKind.CXX_BOOL_LITERAL_EXPR or \
               part.kind == CursorKind.CXX_NULL_PTR_LITERAL_EXPR or \
               part.kind == CursorKind.FLOATING_LITERAL or \
               part.kind == CursorKind.IMAGINARY_LITERAL or \
               part.kind == CursorKind.OBJC_STRING_LITERAL or \
               part.kind == CursorKind.OBJ_BOOL_LITERAL_EXPR or \
               part.kind == CursorKind.STRING_LITERAL:
                try:
                    params += "=" + part.get_tokens().next().spelling
                except:
                    print "error trying to print default value for " + documentation_class.name + "::" + member.spelling + " " + arg.spelling + " = " + str(part.kind)
                    pass
            elif part.kind == CursorKind.DECL_REF_EXPR:    
                params += "=" + part.spelling

    methodname = member.spelling
    methodname = re.sub("<.*>","",methodname)
    if member.kind == CursorKind.CONSTRUCTOR or member.kind == CursorKind.DESTRUCTOR or (not clazz is None and methodname == clazz.spelling):
        returns = ""
    else:
        returns = substitutetype(member.result_type.spelling)
        returns = ("" if returns is None else returns)
    method = documentation_class.function_by_signature(methodname, returns, params, alternatives)
    if method.name == "ofBackgroundGradient":
        print methodname, returns, params
        print "grdient desc: " + "ofBackgroundGradient", "void", ""
    if not clazz is None:
        method.static = member.is_static_method()
        method.clazz = documentation_class.name
        method.access = member.access_specifier.name.lower()
    else:
        print method.name + (" new" if method.new else "")
    method.returns = returns
    #method.description = method.description.replace("~~~~{.brush: cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
    method.description = method.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')
    
    if method.new:
        method.version_started = currentversion

    method.inlined_description = parse_docs(member)
    
    if method.new:
        signature = returns + " " + methodname + "(" + params + ")"
        print "new: " + signature
        
    return method

"""def update_moved_functions(filename,is_addon=False):
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
                                
            setfunctionsfile(functionsfile,is_addon)"""
    
    
            
def serialize_functionsfile(cursor,filename,is_addon=False):
    print("functions file " + filename)    
    functionsfile = getfunctionsfile(filename)
    #print 'new: ' + str(functionsfile.new)
    functions_fromcode = []
    for function in cursor.get_children():
        if is_function(function) and str(function.location.file) == cursor.spelling: 
                function = parse_function(functionsfile, None, function)
                if function is not None:
                    functions_fromcode.append(function)
    
    #print "missing functions"
    thisfile_missing_functions = []
    #[f for f in functionsfile.function_list if f not in functions_fromxml.function_list]
    for function in functionsfile.function_list:
        if not function in functions_fromcode:
            #print function.name+"("+function.parameters+")"
            missing_functions.append(function)
            thisfile_missing_functions.append(function)
    
    for function in thisfile_missing_functions:
        print "removing " + function.name
        functionsfile.function_list.remove(function)
                
    functionsfile.function_list.sort(key=lambda function: function.name)
    if len(functionsfile.function_list)>0:
        setfunctionsfile(functionsfile,is_addon)
    
def serialize_class(cursor,is_addon=False, parent=None):
    clazz = cursor
    classname = (parent + "::" if parent is not None else "") + clazz.spelling
    print
    print "//------------------------------"
    print classname
    documentation_class = getclass(classname)
    
    current_variables_list = []
    current_methods_list = []
        
    inheritsfrom = []
    for child in clazz.get_children():
        if child.kind == CursorKind.CXX_BASE_SPECIFIER:
            if child.spelling.find("class") == 0:
                baseclass = child.spelling.split(' ')[1]
                inheritsfrom.append(baseclass)
            else:
                inheritsfrom.append(child.spelling)

    documentation_class.detailed_inline_description = parse_docs(clazz)
    
    for member in clazz.get_children():
        if member.kind == CursorKind.CLASS_DECL or member.kind == CursorKind.CLASS_TEMPLATE or member.kind == CursorKind.STRUCT_DECL:
            if member.access_specifier.name.lower() == 'public' and clazz.spelling + "::" + member.spelling not in visited_classes:
                for child in member.get_children():
                    if is_variable(child) or is_method(child):
                        print "subclass " + member.displayname
                        if classname[-1] == '_':
                            serialize_class(member,is_addon,classname[:-1])
                            visited_classes.append(classname[:-1] + "::" + member.spelling)
                        else:
                            serialize_class(member,is_addon,classname)
                            visited_classes.append(classname + "::" + member.spelling)
                        print "end subclass"
                        break
        elif member.kind == CursorKind.UNION_DECL:
            for union_member in member.get_children():
                if is_variable(union_member):
                    var = parse_variable(documentation_class, clazz, union_member)
                    current_variables_list.append(var)
                if union_member.kind == CursorKind.STRUCT_DECL:
                    for union_struct_member in union_member.get_children():
                        if is_variable(union_struct_member):
                            var = parse_variable(documentation_class, clazz, union_struct_member)
                            current_variables_list.append(var)
        elif is_variable(member):
            var = parse_variable(documentation_class, clazz, member)
            current_variables_list.append(var)
            #f.write( str(member.type.text) + " " + str(member.name.text) + "\n" )
        elif is_method(member):
            method = parse_function(documentation_class, clazz, member)
            if method is not None:
                current_methods_list.append(method)
        elif member.kind.is_attribute():
            print "attribute " + member.spelling
    
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
                #print "with description:"
                #print method.description
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
                #print "with description:"
                #print var.description
    documentation_class.var_list = current_variables_list
        
    documentation_class.function_list.sort(key=lambda function: function.name)
    documentation_class.var_list.sort(key=lambda variable: variable.name)
    
    #return
    setclass(documentation_class,is_addon)

def parse_folder(root, files, is_addon=False):
    file_count=0
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('of')==0 and os.path.splitext(name)[1]=='.h':
            tu = clang_utils.get_tu_from_file(filename)
            num_functions = 0
            for child in tu.cursor.get_children():
                if is_class(child) and child.spelling.find('of')==0:
                    i=0
                    for c in child.get_children():
                        if is_variable(c) or is_method(c) or c.kind == CursorKind.CXX_BASE_SPECIFIER:
                            i+=1
                    if i>0 and child.spelling not in visited_classes:
                        serialize_class(child, is_addon)
                        visited_classes.append(child.spelling)
                if is_function(child) and child.spelling.find('of')==0:
                    num_functions+=1
            functions_name = os.path.splitext(name)[0]
            if num_functions>0 and functions_name not in visited_function_files and functions_name != "ofMain":
                serialize_functionsfile(tu.cursor, functions_name, is_addon)
                visited_function_files.append(functions_name)
    return file_count
    
""" main """
dir_count=0
file_count=0
visited_classes = []
visited_function_files = []
missing_functions = []

for root, dirs, files in os.walk(of_source):
    dir_count+=1
    file_count += parse_folder(root, files, False)
    
"""for root, dirs, files in os.walk(of_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('of')==0 and name.find('8h.xml')!=-1:
            update_moved_functions(filename)

#serialize_functionsfile(of_documentation + "/index.xml",True)"""

for addon in official_addons:
    for root, dirs, files in os.walk(os.path.join(of_addons, addon, "src")):
        dir_count += 1
        file_count += parse_folder(root, files, True)

"""for root, dirs, files in os.walk(of_addons_documentation):
    dir_count+=1
    for name in files:       
        file_count+=1
        filename = os.path.join(root, name)
        if name.find('ofx')==0 and name.find('8h.xml')!=-1:
            update_moved_functions(filename,True)"""
            
print ""+str(dir_count)+" dirs/"+str(file_count)+" files"

