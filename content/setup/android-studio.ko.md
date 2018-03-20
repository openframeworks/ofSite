## -*- coding: utf-8 -*-
.. title: android studio

Android Studio
==============

The Android distribution of openFrameworks is setup to work with either the Eclipse IDE or experimentally Android Studio IDE. The projects are currently using a custom toolchain based on Makefiles to compile and install applications.

안드로이드용 오픈프레임웍스 배포판은 이클립스 IDE 또는 안드로이드 스튜디오에서 동작하도록 세팅되어 있습니다. 프로젝트들은 현재 Makefile들을 기반으로한  커스텀 툴체인을 사용여 컴파일되고, 어플리케이션을 서치합니다.

Android studio support in openFrameworks is still experimental. The latest version of android studio still doesn't have full support for c++ development so even if it's deprecated we still recomend to use eclipse and the ADT plugin if you want to have code completeion in c++. See android-eclipse.md in the docs folder or the corresponding guide in the download page.

오픈프레임웍스에서의 안드로이드 스튜디오 지원은 아직 실험적인 단계입니다. 안드로이드 스튜디오의 최신버전은 아직까지 C++ 개발을 환벽하게 지워나지 않기 때문에, 여러분이 C++의 코드자동완성을 사용하길 원하신다면 설령deprecated 되어버린 이클립스와 ADT플러그인을 사용하는 방법을  권장해드립니다. docs 폴더의 android-eclipsed.ko.md 혹은 다온로드페이지의 해당 문서를 확인해주세요

Summary
-------

Setting up openFrameworks with Android Studio is fairly straightforward. The basic steps are:
오픈프레임웍스를 안드로이드스튜디오와 함께 셋업하는것은 꽤 직관적입니다. 간단한 단계는 다음과 같습니다:

- 안드로이드 스튜디오와 안드로이드 SDK를 설치합니다.
- 안드로이드 NDK를 설치합니다(r10e 버전이 테스트되었습니다. - 다만 좀더 최신버저인 r12b은 문제가 없는것으로 보입니다. 역자주)
- 깃 혹은 다운로드페이지에서 오픈프레임웍스를 다운받습니다.
- local.properties('ndk.dir')항복에 NDK의 경로를 지정합니다.
- In Android Studio, use **File ➞ Import Project** and select an openFrameworks example from the examples/android folder
- 빋드하고 실행합니다.

Installation
------------

<h3> 안드로이드 스튜디오 및 SDK 설치하기</h3>

Download and install Android Studio from http://tools.android.com/download/studio/stable (you need Android Studio 1.0 or higher). It should come with (or automatically install) a recent SDK, though you can customize the SDK version later from within Android Studio using **Tools ➞ Android ➞ SDK Manager**.

In the event that Android Studio does not come with an SDK, you can install it from http://developer.android.com/sdk/index.html (under "Get the SDK for an existing IDE").

<h3>Install the Android NDK</h3>

This is the C/C++ compiler, headers and libraries for Android. OF 0.9.0 has been tested with the NDK version r10e, newer versions might work but it's not guaranteed.

https://developer.android.com/ndk/downloads/index.html

- OS X: http://dl.google.com/android/ndk/android-ndk-r10e-darwin-x86_64.bin
- Linux 32: http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86.bin
- Linux 64: http://dl.google.com/android/ndk/android-ndk-r10e-linux-x86_64.bin
- Windows 32: http://dl.google.com/android/ndk/android-ndk-r10e-windows-x86.exe
- Windows 64: http://dl.google.com/android/ndk/android-ndk-r10e-windows-x86_64.exe

On Windows, you will also need to install MinGW in order to build openFrameworks. MinGW provides some essential build tools which are not included in the NDK. Follow just the "Installing the MinGW and Msys" instructions on this page: http://www.multigesture.net/articles/how-to-install-mingw-msys-and-eclipse-on-windows/.

<h3>Download openFrameworks</h3>

Download it from the downloads page:

[Download](/download)

You may also check out the openFrameworks source from GitHub (under master branch): http://github.com/openframeworks/openFrameworks

Or download the latest nightly:
[Download](/download) (bottom of the page)

<h3>Configure the NDK</h3>

With a text editor, edit the file `libs/openFrameworksCompiled/project/android/paths.make` and set the NDK path to the correct folder:

    NDK_ROOT=/path/to/the/ndk

<h3>Import the project</h3>

At the Android Studio welcome screen select **Open an Existing Android Studio Project**.

![](open-existing-project.png)

Then browse to any of the android examples in `examples/android`.

![Opening androidEmptyExample](androidEmptyExample.png)

Accept all the prompts and wait for Android Studio to set up the project.

You'll have to wait a bit: the first sync will automatically build openFrameworks. If it doesn't work (Gradle sync still fails), try looking at the Troubleshooting tips.  In some cases, clicking on the error in the console window will take you to a solution, such as installing various versions of the Android SDK.  In some cases, you may have to do this several times to solve several missing dependencies.

<h3>Build and run</h3>

Press the Play button next to the `androidEmptyExample` shown in the toolbar. With any luck, it should build the app, and momentarily deploy it to your Android device (or prompt you to deploy it on a suitable emulator). If the app runs, congratulations! You have setup openFrameworks.

<h3>Editing the c++ source code</h3>

Android studio in it's version 1.3 still has very limited support for c++ source code editing. In any case to work with openFrameworks, you'll want to switch from the Android view to the Project one where you can see all the files in the project including the C++ source code:

![Project view](projectview.png)
![Opening ofApp](ofApp.png)

Creating new projects
--------------------

1. Copy any of the provided example app (make sure to put it in a subdirectory of `apps`, at the same level as the sample)
2. Edit the file AndroidManifest.xml and change every appearance to the original name to the new name of you application.
3. In srcJava/cc/openFrameworks change the name of the folder to the new name of you application.
4. Edit the file srcJava/cc/openFrameworks/newApplicationName/OFActivity.java and change the name of the package to the correct new name.
5. Edit the file res/values/strings.xml and change the value of app_name to the new name of the application.
6. Import the new project from android studio

Troubleshooting
--------------

- You may need to adjust the following numbers to match your installed Android Studio and Android SDK. Android Studio should offer to fix these values for you when you open the appropriate build files.

    - The Gradle version specified in `/build.gradle`
    - The `compileSdkVersion`, `buildToolsVersion`, `minSdkVersion`, `targetSdkVersion` values
        in `/addons/ofxAndroid/ofAndroidLib/build.gradle` and `/apps/myApps/androidEmptyExample/build.gradle`

- If you get strange linker errors, check that you are using the 10e version of the NDK. Newer NDKs might work but usually there's some always some fixes that need to be done when moving to a new NDK version.

- If you get make errors on gradle sync without any details, run `chmod +x gradlew; ./gradlew` from within the project folder to build the project from command line, and get more detailed error messages.

- If your connected device is not recognized by Android Studio, restart adb
  with `adb kill-server && adb start-server`

- If, when syncronizing a project for the first time, clicking on the console
  messages does not solves the problem regarding a missing dependency of the
  android API (like for example Android API 22), open the sdk from the console,
   select the missing API and install it
