#!/usr/bin/env python

from lxml import etree
from lxml import objectify
import os
import sys
import re
import html
import difflib

from documentation_class import DocsClass
from markdown_file import getclass,setclass,getfunctionsfile,setfunctionsfile,remove_functionsfile
from documentation_members import DocsMethod, DocsVar
from documentation_function import DocsFunctionsFile, DocsFunction
import clang_utils
from clang.cindex import CursorKind

of_root = "/home/arturo/Code/openFrameworks"
of_source = os.path.join(of_root, "libs/openFrameworks")
of_addons = os.path.join(of_root, "addons")
glm_source = os.path.join(of_root, "libs/glm/include/glm")
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
                    "ofxPoco",
                  ]
currentversion = "0.10.0"
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
    ty = re.sub(r"glm::tvec(.*)< T, P >", "glm::vec\\1", ty)
    ty = re.sub(r"tvec(.*)< T, P >", "glm::vec\\1", ty)
    ty = re.sub(r"glm::tmat(.*)< T, P >", "glm::mat\\1", ty)
    ty = re.sub(r"tmat(.*)< T, P >", "glm::mat\\1", ty)
    ty = ty.replace("glm::mat2x2", "glm::mat2")
    ty = ty.replace("glm::mat3x3", "glm::mat3")
    ty = ty.replace("glm::mat4x4", "glm::mat4")
    ty = re.sub(r"glm::tquat(.*)< T, P >", "glm::quat\\1", ty)
    ty = re.sub(r"tquat(.*)< T, P >", "glm::quat\\1", ty)
    return ty


def substitute_glm_spelling(ty):
    """ fix glm types to match the standard format in the final docs,
        removes the t prefix to glm names """

    ty = ty.replace("tvec", "vec")
    ty = ty.replace("tmat", "mat")
    ty = ty.replace("mat2x2", "mat2")
    ty = ty.replace("mat3x3", "mat3")
    ty = ty.replace("mat4x4", "mat4")
    ty = ty.replace("tquat", "quat")
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
    doc = doc.replace("\\warning ","\n**Warning**: ")
    doc = doc.replace("\\author ","\nBy: ")
    doc = doc.replace("\\param ","\n**Parameters:**\n\n",1)
    doc = doc.replace("\\param ","\n")
    doc = doc.replace("\\brief ","")
    doc = doc.replace("\\returns ","\n**Returns**: ")
    doc = doc.replace("\\sa ","\n**See also**: ")
    doc = doc.replace("@see ","\n**See also**: ")
    doc = doc.replace("@tparam","\n**Type parameters:**\n\n",1)
    doc = doc.replace("@tparam","\n")
    doc = doc.replace("@param[in] ","\n**Parameters:**\n\n",1)
    doc = doc.replace("@param[in] ","\n")
    doc = doc.replace("@param ","\n**Parameters:**\n\n",1)
    doc = doc.replace("@param ","\n")
    # doc = re.sub("<([a-zA-Z0-9]*)>", "`\\1`", doc) # glm mix contains <a> that turns into a link
    doc = re.sub(r"@code(.*)@endcode", "```cpp\n\\1\n```", doc, flags=re.DOTALL)
    docs = ""
    for line in iter(doc.splitlines()):
        line = line.strip()
        line = line.replace("/// ","")
        line = line.replace("///","")
        line = line.replace("//!","")
        line = re.sub(r"\\class (.*)","",line)
        docs += line + "\n"
    docs = html.unescape(docs)
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

def is_glm_class(member):
    return is_class(member) and (member.spelling.find('tvec')!=-1 or member.spelling.find('tmat')!=-1 or member.spelling.find('tquat')!=-1)

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
        new_vars.append(var)
    try:
        var.inlined_description = parse_docs(member)
    except:
        pass
    return var


