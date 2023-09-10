## -*- coding: utf-8 -*-
.. title: VS Code

# VS Code
=======

Instructions for setting up VS Code are not yet fully available.

Do not hesitate to contribute if you have some experience in setting up VS Code with OF.

## Common

Install the [Microsoft C/C++ extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)

## MSYS2

### Setting up MSYS2 shell

Open the VS Code settings and search for 'terminal profile windows'.

In `Terminal > Integrated > Automation Profile : Windows`, select `Edit in settings.json`.
Then, edit the `terminal.integrated.profiles.windows` object to add `OF-MINGW64`

```json
    "terminal.integrated.profiles.windows": {
        "OF-MINGW64":{
            "path": "C:\\msys64\\usr\\bin\\bash.exe",
            "color": "terminal.ansiBlue",
            "icon":"beaker",
            "overrideName":true,
            "args": ["--login", "-i"],
            "env": {
                "MSYSTEM": "MINGW64",
                "CHERE_INVOKING": "1",
                "MSYS2_PATH_TYPE": "inherit"
            }
        }
    },
    "terminal.integrated.defaultProfile.windows": "OF-MINGW64",
```

Now when you open a terminal in VS Code, it will open a MINGW64 shell where you can run the `make` commands as appropriate.

### Edit C/C++ Extension settings

```json
{
    "env": {
        "OF_ROOT": "C:/openFrameworks"
    },
    "configurations": [
        {
            "name": "OF-MINGW64",
            "includePath": [
                "${workspaceFolder}/**",
                "${env:OF_ROOT}/addons/**/src",
                "${env:OF_ROOT}/libs/openFrameworks/**",
                "c:/msys64/mingw64/include/**"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "windowsSdkVersion": "10.0.19041.0",
            "compilerPath": "c:/msys64/mingw64/bin/g++.exe",
            "cStandard": "c17",
            "cppStandard": "c++17",
            "intelliSenseMode": "windows-gcc-x64"
        }
    ],
    "version": 4
}
```
