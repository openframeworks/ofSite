#!/usr/bin/python

import os
import sys

sys.path.append('_tools')

import documentation_group
import dbtools_group
import dbtools_files
import dbtools_functions
import documentation_members
from documentation_function import DocsFunctionsFile, DocsFunction
import MySQLdb
import markdown_file


documentation_root = "/home/arturo/Documentos/new_of_site/_documentation"

#index = open(documentation_root + "/index.markdown",'w')
db = MySQLdb.connect(host='localhost',user='root',passwd='asdqwe34',db='of_site09')
adv_groups = dbtools_group.list_all(db,'core',True)

def export_functionsfiles(db,group_dir,group):
    dbfiles = dbtools_files.list_all(db,group.id)
    
    for dbfile in dbfiles:
        functions = dbtools_functions.list_all(db,dbfile[0],'files')
        if len(functions)>0:
            print dbfile[1]
            functionsfile = DocsFunctionsFile(dbfile[0])
            functionsfile.module = group.name
            functionsfile.name = dbfile[1]
            functionsfile.new = 0
            functionsfile.advanced = False
            functionsfile.visible = True
            functionsfile.description = dbfile[2]
            functionsfile.addons = False
            functionsfile.function_list = functions
            for function in functions:
                print "    " + function.name
            markdown_file.setfunctionsfile(functionsfile)

def export_groups(db,advanced):
    groups = dbtools_group.list_all(db,'core',advanced)
    for group in groups:
        print str(group.id) + " " + group.name
        group_dir = documentation_root + "/" + group.name.replace(' ','_')
        try:
            os.mkdir(group_dir)
        except:
            pass
        export_functionsfiles(db,group_dir,group)
        

export_groups(db,False)
export_groups(db,True)
#index.close()
