"""HTMLTemplate - A fast, powerful, easy-to-use HTML templating system.

Copyright (C) 2004-2008 HAS

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
"""

__all__ = ['ParseError', 'Node', 'Template']

from HTMLParser import HTMLParser
from keyword import kwlist
import re, sys


#################################################
# SUPPORT
#################################################

def renderAtts(atts):
    # Renders an HTML tag's attributes from a list of name-value tuples.
    result = ''
    for name, value in atts:
        if value is None:
            result += ' ' + name
        elif '"' in value:
            result += " %s='%s'" % (name, value)
        else:
            result += ' %s="%s"' % (name, value)
    return result


def defaultEncoder(txt):
    # Used to HTML-encode value in 'node.content = value'.
    return txt.replace('&', '&amp;').replace(
            '<', '&lt;').replace('>', '&gt;').replace('"', '&quot;')

def defaultDecoder(txt):
    # Used to HTML-decode content in 'value = node.content'.
    return txt.replace('&quot;', '"').replace(
            '&lt;', '<').replace('&gt;', '>').replace('&amp;', '&')


#################################################
# TEMPLATE PARSER
#################################################

class ParseError(Exception):
    """A template parsing error."""
    pass


class ElementCollector:
    # Collects a node's type, name and content as it's parsed. 
    # When end of node is reached, the collected data is used
    # to construct a Template/Repeater/Container instance.

    def __init__(self, *args):
        self.nodeType, self.nodeName, self.tagName, self.atts, \
                self.isEmpty, self.omitTags, self.shouldDelete = args
        self.content = ['']
        self.elementNames = {}
        self.__depth = 1
    
    # Methods used to track nested tags of same tag name; used to locate
    # close tag that marks the end of this node.
    
    def incDepth(self):
        self.__depth += 1
        
    def decDepth(self):
        self.__depth -= 1
        
    def isComplete(self):
        return self.__depth < 1
    
    # Methods used to collect plain HTML and any sub-nodes.
    
    def addText(self, txt):
        self.content[-1] += txt
        
    def addElement(self, node, nodeType, nodeName):
        self.content.extend([node, ''])
        self.elementNames[nodeName] = nodeType


