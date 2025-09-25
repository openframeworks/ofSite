from asciidocapi import AsciiDocAPI
import logging
import StringIO

config = {
    'name': "Asciidoc",
    'description': "Renders asciidoc formatted text to HTML",
    'aliases': ['asciidoc']
    }


#Markdown logging is noisy, pot it down:
logging.getLogger("ASCIIDOC").setLevel(logging.ERROR)


def run(content):
    infile = StringIO.StringIO(content)
    outfile = StringIO.StringIO()
    asciidoc = AsciiDocAPI()
    asciidoc.options('--no-header-footer')
    asciidoc.execute(infile, outfile, backend='html4')
    return outfile.getvalue()
