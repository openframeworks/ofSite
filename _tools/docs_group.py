import docs_class
import docs_files

class DocsGroup:
    def __init__(self,groupid):
        self.id = groupid

    def classes(self):
        return self.class_list

    def functions(self):
        return self.function_list

def list_all(db,type,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM docs_group WHERE type=%s and advanced=%s and visible=1 ORDER BY sortid'
    cursor.execute(sql,(type,advanced,))
    groups=cursor.fetchall()
    groups_list = []
    for dbgroup in groups:
        group = DocsGroup(dbgroup[0])
        group.name = dbgroup[1]
        group.class_list = docs_files.list_all_classes(db,dbgroup[0],advanced)
        group.function_list = docs_files.list_all_functions(db,dbgroup[0],advanced)
        groups_list.append(group)
    return groups_list