class Parser(HTMLParser):

    def unescape(self, s):
        # kludge: avoid HTMLParser's stupid mangling of attribute values
        return s
        
    # Handles parsing events sent by parseTemplate() as it processes
    # a template string. Collects data in ElementCollector instances, 
    # then converts these into Template/Repeater/Container objects
    # which it assembles into a finished object model. Stack-based.

    # Regular expressions used to match special tag attributes, 
    # a.k.a. template compiler directives, that indicate an HTML
    # element should be converted into a template node.
    __specialAttValuePattern = re.compile('(-)?(con|rep|sep|del):(.*)')
    __validNodeNamePattern = re.compile('[a-zA-Z][_a-zA-Z0-9]*')

    # List of words already used as property and method names,
    # so cannot be used as template node names as well:
    __invalidNodeNames = kwlist + [
            'content', 'raw', 'atts', 'omittags', 'omit', 'repeat', 'render']
    
    def __init__(self, attribute, encoder, decoder, warn):
        HTMLParser.__init__(self)
        self.__specialAttributeName = attribute
        self.__encoder = encoder
        self.__decoder = decoder
        self.__warn = warn
        # Each node's content is collected in an ElementCollector instance
        # that's stored in the __outputStack stack while it's being parsed. 
        # Once the end of the node is found, the ElementCollector's content
        # is used to create an instance of the appropriate node class, which
        # is then added to previous ElementCollector in the stack (i.e. the
        # collector for its parent node).
        self.__outputStack = [
                ElementCollector('tem', '', None, None, False, False, False)]
    
    def __isSpecialTag(self, atts, specialAttName):
        # Determines if any of an HTML tag's attributes are
        # compiler directives.
        for name, value in atts:
            if name == specialAttName:
                matchedValue = self.__specialAttValuePattern.match(value)
                if matchedValue:
                    atts = dict(atts)
                    del atts[specialAttName]
                    omitTags, nodeType, nodeName = matchedValue.groups()
                    return True, nodeType, nodeName, omitTags, atts
                elif self.__warn:
                   from warnings import warn
                   warn("Non-directive tag attribute found: %s=%r" 
                           % (name, value))
        return False, '', '', False, renderAtts(atts)
    
    def __startTag(self, tagName, atts, isEmpty):
        # Process an HTML tag that marks the start of an HTML element, 
        # i.e. <foo> or <foo/>. If the tag contains a compiler directive,
        # start collecting the element's content to be turned into a 
        # template node, otherwise reassemble it as regular HTML markup.
        node = self.__outputStack[-1]
        if node.shouldDelete:
            isSpecial = 0
        else:
            isSpecial, nodeType, nodeName, omitTags, atts = \
                    self.__isSpecialTag(atts, self. __specialAttributeName)
        if isSpecial:
            # Verify node name is legal, then process according to 
            # directive's type (con, rep, sep, del).
            if nodeType != 'del' and (
                    not self.__validNodeNamePattern.match(nodeName) 
                    or nodeName in self.__invalidNodeNames):
                raise ParseError, "Invalid node name: %r" % nodeName
            shouldDelete = nodeType == 'del'
            if node.elementNames.has_key(nodeName):
                if node.elementNames[nodeName] == nodeType:
                    shouldDelete = True
                elif nodeType != 'sep':
                    raise ParseError, ("Invalid node name: %s:%s " 
                            "(node %s:%s already found).") % (nodeType,  
                            nodeName, node.elementNames[nodeName], nodeName)
            self.__outputStack.append(ElementCollector(nodeType, nodeName, 
                    tagName, atts, isEmpty, omitTags, shouldDelete))
        else:
            if node.tagName == tagName:
                # Keep track of nested open tags of same name.
                node.incDepth()
            if not node.shouldDelete:
                if isEmpty:
                    endOfOpenTag = ' />'
                else:
                    endOfOpenTag = '>'
                node.addText('<' + tagName + atts + endOfOpenTag)
    
    def __hasCompletedElement(self, element, parent):
        # Called by __endTag when it finds the close tag that ends an HTML
        # element denoting a template node.
        if element.isEmpty:
            content = []
        else:
            content = element.content
        if element.nodeType in ['con', 'rep']:
            node = makeNode(
                    element.nodeType, element.nodeName, element.tagName, 
                    element.atts, content, self.__encoder, self.__decoder)
            if element.omitTags:
                node.omittags()
            parent.addElement(node, element.nodeType, element.nodeName)
        else: # element.nodeType == 'sep'
            # Add this separator to its repeater
            for node in parent.content[1::2]:
                if node._nodeName == element.nodeName:
                    if node._nodeType != 'rep':
                        raise ParseError, ("Can't process separator node "
                                "'sep:%s': repeater node 'rep:%s' wasn't "
                                "found. Found node '%s:%s' instead.") % (
                                element.nodeName, element.nodeName, 
                                element.nodeType, element.nodeName)
                    if element.omitTags:
                        if content:
                            node._sep = content[0]
                        else:
                            node._sep = ''
                    else:
                        if content:
                            node._sep = '<%s%s>%s</%s>' % (element.tagName, 
                                    renderAtts(element.atts.items()), # FIXED
                                    content[0], element.tagName)
                        else:
                            node._sep = '<%s%s />' % (element.tagName, 
                                    renderAtts(element.atts.items())) # FIXED
                    return
            raise ParseError, ("Can't process separator node 'sep:%s' in node "
                    "'%s:%s': repeater node 'rep:%s' wasn't found.") % (
                    element.nodeName, parent.nodeType, parent.nodeName, 
                    element.nodeName)
    
    def __endTag(self, tagName, isEmpty):
        # Process an end tag that closes an HTML element, i.e. </foo> or 
        # <foo/>. If the tag closes an HTML element representing a template
        # node, call __hasCompletedElement() to finish that node's creation.
        node = self.__outputStack[-1]
        if node.tagName == tagName:
            # Keep track of nested close tags of same name.
            node.decDepth()
        if node.isComplete():
            self.__outputStack.pop()
            if not node.shouldDelete:
                parent = self.__outputStack[-1]
                self.__hasCompletedElement(node, parent)
        elif not isEmpty:
            node.addText('</%s>' % tagName)

    def __addText(self, txt):
        self.__outputStack[-1].addText(txt)
    
    # event handlers; called by HTMLParser base class.

    def handle_startendtag(self, tagName, atts):
        self.__startTag(tagName, atts, True)
        self.__endTag(tagName, True)

    def handle_starttag(self, tagName, atts):
        self.__startTag(tagName, atts, False)

    def handle_endtag(self, tagName):
        self.__endTag(tagName, False)

    def handle_charref(self, txt):
        self.__addText('&#%s;' % txt)

    def handle_entityref(self, txt):
        self.__addText('&%s;' % txt)

    def handle_data(self, txt):
        self.__addText(txt)

    def handle_comment(self, txt):
        self.__addText('<!--%s-->' % txt)

    def handle_decl(self, txt):
        self.__addText('<!%s>' % txt)

    def handle_pi(self, txt):
        self.__addText('<?%s>' % txt)
    
    def result(self):
        # Get content of template's ElementCollector once parsing is done.
        element = self.__outputStack.pop()
        if element.nodeType != 'tem':
            raise ParseError, ("Can't complete template: node '%s:%s' wasn't "
                    "correctly closed.") % (element.nodeType, element.nodeName)
        #if len(element.content) == 1:
        #    raise ParseError, "No special %r attributes were found." % (
        #            self. __specialAttributeName)
        return element.content


