import MySQLdb
from documentation_function import DocsFunction

        
def tostr(string):
    if string is None:
        return ""
    else:
        return str(string)

def names(db,classid,linktable="class"):
    cursor=db.cursor()
    sql='SELECT name FROM documentation_functions WHERE linktable=%s and linkid= %s'
    cursor.execute(sql,(linktable,classid,))
    
    functions=cursor.fetchall()
    return functions
    
def list_all(db,linkid,linktable='class'):
    cursor=db.cursor()
    sql='SELECT id,name,description,returns,returns_description,parameters,syntax,version_started,version_deprecated,visible,advanced FROM documentation_functions WHERE linktable=%s and linkid= %s'
    cursor.execute(sql,(linktable,linkid,))
    dbfunctions = cursor.fetchall()
    functions = []
    for dbfunction in dbfunctions:
        function = DocsFunction(dbfunction[0])
        function.new = 0
        function.name = dbfunction[1]
        function.description = str(dbfunction[2]).replace('[code]','\n$$code(lang=c++)\n').replace('[/code]','\n$$/code\n') + "\n\n"
        if(dbfunction[3]==""):
            function.returns = "void"
        else:
            function.returns = tostr(dbfunction[3])
        function.returns_description = str(dbfunction[4]).replace('\n',' ')
        function.parameters = dbfunction[5].replace('<BR/>',', ').replace('<br/>',', ')
        function.syntax = dbfunction[6]
        if(dbfunction[7]==0 or dbfunction[7] is None):
            function.version_started = "006"
        else:
            function.version_started = tostr(dbfunction[7])
        if(dbfunction[8]==0 or dbfunction[8] is None):
            function.version_deprecated = ""
        else:
            function.version_deprecated = tostr(dbfunction[8])
        function.visible = dbfunction[9]
        function.advanced = dbfunction[10]
        
        functions.append(function)

    return functions
