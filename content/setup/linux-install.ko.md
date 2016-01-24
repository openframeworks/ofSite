## -*- coding: utf-8 -*-
.. title: 리눅스 인스톨

리눅스 인스톨
==========

<!-- Before you can use OF in Linux you'll need to run a couple of scripts to install some dependencies and compile both the OF library itself and the project generator. -->
오픈프레임웍스를 리눅스에서 사용하려면, 몇몇 의존성패키지들과 오픈프레임웍스 라이브러리 자체 및 프로젝트 생성기를 컴파일하기위해 몇몇 스크립트를 실행해야합니다.

<!-- First of all you'll need to execute the install_dependencies.sh script for your distribution which is located in `scripts/linux/distro_name/install_dependencies.sh` -->
우선 해야할 것은 `scripts/linux/distro_name/install_dependencies.sh`에 위치한 현재 사용중인 리눅스 배포판에 맞는 install_dependencies.sh 스크립트를 실행하는 것입니다.

<!-- For example if you are using Ubuntu, open a new console and enter: -->
예를들어 우분투를 사용하고 있다면, 터미널을 열어 아래와 같이 입력합니다:

```sh
cd OF/scripts/linux/ubuntu
sudo ./install_dependencies.sh
```

<!-- Next, if you want to use some formats like mp3, you'll need to run the install_codecs script: it's in the same folder and is run the same way as the install_dependencies one. We separate them because mp3 and some other formats installed by the script might be protected by patents in some countries and could be problematic to use in commercial work. Also, this might help those Linux users that don't want to use proprietary codecs. -->
다음으로, mp3와 같은 특정한 포맷을 사용하려면, install_codecs.sh 스크립트를 실행해줘야 합니다: 이 스크립트파일은 동일한 폴더에 위치해 있으며, 의존성패키지를 설치하는것과 마찬가지로 실행하면 됩니다. 코덱설치를 분리한 이유는 스크립트에 의해 설치되는 mp3및 다른 포맷들이 특정국가에서는 특허에 의해 보호 될 수 있으므로, 상업적인 작업에서 문제가 될 수도 있기 때문입니다. 또한, 이러한 리눅스 유저들이 특허코덱을 사용하지 못하도록 도움을 줄 수도 있기 때문입니다.

<!-- The OF source code comes uncompiled so the first time you compile an example it would need to compile it to, if you go and compile any example it would compile OF as a dependency but to make that easier and catch any potential problems let's do that as a separate step: -->
오픈프레임웍스 소스코드는 컴파일되지 않은채로 배포되므로, 예제를 컴파일할때 적어도 한번 컴파일을 해줘야 합니다. 만약 아무 예제를 열어 컴파일을 하면, 의존성을 위해 오픈프레임웍스 자체를 컴파일할 것입니다만, 보다 쉬운 진행과 중대한 문제발생의 방지를 위해 별도의 단계로 진행하도록 합시다:


```sh
cd OF/scripts/linux
./compileOF.sh -j3
```

<!-- `-j3` tells the script to use 3 CPUs to compile. You can specify as many as you want but it's recommended to use the number of cores in your computer or less. -->
`-j3` 은 스크립트로 컴파일을 할 때 3개의 CPU를 사용하겠다는 뜻입니다. 여러분위 원하는 만큼 지정할 수 있지만 여러분의 컴퓨터가 갖고 있는 코어의 갯수보다 같거나 작게 사용하기를 추천해 드립니다.

<!-- With this you can already go into any of the examples folders and compile the examples using make: -->
이제부터, 아무 예제폴더로 이동하여 make명령어를 사용해 예제를 컴파일해봅시다:

```sh
cd OF/examples/graphics/polygonExample
make
make Run
```

<!-- Or use any of the officially supported IDEs: [qtcreator](../qtcreator/) or [eclipse](../eclipse/) both IDEs have plugins that allow to create new projects, import existing ones, add addons to them. -->
위처럼 명령어로 컴파일을 하거나, 또는 공식적으로 지원되는 IDE(통합개발환경)인 : [qtcreator](../qtcreator/) 또는 [eclipse](../eclipse/)를 사용할 수 있습니다. 두 IDE모두 새 프로젝트를 생성하거나, 이미 존재하고 있는것을 임포트하거나, 애드온을 추가할 수 있는 플러그인을 제공하고 있습니다.

<!-- If you want to install the project generator, a tool that allows to create and update an OF project, you'll need to run one last script: -->
만약 오픈프레임웍스 프로젝트를 생성하고 업데이트 할 수 있는 프로젝트 생성기를 설치하고 싶다면, 아래의 스크립트를 실행하면 됩니다:

```sh
cd OF/scripts/linux
./compilePG.sh
```

<!-- This will compile the GUI version of the project generator which will be placed in the root of the OF folder. When it's done compiling it will ask you if you also want to install the optional command line version of the tool which allows you to create projects from anywhere on your system. -->
<!-- If you installed the command line tool and want to change the OF path it uses, you can change the value of PG_OF_PATH in ~/.profile. -->
위 명령어로 GUI버전의 프로젝트 생성기가 컴파일 되어, 오픈프레임웍스의 최상위 폴더에 위치될 것입니다.컴파일이 완료되면, 시스템의 어느곳에서도 프로젝트를 생성할 수 있는 명령어 모드 도구를 옵션으로 설치할 것인지 물을 것입니다. 
명령어 도구를 설치하고나서 프로젝트 생성기가 사용할 오픈프레임웍스 경로를 수정하고 싶다면, ~/.profile파일에서 PG_OF_PATH의 값을 변경하시면 됩니다.

<!-- Run the commandline project generator without any arguments to see how to use it: -->
명령어모드로 프로젝트 생성기를 실행하기 위해서는, 아무런 매개변수 없이 아래와같이 사용하면 됩니다:

```sh
projectGenerator
```