#################################################
# OBJECT MODEL CLASSES
#################################################

# Note: HTMLTemplate implements its own performance-optimised object copying 
# system which is much faster than standard lib's general-purpose deepcopy().
# All cloning and rendering code is optimised for speed over grokability.

# To summarise, cloning and rendering involves bouncing between a template
# node's various base classes to perform the various steps of each operation
# with child nodes being processed recursively. When cloning, all child nodes
# are cloned as a single operation. When rendering, rather than wait until all
# processing is complete, Repeaters perform a mini-render of their content
# as soon as they finish rendering each clone of themselves. This reduces
# the number of template object instances that build up during rendering,
# reducing memory overheads, and is a bit faster than performing two separate
# traversals, one to call the template's Controller functions to insert 
# content, and another to traverse the (by now very large) template object
# model to extract the finished HTML. 

# Note that the one disadvantage of using incremental rendering is that it 
# makes it awkward for an asynchronous system to acquire new template objects 
# in advance and put them into storage for later processing. By the time the 
# system digs these nodes back out of storage and fills them in, their content
# has long since been rendered by some Repeater node, so any further changes
# will not appear in the final page. Should anyone ever need to use 
# HTMLTemplate in this fashion they can, of course, redesign the rendering
# system so that all nodes created remain viable until a final, separate 
# 'render everything' message is sent through the entire object model, but
# it'll obviously cost extra in both performance and memory overheads - 
# which is why it's not used as the standard operating model.

class CloneNode(object):
    """Makes cloned nodes."""
    def __init__(self, node):
        self.__dict__ = node.__dict__.copy()
        self.__class__ = node.__class__

# Node classes provide the basic functionality for a template node, with
# additional functionality being added by the Content classes. The Python
# implementation uses multiple inheritance to compose these behaviours;
# languages with native support for mixins or delegates may find those
# more appropriate (and easier for developers to follow).

class Node:
    """Abstract base class for template nodes; used for type checking when 
       user replaces an existing template node with a new one.
    """
    pass

