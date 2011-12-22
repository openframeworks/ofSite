        
def tostr(string):
    if string is None:
        return ""
    else:
        return str(string)

def names(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM documentation_functions WHERE linktable="class" and linkid= %s and advanced=%s'
    cursor.execute(sql,(classid,advanced))
    functions=cursor.fetchall()
    return functions

def list_all(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name,returns,parameters,description,syntax,returns_description,extra_description FROM documentation_functions WHERE  linktable="class" and linkid=%s and advanced=%s ORDER BY sortid'
    cursor.execute(sql,(classid,advanced,))
    functions=cursor.fetchall()
    function_list = []
    for dbfunction in functions:
        function = DocsMethod(dbfunction[0])
        function.name = tostr(dbfunction[1])
        if(dbfunction[2]==""):
            function.returns = "void"
        else:
            function.returns = tostr(dbfunction[2])
        function.parameters = tostr(dbfunction[3])
        function.description = tostr(dbfunction[4]) + "\n\n" + tostr(dbfunction[7])
        function.syntax = dbfunction[5]
        function.returns_description = tostr(dbfunction[6])
        function_list.append(function)
    return function_list
