## -*- coding: utf-8 -*-
.. title: VS Code

# VS Code
=======

VS Code 셋업 가이드는 아직 완벽한 단계는 아닙니다.

오픈프레임웍스와 VS Code를 셋업한 경험이 있다면 주저하지 마시고 기여해주세요.

## 공통사항 

[Microsoft C/C++ extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cpptools)를 설치해주세요.

## MSYS2

### MSYS2 shell 셋업

VS Code에서 환경설정을 여신 뒤 'terminal profile windows'를 검색하세요.

In `Terminal > Integrated > Automation Profile : Windows`에서, `Edit in settings.json`를 선택하세요.
그 다음 `terminal.integrated.profiles.windows` 오브젝트에 `OF-MING64`를 추가해주세요.

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

이제 VS Code에서 터미널을 열어보면, MING64 쉘이 열립니다. 여기서 적절한 `make` 명령어들을 실행할 수 있습니다.

### C/C++ Extension 세팅 

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