class Container(Node):
    """A Container node has a one-to-one relationship with the node 
       that contains it.
    """
    
    _nodeType = 'con'
    
    def __init__(self, nodeName, tagName, atts):
        self._nodeName = nodeName
        self._atts = dict(atts) # On cloning, shallow copy this dict.
        if isinstance(self, NullContent):
            self.__startTag = '<%s%%s />' % tagName
            self.__endTag = ''
        else:
            self.__startTag = '<%s%%s>' % tagName
            self.__endTag = '</%s>' % tagName
        self.__omitTags = False
        self._omit = False
    
    def _clone(self):
        clone = CloneNode(self)
        clone._atts = self._atts.copy()
        return clone
    
    def _renderNode(self, collector):
        # Adds node's content to supplied collector list. Tags are added
        # here; PlainContent/RichContent's _renderContent() adds content.
        if self.__omitTags:
            self._renderContent(collector)
        else:
            collector.append(self.__startTag % renderAtts(self._atts.items()))
            self._renderContent(collector)
            collector.append(self.__endTag)

    def _render(self, collector):
        # Called by parent node to render this node and all its contents.
        if not self._omit:
            self._renderNode(collector)
    
    def __attsGet(self):
        return Attributes(self._atts, self._encode, self._decode)
    
    def __attsSet(self, val):
        self._atts = {}
        atts = Attributes(self._atts, self._encode, self._decode)
        for name, value in val.items():
            atts[name] = value
    
    atts = property(__attsGet, __attsSet, 
            doc="Get this element's tag attributes.")
    
    def omittags(self):
        """Don't render this element's tag(s)."""
        self.__omitTags = True
    
    def omit(self):
        """Don't render this element."""
        self._omit = True


class Repeater(Container):
    """A Repeater node has a one-to-many relationship with the node
       that contains it.
    """
    
    _nodeType = 'rep'
    
    def __init__(self, nodeName, tagName, atts):
        self._sep = '\n'
        self.__renderedContent = [] # On cloning, shallow-copy this list.
        Container.__init__(self, nodeName, tagName, atts)
        
    _fastClone = Container._clone
    
    def _clone(self):
        clone = Container._clone(self)
        clone.__renderedContent = self.__renderedContent[:]
        return clone
    
    def _render(self, collector):
        # Called by parent node to render this node and all its contents.
        if not self._omit:
            collector.extend(self.__renderedContent[1:])
    
    def repeat(self, fn, list, *args):
        """Render an instance of this node for each item in list."""
        self.__renderedContent = collector = [] # replaces any previous content
        # For each item in list, copy this node and pass it and the list item 
        # to the supplied callback function. Once the function has finished
        # inserting data into the cloned node, perform a mini-render of its
        # content and add the result to self.__renderedContent - where it will
        # remain until the original node is finally rendered by its parent.
        for item in list:
            clone = self._fastClone()
            fn(clone, item, *args)
            if not clone._omit:
                collector.append(clone._sep)
                clone._renderNode(collector)

##

class Attributes:
    """Public facade for modifying a node's tag attributes. Behaves like
       a much simplified dict object. Vended by Node's atts property.
    """
    
    __attNamePattern = re.compile('^[a-zA-Z_][-.:a-zA-Z_0-9]*$')
    
    def __init__(self, atts, encoder, decoder):
        self.__atts = atts # The Node's tag attributes dict.
        self.__encode = encoder
        self.__decode = decoder
    
    def __getitem__(self, name):
        return self.__decode(self.__atts[name])
        
    def __setitem__(self, name, val):
        try:
            if not self.__attNamePattern.match(name): # Note: this 
            # will throw a TypeError if 'name' is not string/unicode.
                raise KeyError, "bad name."
            if val != None:
                if not isinstance(val, basestring):
                    raise TypeError, "bad value: %r" % val
                val = self.__encode(val)
                if '"' in val and "'" in val:
                    raise ValueError, "value %r contains " \
                            "both single and double quotes." % val
            self.__atts[name] = val
        except Exception, e:
            msg = str(e)
            if not isinstance(name, basestring):
                msg = "bad name."
            raise e.__class__, "Can't set tag attribute %r: %s" % (name, msg)
        
    def __delitem__(self, name):
        del self.__atts[name]
    
    def __repr__(self):
        return '<Attributes [%s]>' % renderAtts(self.__atts.items())[1:]


#######

# Content classes provide nodes representing non-empty HTML elements with
# support for containing plain HTML content/sub-nodes.