def parse_function(documentation_class, clazz, member, already_found, fuzzy=False, namespace=None):
    params = ""
    for arg in member.get_children():
        if arg.kind.is_attribute():
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
                for p in part.get_tokens():
                    params += "=" + p.spelling
            elif part.kind == CursorKind.DECL_REF_EXPR:
                params += "=" + part.spelling

    methodname = namespace + "::" + member.spelling if namespace is not None else member.spelling
    methodname = re.sub("<.*>","",methodname)
    if member.kind == CursorKind.CONSTRUCTOR or member.kind == CursorKind.DESTRUCTOR or (not clazz is None and methodname == clazz.spelling):
        returns = ""
    else:
        returns = substitutetype(member.result_type.spelling)
        returns = ("" if returns is None else returns)
    method = documentation_class.function_by_signature(methodname, returns, params, alternatives, already_found, fuzzy)

    if method is None:
        return None

    if not clazz is None:
        method.static = member.is_static_method()
        method.clazz = documentation_class.name
        method.access = member.access_specifier.name.lower()
    else:
        method.functionsfile = documentation_class.name
    method.returns = returns
    #method.description = method.description.replace("~~~~{.brush: cpp}","~~~~{.cpp}").replace('</pre>',"~~~~")
    method.description = method.description.replace('<p>','').replace('</p>','').replace('<code>','').replace('</code>','').replace('<pre>','')

    if method.new:
        method.version_started = currentversion

    method.inlined_description = parse_docs(member)

    if method.new:
        if clazz is None:
            new_functions.append(method)
        else:
            new_methods.append(method)

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



def serialize_functionsfile(cursor, functionsfile, is_addon=False, alternative_origin=None, serialize_operators = True, namespace = None):
    functions_fromcode = []
    functions_for_fuzzy_search = []
    for member in cursor.get_children():
        if is_function(member) and (str(member.location.file) == cursor.spelling or str(member.location.file) == alternative_origin) and (serialize_operators or member.spelling.find("operator")!=0):
            function = parse_function(functionsfile, None, member, functions_fromcode, False, namespace)
            if function is not None:
                functions_fromcode.append(function)
            else:
                functions_for_fuzzy_search.append(member)

    for member in functions_for_fuzzy_search:
        function = parse_function(functionsfile, None, member, functions_fromcode, True, namespace)
        if function is not None:
            functions_fromcode.append(function)

    return functions_fromcode

def serialize_class(cursor, is_addon=False, parent=None, alternative_class_spelling = None):
    clazz = cursor
    class_spelling = alternative_class_spelling if alternative_class_spelling is not None else clazz.spelling
    classname = (parent + "::" if parent is not None else "") + class_spelling
    documentation_class = getclass(classname)

    current_variables_list = []
    current_methods_list = []
    methods_for_fuzzy_search = []

    documentation_class.extends = []

    for child in clazz.get_children():
        if child.kind == CursorKind.CXX_BASE_SPECIFIER:
            if child.spelling.find("class") == 0:
                baseclass = child.spelling.split(' ')[1]
                documentation_class.extends.append(baseclass)
            else:
                documentation_class.extends.append(child.spelling)

    documentation_class.detailed_inline_description = parse_docs(clazz)

    for member in clazz.get_children():
        if member.kind == CursorKind.CLASS_DECL or member.kind == CursorKind.CLASS_TEMPLATE or member.kind == CursorKind.STRUCT_DECL:
            if member.access_specifier.name.lower() == 'public' and class_spelling + "::" + member.spelling not in visited_classes:
                for child in member.get_children():
                    if is_variable(child) or is_method(child):
                        if classname[-1] == '_':
                            serialize_class(member,is_addon,classname[:-1])
                            visited_classes.append(classname[:-1] + "::" + member.spelling)
                        else:
                            serialize_class(member,is_addon,classname)
                            visited_classes.append(classname + "::" + member.spelling)
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
        elif is_method(member):
            method = parse_function(documentation_class, clazz, member, current_methods_list)
            if method is not None:
                current_methods_list.append(method)
            else:
                methods_for_fuzzy_search.append(member)

    for member in methods_for_fuzzy_search:
        method = parse_function(documentation_class, clazz, member, current_methods_list, True)
        if method is not None:
            current_methods_list.append(method)


    for method in documentation_class.function_list:
        if not method in current_methods_list:
            missing_methods.append(method)
    documentation_class.function_list = current_methods_list

    for var in documentation_class.var_list:
        if not var in current_variables_list:
            missing_vars.append(var)
    documentation_class.var_list = current_variables_list

    documentation_class.function_list.sort(key=lambda function: function.syntax)
    documentation_class.var_list.sort(key=lambda variable: variable.name)

    if documentation_class.new:
        new_classes.append(documentation_class)
    setclass(documentation_class,is_addon)

