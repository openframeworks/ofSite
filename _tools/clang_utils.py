# This file provides common utility functions for the test suite.

import os
from clang.cindex import Cursor
from clang.cindex import Index
from clang.cindex import TranslationUnit
import subprocess

def get_tu(source, lang='c', all_warnings=False, flags=[]):
    """Obtain a translation unit from source and language.

    By default, the translation unit is created from source file "t.<ext>"
    where <ext> is the default file extension for the specified language. By
    default it is C, so "t.c" is the default file name.

    Supported languages are {c, cpp, objc}.

    all_warnings is a convenience argument to enable all compiler warnings.
    """
    args = list(flags)
    name = 't.c'
    if lang == 'cpp':
        name = 't.cpp'
        args.append('-std=c++11')
    elif lang == 'objc':
        name = 't.m'
    elif lang != 'c':
        raise Exception('Unknown language: %s' % lang)

    if all_warnings:
        args += ['-Wall', '-Wextra']

    return TranslationUnit.from_source(name, args, unsaved_files=[(name, source)])

def builtin_flags_gcc():
    subprocess.call(["touch","main.cpp"])
    p = subprocess.Popen(["clang","-E","-P","-v","-dD","-std=c++1y","-xc++","main.cpp"], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    state = "start"
    includes = ""
    for line in iter(p.stdout.read().splitlines()):
        if line=="#include <...> search starts here:":
            state = "includes"
            continue
        if state == "includes":
            if line == "End of search list.":
                print includes
                return includes
            else:
                includes += " -I"+line.strip()

gcc_includes = builtin_flags_gcc()

def get_tu_from_file(filepath, of_root):
    #f = open(filepath)
    #content = f.read()
    #filename = os.path.basename(filepath)
    #files = [(filename,content)]
    args = ("-Wall -std=c++14 -DGCC_HAS_REGEX -DOF_USING_GTK -DOF_USING_GTK -DOF_USING_MPG123 -D_REENTRANT -pthread -xc++ " + gcc_includes + " -I/usr/include/gstreamer-1.0 -I/usr/lib/x86_64-linux-gnu/gstreamer-1.0/include -I/usr/include/AL -I/usr/include/alsa -I/usr/include/GL -I/usr/include/libdrm -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/mirclient -I/usr/include/mircommon -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng12 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng12 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I{OF_ROOT}/libs/cpp-netlib/include -I{OF_ROOT}/libs/cpp-netlib/include/cpp-netlib -I{OF_ROOT}/libs/cpp-netlib/include/cpp-netlib/network -I{OF_ROOT}/libs/fmodex/include -I{OF_ROOT}/libs/glfw/include -I{OF_ROOT}/libs/glfw/include/GLFW -I{OF_ROOT}/libs/kiss/include -I{OF_ROOT}/libs/poco/include -I{OF_ROOT}/libs/sndfile/include -I{OF_ROOT}/libs/tess2/include -I{OF_ROOT}/libs/utf8cpp/include -I{OF_ROOT}/libs/utf8cpp/include/utf8 -I{OF_ROOT}/libs/openFrameworks -I{OF_ROOT}/libs/openFrameworks/build -I{OF_ROOT}/libs/openFrameworks/utils -I{OF_ROOT}/libs/openFrameworks/communication -I{OF_ROOT}/libs/openFrameworks/app -I{OF_ROOT}/libs/openFrameworks/events -I{OF_ROOT}/libs/openFrameworks/graphics -I{OF_ROOT}/libs/openFrameworks/math -I{OF_ROOT}/libs/openFrameworks/types -I{OF_ROOT}/libs/openFrameworks/sound -I{OF_ROOT}/libs/openFrameworks/gl -I{OF_ROOT}/libs/openFrameworks/3d -I{OF_ROOT}/libs/openFrameworks/video -DDEBUG").format({"OF_ROOT": of_root}).split(" ")
    index = Index.create()
    tu = index.parse(filepath, args=args,
            options=TranslationUnit.PARSE_DETAILED_PROCESSING_RECORD)
    return tu
    
def get_cursor(source, spelling):
    """Obtain a cursor from a source object.

    This provides a convenient search mechanism to find a cursor with specific
    spelling within a source. The first argument can be either a
    TranslationUnit or Cursor instance.

    If the cursor is not found, None is returned.
    """
    # Convenience for calling on a TU.
    root_cursor = source if isinstance(source, Cursor) else source.cursor

    for cursor in root_cursor.walk_preorder():
        if cursor.spelling == spelling:
            return cursor

    return None

def get_cursors(source, spelling):
    """Obtain all cursors from a source object with a specific spelling.

    This provides a convenient search mechanism to find all cursors with
    specific spelling within a source. The first argument can be either a
    TranslationUnit or Cursor instance.

    If no cursors are found, an empty list is returned.
    """
    # Convenience for calling on a TU.
    root_cursor = source if isinstance(source, Cursor) else source.cursor

    cursors = []
    for cursor in root_cursor.walk_preorder():
        if cursor.spelling == spelling:
            cursors.append(cursor)

    return cursors


__all__ = [
    'get_cursor',
    'get_cursors',
    'get_tu',
]
