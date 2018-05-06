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
    # print(p.stdout.read().splitlines())
    for line in iter(p.stdout.read().splitlines()):
        if line==b"#include <...> search starts here:":
            state = "includes"
            continue
        if state == "includes":
            if line == b"End of search list.":
                return includes
            else:
                includes += " -I" + line.strip().decode("utf-8")

gcc_includes = builtin_flags_gcc()

def get_tu_from_file(filepath, of_root):
    #f = open(filepath)
    #content = f.read()
    #filename = os.path.basename(filepath)
    #files = [(filename,content)]
    argsstr = "-xc++ -Wall -Werror=return-type -std=c++14 -DGCC_HAS_REGEX -DOF_USING_GTK -DOF_USING_GTK -DOF_USING_MPG123 -pthread -D_REENTRANT "
    argsstr = argsstr + gcc_includes
    argsstr = argsstr + " -I/usr/include/gstreamer-1.0"
    argsstr = argsstr + " -I/usr/lib/x86_64-linux-gnu/gstreamer-1.0/include"
    argsstr = argsstr + " -I/usr/include/AL"
    argsstr = argsstr + " -I/usr/include/alsa"
    argsstr = argsstr + " -I/usr/include/GL"
    argsstr = argsstr + " -I/usr/include/libdrm"
    argsstr = argsstr + " -I/usr/include/gtk-3.0"
    argsstr = argsstr + " -I/usr/include/at-spi2-atk/2.0"
    argsstr = argsstr + " -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0"
    argsstr = argsstr + " -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0"
    argsstr = argsstr + " -I/usr/include/gio-unix-2.0/"
    argsstr = argsstr + " -I/usr/include/mirclient"
    argsstr = argsstr + " -I/usr/include/mircommon"
    argsstr = argsstr + " -I/usr/include/cairo"
    argsstr = argsstr + " -I/usr/include/pango-1.0"
    argsstr = argsstr + " -I/usr/include/harfbuzz"
    argsstr = argsstr + " -I/usr/include/pango-1.0"
    argsstr = argsstr + " -I/usr/include/atk-1.0"
    argsstr = argsstr + " -I/usr/include/cairo"
    argsstr = argsstr + " -I/usr/include/pixman-1"
    argsstr = argsstr + " -I/usr/include/freetype2"
    argsstr = argsstr + " -I/usr/include/libpng12"
    argsstr = argsstr + " -I/usr/include/gdk-pixbuf-2.0"
    argsstr = argsstr + " -I/usr/include/libpng12"
    argsstr = argsstr + " -I/usr/include/glib-2.0"
    argsstr = argsstr + " -I/usr/lib/x86_64-linux-gnu/glib-2.0/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/fmodex/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/glfw/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/glfw/include/GLFW"
    argsstr = argsstr + " -I{OF_ROOT}/libs/kiss/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/curl/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/sndfile/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/tess2/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/utf8cpp/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/utf8cpp/include/utf8"
    argsstr = argsstr + " -I{OF_ROOT}/libs/glm/include"
    argsstr = argsstr + " -I{OF_ROOT}/libs/glm/include/glm"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/utils"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/communication"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/app"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/events"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/graphics"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/math"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/types"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/sound"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/gl"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/3d"
    argsstr = argsstr + " -I{OF_ROOT}/libs/openFrameworks/video"
    # argsstr = argsstr + " -I{NDK_ROOT}/sysroot/usr/include/"
    # argsstr = argsstr.format(OF_ROOT = of_root, NDK_ROOT = "/home/arturo/Code/android-ndk-r15c")
    argsstr = argsstr.format(OF_ROOT = of_root)
    # argsstr = argsstr + "-I/usr/include/gstreamer-1.0 -I/usr/include/orc-0.4 -I/usr/include/gstreamer-1.0 -I/usr/include/AL -I/usr/include/x86_64-linux-gnu -I/usr/include/rtaudio -I/usr/include/alsa -I/usr/include/libdrm -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib/x86_64-linux-gnu/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/freetype2 -I/usr/include/libpng16 -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng16 -I/usr/include/glib-2.0 -I/usr/lib/x86_64-linux-gnu/glib-2.0/include -I/home/arturo/Code/openFrameworks/libs/fmodex/include -I/home/arturo/Code/openFrameworks/libs/glm/include -I/home/arturo/Code/openFrameworks/libs/glm/include/glm -I/home/arturo/Code/openFrameworks/libs/glm/include/glm/detail -I/home/arturo/Code/openFrameworks/libs/glm/include/glm/gtx -I/home/arturo/Code/openFrameworks/libs/glm/include/glm/simd -I/home/arturo/Code/openFrameworks/libs/glm/include/glm/gtc -I/home/arturo/Code/openFrameworks/libs/json/include -I/home/arturo/Code/openFrameworks/libs/kiss/include -I/home/arturo/Code/openFrameworks/libs/pugixml/include -I/home/arturo/Code/openFrameworks/libs/tess2/include -I/home/arturo/Code/openFrameworks/libs/utf8/include -I/home/arturo/Code/openFrameworks/libs/utf8/include/utf8 -I/home/arturo/Code/openFrameworks/libs/openFrameworks -I/home/arturo/Code/openFrameworks/libs/openFrameworks/utils -I/home/arturo/Code/openFrameworks/libs/openFrameworks/communication -I/home/arturo/Code/openFrameworks/libs/openFrameworks/video -I/home/arturo/Code/openFrameworks/libs/openFrameworks/events -I/home/arturo/Code/openFrameworks/libs/openFrameworks/sound -I/home/arturo/Code/openFrameworks/libs/openFrameworks/3d -I/home/arturo/Code/openFrameworks/libs/openFrameworks/graphics -I/home/arturo/Code/openFrameworks/libs/openFrameworks/app -I/home/arturo/Code/openFrameworks/libs/openFrameworks/gl -I/home/arturo/Code/openFrameworks/libs/openFrameworks/types -I/home/arturo/Code/openFrameworks/libs/openFrameworks/math"
    # argsstr = argsstr + " -I{NDK_ROOT}/sysroot/usr/include/"
    # argsstr = argsstr.format(NDK_ROOT = "/home/arturo/Code/android-ndk-r15c")
    args = argsstr.split(" ")
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