def parse_folder(root, base, files, is_addon=False, is_glm = False):
    file_count=0
    prefix = ""
    if root != base:
        prefix = os.path.relpath(root, base) + "_"
    for name in files:
        file_count+=1
        filename = os.path.join(root, name)
        if (name.find('of')==0 and os.path.splitext(name)[1]=='.h') or os.path.splitext(name)[1]=='.hpp':
            tu = clang_utils.get_tu_from_file(filename, of_root)
            num_functions = 0
            # filter so it only parses elements from this unit not includes
            def f(child): return str(child.location.file) == str(tu.spelling)
            for child in filter(f, tu.cursor.get_children()):
                if child.spelling.find("glm") != -1 and child.kind == CursorKind.NAMESPACE:
                    for ns_child in child.get_children():
                        if is_glm_class(ns_child):
                            i=0
                            for c in ns_child.get_children():
                                if is_variable(c) or is_method(c) or c.kind == CursorKind.CXX_BASE_SPECIFIER:
                                    i+=1
                            if i>0 and ns_child.spelling not in visited_classes:
                                serialize_class(ns_child, is_addon, "glm", substitute_glm_spelling(ns_child.spelling))
                                visited_classes.append(ns_child.spelling)

                        if is_function(ns_child):
                            num_functions+=1

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

            functions_fromcode = []
            functions_name = os.path.splitext(name)[0]
            functionsfile = getfunctionsfile(prefix + functions_name)
            if num_functions>0 and functions_name not in visited_function_files and functions_name != "ofMain":
                if is_glm:
                    for child in tu.cursor.get_children():
                        if child.spelling == "glm" and child.kind == CursorKind.NAMESPACE:
                            functions_fromcode += serialize_functionsfile(child, functionsfile, is_addon, str(tu.cursor.spelling), False, "glm")
                    if len(functions_fromcode) > 0:
                        visited_function_files.append(functions_name)
                else:
                    functions_fromcode = serialize_functionsfile(tu.cursor, functionsfile, is_addon)
                    visited_function_files.append(functions_name)


            # We need to do this check outside of serialize_functionsfile cause glm is calling it several times per function
            thisfile_missing_functions = []
            for function in functionsfile.function_list:
                if not function in functions_fromcode:
                    missing_functions.append(function)
                    thisfile_missing_functions.append(function)

            for function in thisfile_missing_functions:
                functionsfile.function_list.remove(function)

            functionsfile.function_list.sort(key=lambda function: function.syntax)
            if len(functionsfile.function_list)>0:
                setfunctionsfile(functionsfile, is_addon)
            else:
                remove_functionsfile(functionsfile, is_addon)


    return file_count

""" main """
dir_count=0
file_count=0
visited_classes = []
visited_function_files = []
missing_functions = []
missing_methods = []
missing_vars = []
new_classes = []
new_functions = []
new_vars = []
new_methods = []



for root, dirs, files in os.walk(glm_source):
    dir_count+=1
    file_count += parse_folder(root, glm_source, files, False, True)

for root, dirs, files in os.walk(of_source):
    dir_count+=1
    file_count += parse_folder(root, root, files, False)

# for root, dirs, files in os.walk(os.path.join(of_addons, "ofxAndroid", "src")):
#     dir_count += 1
#     file_count += parse_folder(root, files, True)

for addon in official_addons:
    addon_root = os.path.join(of_addons, addon, "src")
    for root, dirs, files in os.walk(addon_root):
        dir_count += 1
        file_count += parse_folder(root, addon_root, files, True)


if len(new_functions)>0:
    print ("added " + str(len(new_functions)) + " new functions:")
    for f in new_functions:
        print ("\t- " + f.returns + " " + f.name + "(" + f.parameters + ")  to " + f.functionsfile)

if len(missing_functions)>0:
    print ("removed " + str(len(missing_functions)) + " functions")
    for f in missing_functions:
        print ("\t- " + f.returns + " " + f.name + "(" + f.parameters + ")  from " + f.functionsfile)

if len(new_methods)>0:
    print ("added " + str(len(new_methods)) + " new methods:")
    for f in new_methods:
        print ("\t- " + f.returns + " " + f.name + "(" + f.parameters + ")  to " + f.clazz)

if len(missing_methods)>0:
    print ("removed " + str(len(missing_methods)) + " methods")
    for f in missing_methods:
        print ("\t- " + f.returns + " " + f.name + "(" + f.parameters + ")  from " + f.clazz)

if len(new_vars)>0:
    print ("added " + str(len(new_vars)) + " new vars:")
    for v in new_vars:
        print ("\t- " + v.name + "  to " + v.clazz)

if len(missing_vars)>0:
    print ("removed " + str(len(missing_vars)))
    for v in missing_vars:
        print ("\t- " + v.name + "  from " + v.clazz)