class Content(object):
    def __init__(self, encoder, decoder):
        self._encode = encoder
        self._decode = decoder
    
    def _printStructure(self, indent):
        print >> sys.stderr, indent + self._nodeType + ':' + self._nodeName

##

class NullContent(Content):
    """Represents an empty HTML element's non-existent content."""
    
    def _renderContent(self, collector):
        pass


class PlainContent(Content):
    """Represents a non-empty HTML element's content where it contains plain 
       text/markup only.
    """
    
    def __init__(self, content, encoder, decoder):
        Content.__init__(self, encoder, decoder)
        self.raw = content # Get/Set this element's content as raw markup;
        # use with care.
        
    def _renderContent(self, collector):
        # Called by Node classes to add HTML element's content.
        collector.append(self.raw)
    
    def __contentGet(self):
        return self._decode(self.raw)
    
    def __contentSet(self, txt):
        self.raw = self._encode(txt)
    
    content = property(__contentGet, __contentSet, 
            doc="Get/Set this element's content as escaped text.")


class RichContent(Content):
    """Represents a non-empty HTML element's content where it contains other 
       Container/Repeater nodes.
    """
    
    __validIdentifierPattern = re.compile('^[a-zA-Z_][a-zA-Z_0-9]*$')
    
    # KLUDGE: The following line keeps Python 2.3 sweet while it instantiates 
    # instances of this class; without it, the process crashes hard as 
    # __init__ conflicts with __setattr__.
    __nodesDict = {}
    
    def __init__(self, content, encoder, decoder):
        Content.__init__(self, encoder, decoder)
        self.__nodesList = content # On cloning, deep copy this list.
        self.__nodesDict = dict(
                [(node._nodeName, node) for node in content[1::2]]) # (On clon-
        # ing: replace with a new dict built from cloned self.__nodesList.)
    
    def __rawGet(self):
        if self.__nodesDict:
            raise RuntimeError, ("Can't get raw/content of a node that "
                    "contains other nodes.")
        else:
            return self.__nodesList[0]
    
    # Note: property setting is done by __setattr__(), which takes precedence
    # over property-based setters for some reason.
    
    raw = property(__rawGet, 
            doc="Get/Set this element's raw content.")
    
    content = property(lambda self:self._decode(self.__rawGet()),
            doc="Get/Set this element's content as escaped text.")
    
    def _initRichClone(self, clone):
        # Once node is cloned, this is called to clone its sub-nodes.
        clone.__nodesDict = {}
        L = clone.__nodesList = self.__nodesList[:]
        for i in range(1, len(L), 2):
            clone.__nodesDict[L[i]._nodeName] = L[i] = L[i]._clone()
        return clone
    
    def _renderContent(self, collector):
        # Called by Node classes to add HTML element's content.
        L = self.__nodesList
        collector.append(L[0])
        for i in range(1, len(L), 2):
            L[i]._render(collector)
            collector.append(L[i + 1])
    
    def _printStructure(self, indent):
        Content._printStructure(self, indent)
        for node in self.__nodesList[1::2]:
            node._printStructure(indent + '\t')
    
    def __getattr__(self, name):
        # Get a sub-node.
        if self.__nodesDict.has_key(name):
            return self.__nodesDict[name]
        else:
            raise AttributeError , "%s instance has no attribute %r." % (
                    self.__class__.__name__, name)
    
    def __setattr__(self, name, value):
        # Replace a sub-node, or replace node's content.
        if self.__nodesDict.has_key(name):
            if not isinstance(value, Node):
                # Note: This type check is to catch careless user mistakes like
                # 'node.foo = "text"' instead of  'node.foo.content = "text"'
                raise TypeError, ("Can't replace node '%s:%s': value isn't a "
                        "Node object.") % (self.__nodesDict[name]._nodeType,
                         self.__nodesDict[name]._nodeName)
            value = value._clone() 
            value._nodeName = name
            idx = self.__nodesList.index(self.__nodesDict[name])
            self.__nodesDict[name] = self.__nodesList[idx] = value
        elif name == 'content':
            self.__nodesList = [self._encode(value)]
            self.__nodesDict = {}
        elif name == 'raw':
            self.__nodesList = [value]
            self.__nodesDict = {}
        else:
            self.__dict__[name] = value


