import docs_class
import docs_files

class DocsGroup:
    def __init__(self,groupid):
        self.id = groupid

    def classes(self):
        return self.class_list

    def functions(self):
        return self.function_list

