from documentation_group import DocsGroup
import dbtools_files

def list_all(db,type,advanced):
    cursor=db.cursor()
    sql='SELECT id,name FROM documentation_group WHERE type=%s and advanced=%s and visible=1 ORDER BY sortid'
    cursor.execute(sql,(type,advanced,))
    groups=cursor.fetchall()
    groups_list = []
    for dbgroup in groups:
        group = DocsGroup(dbgroup[0])
        group.name = dbgroup[1]
        group.class_list = dbtools_files.list_all_classes(db,dbgroup[0])
        group.function_list = dbtools_files.list_all_functions(db,dbgroup[0],advanced)
        groups_list.append(group)
    return groups_list