#######
# Note: Container and Repeater objects are instantiated via the makeNode()
# constructor function. This returns the appropriate class for the content 
# supplied ('abstract factory'). Container and Repeater nodes are actually
# represented by three different classes apiece, depending on whether they
# represent empty or non-empty HTML elements and, in the case of the latter,
# whether or not they contain any sub-nodes. The documentation glosses over
# these details for simplicity, since the user doesn't need to know the
# exact class of a node in order to use it.

class EmptyContainer(NullContent, Container):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        NullContent.__init__(self, encoder, decoder)
        Container.__init__(self, nodeName, tagName, atts)


class PlainContainer(PlainContent, Container):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        PlainContent.__init__(self, content[0], encoder, decoder)
        Container.__init__(self, nodeName, tagName, atts)


class RichContainer(RichContent, Container):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        RichContent.__init__(self, content, encoder, decoder)
        Container.__init__(self, nodeName, tagName, atts)
        
    def _clone(self):
        return self._initRichClone(Container._clone(self))

##

class EmptyRepeater(NullContent, Repeater):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        NullContent.__init__(self, encoder, decoder)
        Repeater.__init__(self, nodeName, tagName, atts)


class PlainRepeater(PlainContent, Repeater):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        PlainContent.__init__(self, content[0], encoder, decoder)
        Repeater.__init__(self, nodeName, tagName, atts)


class RichRepeater(RichContent, Repeater):
    def __init__(self, nodeName, tagName, atts, content, encoder, decoder):
        RichContent.__init__(self, content, encoder, decoder)
        Repeater.__init__(self, nodeName, tagName, atts)
        
    def _clone(self):
        return self._initRichClone(Repeater._clone(self))
        
    def _fastClone(self):
        return self._initRichClone(Repeater._fastClone(self))

##

__nodeClasses = {
        'con': {'empty': EmptyContainer, 
                'plain': PlainContainer, 
                'rich': RichContainer},
        'rep': {'empty': EmptyRepeater, 
                'plain': PlainRepeater, 
                'rich': RichRepeater}}

def makeNode(nodeType, nodeName, tagName, atts, content, encoder, decoder):
    # Called by template parser.
    return __nodeClasses[nodeType][{0: 'empty', 1: 'plain'}.get(len(content), 
            'rich')](nodeName, tagName, atts, content, encoder, decoder)


#################################################
# MAIN
#################################################

class Template(RichContent):
    """The top-level (i.e. root) node of the template object model."""
    
    _nodeType = 'tem'
    _nodeName = ''
    
    def __init__(self, callback, html, attribute='node', 
            codecs=(defaultEncoder, defaultDecoder), warnings=False):
        """
            callback : function -- the function that controls how this
                    template is rendered
            html : string or unicode -- the template HTML
            [attribute : string or unicode] -- name of the tag attribute used
                    to hold compiler directives
            [codecs : tuple] -- a tuple containing two functions used by the 
                    content property to encode/decode HTML entities
            [warnings : boolean] -- warn when non-directive attribute
                    is encountered
        """
        self.__callback = callback
        parser = Parser(attribute, codecs[0], codecs[1], warnings)
        parser.feed(html)
        parser.close()
        RichContent.__init__(self, parser.result(), *codecs)
    
    def render(self, *args, **kwargs):
        """Render this template; *args will be passed directly to the template.
        """
        clone = self._initRichClone(CloneNode(self))
        self.__callback(clone, *args, **kwargs)
        collector = []
        clone._renderContent(collector)
        try: # quick-n-dirty error reporting; not a real substitute for type-
            # checking for bad value assignments at point of origin, but cheap
            return ''.join(collector)
        except TypeError:
            raise TypeError, ("Can't render template: some node's content was "
                    "set to a non-text value.")

    def structure(self):
        """Print the object model's structure for diagnostic use."""
        print >> sys.stderr, '-' * 80
        self._printStructure('')
        print >> sys.stderr, '-' * 80

