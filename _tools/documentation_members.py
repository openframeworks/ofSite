import Levenshtein

class DocsMethod:
    def __init__(self,functionid):
        self.id = functionid
        self.new = 0
        self.name = ""
        self.description = ""
        self.returns = ""
        self.returns_description = ""
        self.inlined_description = ""
        self.parameters = ""
        self.syntax = ""
        self.access = ""
        self.summary = ""
        self.version_started = ""
        self.version_deprecated = ""
        self.constant = False
        self.static = False
        self.visible = True
        self.advanced = False
        self.clazz = ""
        self.linenum = 0
        self.file = ""

    def get_inlined_docs_similarity(self):
        return Levenshtein.ratio(self.inlined_description, self.description)

class DocsVar:
    def __init__(self,functionid):
        self.id = functionid
        self.name = ""
        self.type = ""
        self.summary = ""
        self.description = ""
        self.inlined_description = ""
        self.access = ""
        self.version_started = ""
        self.version_deprecated = ""
        self.constant = False
        self.visible = True
        self.advanced = False
        self.static = False
        self.clazz = ""
        self.linenum = 0
        self.file = ""
        
    def get_inlined_docs_similarity(self):
        return Levenshtein.ratio(self.inlined_description, self.description)

