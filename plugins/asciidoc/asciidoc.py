# -*- coding: utf-8 -*-

# Copyright © 2012-2014 Roberto Alsina and others.

# Permission is hereby granted, free of charge, to any
# person obtaining a copy of this software and associated
# documentation files (the "Software"), to deal in the
# Software without restriction, including without limitation
# the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the
# Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice
# shall be included in all copies or substantial portions of
# the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY
# KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
# PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
# OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
# OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
# OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

"""Implementation of compile_html based on asciidoc.

You will need, of course, to install asciidoc

"""

import io
import os
import shlex
import subprocess

from nikola.plugin_categories import PageCompiler
from nikola.utils import makedirs, write_metadata

try:
    from collections import OrderedDict
except ImportError:
    OrderedDict = dict  # NOQA


class CompileAsciiDoc(PageCompiler):
    """Compile asciidoc into HTML."""

    name = "asciidoc"
    demote_headers = True

    def compile_string(self, data, source_path=None, is_two_file=True, post=None, lang=None):
        """Compile asciidoc into HTML strings."""
        binary = self.site.config.get('ASCIIDOC_BINARY', 'asciidoc')
        options = self.site.config.get('ASCIIDOC_OPTIONS', '')
        options = shlex.split(options)
        command = [binary, '-b', 'html5', '-s'] + options + ['-']
        if not is_two_file:
            m_data, data = self.split_metadata(data, post, lang)

        from nikola import shortcodes as sc
        new_data, shortcodes = sc.extract_shortcodes(data)
        p = subprocess.Popen(command, stdin=subprocess.PIPE, stdout=subprocess.PIPE)
        output = p.communicate(input=new_data.encode('utf8'))[0].decode('utf8')
        output, shortcode_deps = self.site.apply_shortcodes_uuid(output, shortcodes, filename=source_path, extra_context={'post': post})
        return output, p.returncode, [], shortcode_deps

    def compile(self, source, dest, is_two_file=True, post=None, lang=None):
        """Compile the source file into HTML and save as dest."""
        makedirs(os.path.dirname(dest))
        with io.open(dest, "w+", encoding="utf8") as out_file:
            with io.open(source, "r", encoding="utf8") as in_file:
                data = in_file.read()
                output, error_level, deps, shortcode_deps = self.compile_string(data, source, is_two_file, post, lang)
                out_file.write(output)
            if post is None:
                if deps.list:
                    self.logger.error(
                        "Cannot save dependencies for post {0} (post unknown)",
                        source)
            else:
                post._depfile[dest] += shortcode_deps
        if error_level == 0:
            return True
        else:
            return False

    def create_post(self, path, **kw):
        """Create a new post."""
        content = kw.pop('content', None)
        onefile = kw.pop('onefile', False)
        # is_page is not used by create_post as of now.
        kw.pop('is_page', False)
        metadata = {}
        metadata.update(self.default_metadata)
        metadata.update(kw)
        makedirs(os.path.dirname(path))
        if not content.endswith('\n'):
            content += '\n'
        with io.open(path, "w+", encoding="utf8") as fd:
            if onefile:
                fd.write(write_metadata(metadata, comment_wrap=('///', '///'), site=self.site, compiler=self))
            fd.write(content)
