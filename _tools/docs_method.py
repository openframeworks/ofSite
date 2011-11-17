class DocsMethod:
    def __init__(self,functionid):
        self.id = functionid
        self.new = 0
        self.name = ""
        self.description = ""
        self.returns = ""
        self.parameters = ""
        self.syntax = ""

def names(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM docs_method WHERE linktable="class" and linkid= %s and advanced=%s'
    cursor.execute(sql,(classid,advanced))
    functions=cursor.fetchall()
    return functions

def list_all(db,classid,advanced):
    cursor=db.cursor()
    sql='SELECT id,name,new,returns,parameters,description,syntax FROM docs_method WHERE classid=%s and advanced=%s and visible=1 ORDER BY sortid'
    cursor.execute(sql,(classid,advanced,))
    functions=cursor.fetchall()
    function_list = []
    for dbfunction in functions:
        function = DocsMethod(dbfunction[0])
        function.name = dbfunction[1]
        function.new = 1
        if(dbfunction[3]==""):
            function.returns = "void"
        elif(dbfunction[3] is None):
            function.returns = ""
        else:
            function.returns = dbfunction[3]
        function.parameters = dbfunction[4]
        function.description = dbfunction[5]
        function.syntax = dbfunction[6]
        function_list.append(function)
    return function_list
