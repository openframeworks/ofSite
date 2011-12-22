import docs_class
from docs_class import DocsClass
import docs_function
from docs_function import DocsFunction

def names(db,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM docs_files WHERE advanced=%s'
    cursor.execute(sql,(advanced,))
    files=cursor.fetchall()
    return files
    
def list_all(db,groupid):
    cursor=db.cursor()
    sql='SELECT id,name,description FROM docs_files WHERE groupid=%s'
    cursor.execute(sql,(groupid,))
    files=cursor.fetchall()
    return files
    

def list_all_classes(db,groupid):
    cursor=db.cursor()
    sql='SELECT c.id,c.name,c.description,c.advanced,c.visible FROM docs_class c JOIN docs_files f WHERE c.fileid=f.id and f.groupid=%s ORDER BY f.sortid, c.sortid'
    cursor.execute(sql,(groupid))
    classes=cursor.fetchall()
    class_list = []
    for dbclass in classes:
        clazz = DocsClass(dbclass[0])
        clazz.name = dbclass[1]
        clazz.reference = dbclass[2]
        clazz.advanced = dbclass[3]
        clazz.visible = dbclass[4]
        #clazz.function_list = docs_function.list_all(db,dbclass[0])
        class_list.append(clazz)
    return class_list

def list_all_functions(db,groupid,advanced):
    cursor=db.cursor()
    sql='SELECT c.id,c.name FROM docs_functions c JOIN docs_files f WHERE c.linkid=f.id and f.groupid=%s and f.advanced=%s and c.advanced=%s and f.visible=1 and c.visible=1 and c.linktable="files" ORDER BY f.sortid, c.sortid'
    cursor.execute(sql,(groupid,advanced,advanced,))
    functions=cursor.fetchall()
    function_list = []
    for dbfunction in functions:
        function = DocsFunction(dbfunction[0])
        function.name = dbfunction[1]
        function_list.append(function)
    return function_list
