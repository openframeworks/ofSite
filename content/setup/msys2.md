## -*- coding: utf-8 -*-
.. title: msys2

[openFrameworks](/) | [Documentation table of contents](table_of_contents.md)

msys2
=====

Installing MSYS2
----------------

Download link and instructionss can be found on the [MSYS2 web site](https://www.msys2.org/).
[Several installers](https://www.msys2.org/docs/installer/) (self extracting archive, XZ archive) are available; any will work with openFrameworks.

If you are going to use QtCreator, you should install MSYS2 in the default install folder, c:\msys64


Updating MSYS2
--------------

openFrameworks expects an up-to-date installation of MSYS2. As MSYS2 is a rolling-release distribution, even the latest installer may be out-of-date!

To update your MSYS2 installation, from any MSYS2 shell (MSYS2, UCRT64, CLANG64, ...), run :

```sh
pacman -Syu --noconfirm --needed
```

Depending on the packages to be updated, you may need to close the shell and run the previous command again.

If your installation hasn't been updated in a few months, you may encounter additional problems.
Instructions on the [Updating MSYS2 page](https://www.msys2.org/docs/updating/) may help solve them.

You are now ready to install openFrameworks.


Installing openFrameworks
-------------------------

**IMPORTANT**
MSYS2 comes in many flavors : MSYS2 (msys2.exe), MINGW32 (mingw32.exe), MINGW64 (mingw64.exe), CLANG32 (clang32.exe), CLANG64 (clang64.exe), CLANGARM64 (clangarm64.exe) and UCRT64 (ucrt64.exe).
Each flavor has its shell launcher in MSYS2 installation folder.
This really important to remember as lots of problem with running openFrameworks with MSYS2 come from using the wrong flavor/shell.

openFrameworks supports:

- **UCRT64** (`ucrt64.exe`), recommended, GCC
- **CLANG64** (`clang64.exe`), Clang
- **CLANGARM64** (`clangarm64.exe`), Clang, for Windows on ARM

**MINGW64** and **MINGW32** are no longer supported (openFrameworks 0.12.2 and later): MSYS2 is retiring them, and packages openFrameworks needs (rtaudio) are no longer built for them.

The instructions below use UCRT64. For CLANG64 / CLANGARM64, use `clang64` / `clangarm64` instead of `ucrt64`.

For the following instructions, it assumed that MSYS2 is installed in `C:\msys64`. 
If it has been installed elsewhere, adapt the instructions to reflect your MSYS2 installation path.

Download and unzip the openFrameworks package for your flavor: `msys2_ucrt64`, `msys2_clang64` or `msys2_clangarm64`. 
**DO NOT INSTALL** oF in a folder containing a space or other special characters.

Open a **UCRT64** shell (`C:\msys64\ucrt64.exe` ) and install openFrameworks dependencies:

```sh
cd your_oF_directory/scripts/msys2
./install_dependencies.sh --noconfirm
```

Next, compile openFrameworks libraries:

```sh
cd your_oF_directory/libs/openFrameworksCompiled/project
make
```

You can speed up compilation using `make -j4` (or the number of cores you want it to use) for a parallel build.


Checking OF installation by running examples
--------------------------------------------

Compiling and running an OF example in the best way to check if you're ready for it.

To compile an example (e.x. the 3DPrimitivesExample), run:

```sh
cd your_oF_directory/examples/3d/3DPrimitivesExample
make
```

At this point, `make run` should execute the newly built example.

However, it wil not execute by double-clicking on its icon; lots of "missing DLL" warnings will appear.
To fix these, you need to copy the required DLLs file in the application folder with the `make copy_dlls` command.


Setting up an IDE
-----------------

Several IDEs can be used with MSYS2. QT Creator used to be OF recommended choice, but as of late VS Code has gained popularity and is now used by many OF enthusiasts.

If you use a different IDE and would like to share your knowledge in setting it up for OF development, do not hesitate to contribute to this page.


### VS Code
You can find more information in the corresponding [setup guide](../vscode):

### QT Creator
You can find more information in the corresponding [setup guide](../qtcreator):

As mention earlier, pay attention to the installation folder of MSYS2 (which must be `C:\msys64`).


Makefile
--------

Every example has a Makefile you can configure using the files config.make and addons.make.

config.make: This file has options to add search paths, libraries, etc.
The syntax is the usual Makefile syntax; there's comments inside the file to help with organization.

addons.make: if you want to use an addon which is inside the addons folder, justadd its name in a new line in this file.


FAQ / Common problems
---------------------
- "How to set up the PATH variable?"

Unless you know exactly what you are doing, **YOU SHOULD _NOT_** set the PATH variable.
The main cause of openFrameworks application crashes on MSYS2 is DLL incompatibilities.
This is because, when the DLL is not in the same folder as the application executable, the OF application looks for it in the PATH.
It may find DLL with the right name but with a different MSYS2 flavor (UCRT64 vs CLANG64) or from a non-MSYS2 location (for example a separate OpenSSL installation).

Use the `make copy_dlls` command to make sure that the MSYS2 DLLs are copied next to the executable.
This will also ease the installation of the application on a different computer, because you can just copy the executable & all DLLs together.

You may be tempted to set MSYS2 in the path to enable the automatic detection of compiler installation by IDE software. 
It's an easy way to setup up your IDE.
However, there may also be some settings in the IDE to configure where to find the programs.
That gives you better control.
As stated earlier, relying on the PATH variable to find the programs may result in unexpected behaviours (for example, using Windows C:\Windows\System32\find.exe instead of MSYS C:\msys64\usr\bin\find.exe)

It may be helpful to write a wrapper batch file to lauch your IDE where you set the PATH to use for just that program.
This way you do not pollute your PATH system-wide.


- "Which MSYS2 flavors are supported?"

UCRT64 (recommended), CLANG64 and CLANGARM64, each with its own openFrameworks package.
MINGW64 was the recommended flavor up to openFrameworks 0.12.1; from 0.12.2 it is no longer supported, as MSYS2 is retiring it.


- "I have a 'TLSv1_1_client_method missing error' when I double-click the exe?"

This happens when the executable looks for ssleay32.dll and libeay32.dll and it first finds a version that doesn't support TLS v1.1. Often it happens with Intel iCls software. The solution is to move the your_msys2_directory\ucrt64\bin path before the conflicting path. If the conflicting path is in the system PATH and you do not have administrative privileges, copy/link ssleay32.dll and libeay32.dll from your_msys2_directory\ucrt64\bin to the executable folder.


- "I'm on a corporate network and I cannot install OF dependencies, update MSYS2..."

This is more an MSYS2 problem than an OF problem.
Ask your system adminsitrator for help as the reasons are multiple (proxy,certificates,...)

You may need to set HTTP_PROXY and HTTPS_PROXY environment variables. From a DOS/CMD prompt:

    set http_proxy=http://your_proxy:your_port
    set http_proxy=http://username:password@your_proxy:your_port
    set https_proxy=https://your_proxy:your_port
    set https_proxy=https://username:password@your_proxy:your_port

Don't forget to escape special characters in your password...





many thanks!! OFteam

