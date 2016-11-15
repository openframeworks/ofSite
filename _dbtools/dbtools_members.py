        
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

def list_all_methods(db,classid):
    cursor=db.cursor()
    sql='SELECT id,name,returns,parameters,description,syntax,returns_description,access,version_started,version_deprecated,extra_description,visible,advanced FROM documentation_functions WHERE  linktable="class" and linkid=%s ORDER BY sortid'
    cursor.execute(sql,(classid,))
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
        function.description = tostr(dbfunction[4]) + "\n\n" + tostr(dbfunction[10])
        function.syntax = tostr(dbfunction[5])
        function.returns_description = tostr(dbfunction[6])
        function.access = tostr(dbfunction[7])
        if(dbfunction[8]==0 or dbfunction[8] is None):
            function.version_started = "006"
        else:
            function.version_started = tostr(dbfunction[8])
        if(dbfunction[9]==0 or dbfunction[9] is None):
            function.version_deprecated = ""
        else:
            function.version_deprecated = tostr(dbfunction[9])
        function.visible = tostr(dbfunction[11])
        function.advanced = tostr(dbfunction[12])
        function_list.append(function)
    return function_list
    
def list_all_vars(db,classid):
    cursor=db.cursor()
    sql='SELECT id,name,type,description,access,version_started,version_deprecated,constant,visible,advanced FROM documentation_vars WHERE  linktable="class" and linkid=%s ORDER BY sortid'
    cursor.execute(sql,(classid,))
    variables=cursor.fetchall()
    variables_list = []
    for dbvar in variables:
        var = DocsVar(dbvar[0])
        var.name = tostr(dbvar[1])
        var.type = tostr(dbvar[2])
        var.description = tostr(dbvar[3])
        var.access = tostr(dbvar[4])
        if(dbvar[5]==0 or dbvar[5] is None):
            var.version_started = "006"
        else:
            var.version_started = tostr(dbvar[5])
        if(dbvar[6]==0 or dbvar[6] is None):
            var.version_deprecated = ""
        else:
            var.version_deprecated = tostr(dbvar[6])
        var.constant = tostr(dbvar[7])
        var.visible = tostr(dbvar[8])
        var.advanced = tostr(dbvar[9])
        variables_list.append(var)
    return variables_list
    
    
