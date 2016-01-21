import Levenshtein

class DocsMethod:
    def __init__(self,functionid):
        self.id = functionid
        self.new = 0
        self.name = ""
        self.clazz = ""
        self.description = ""
        self.inlined_description = ""
        self.returns = ""
        self.returns_description = ""
        self.parameters = ""
        self.syntax = ""

    def get_inlined_docs_similarity(self):
        return Levenshtein.ratio(self.inlined_description, self.description)
