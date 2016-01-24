.. title: raspberry pi

<!-- If you would like to contribute code, there are a few workflows listed below (NOTE: there may be better ways to do this!  If you are a smart github user and you find yourself laughing at the instructions below, please improve them :).
 -->만약 코드에 공헌하고 싶으시다면, 아래에 정리된 몇가지 방법이 있습니다(주의:더 나은 방법이 있을지도 모릅니다! 혹시 본인이 숙련된 github사용자이고, 아래 설명을 보고 웃음이 나오신다면, 가이드를 향상시켜주세요 :).

<!-- * ("Simple") Create a fork of this repo, clone it to your PI, checkout the `develop-raspberrypi` branch on, make changes and then submit a pull requests back to to the `openFrameworks-RaspberryPi/openFrameworks` repo.  This is the normal openFrameworks way of doing things.-->
 * ("간단한 방법") 라즈베리파이에 이 저장소를 fork하여 생성하거나, 복제하셔서, `develop-raspberrypi` 브랜치로 체크하웃하시고, 변경한 뒤에 `openFrameworks-RaspberryPi/openFrameworks`저장소로 pull request를 요청해주세요. 이는 일반적으로 openFrameworks에서 사용하는 방법입니다.


<!-- * (Advanced) Alternatively, if you already have a fork of the original `openFrameworks/openFrameworks` repo (which many of you probably do) you may want to create a branch off of your own fork that tracks with the `develop-raspberrypi` branch of this fork (I know ... it sounds complicated, but it will work, I promise).  To go this route: -->
* (고급 방법) 위와 다르게, 이미 원본 `openFrameworks/openFrameworks`저장소의 fork를 갖고 계시다면(아마 대부분은 이 방법을 사용하고 있으실겁니다), fork한 브랜치에서 `develop-raspberrypi`브랜치로 체크아웃하시면 됩니다. (네.. 복잡하게 들리죠, 하지만 동작할겁니다, 약속드리죠). 이렇게 하기 위해서는:
    <!-- * Set up git on your RPI using the account info associated with your fork [Setup Guide](https://help.github.com/articles/set-up-git#platform-all)  -->
    * 라즈베리파이에서 fork할 계정으로 git을 세팅합니다 [셋업 가이드](https://help.github.com/articles/set-up-git#platform-all) 
    <!-- * On your RPI, create a clone of your personal fork and checkout the `develop` branch: -->
    * 라즈베리파이에서, fork한 저장소의 복제본을 생성하고, `develop` 브랜치로 체크아웃합니다:
        * `git clone git@github.com:<YOUR_GITHUB_USERNAME>/openFrameworks.git`
        * `git checkout develop`
    <!-- * (if needed) Make sure your fork is up to date with the `openFrameworks/openFrameworks` develop branch by: -->
    * (필요하다면) 아래의 명령으로 여러분의 fork가 `openFrameworks/openFrameworks` 개발 브랜치의 최신을 반영하는지 확인합니다
        * `git remote add upstream git remote add upstream git://github.com/openframeworks/openFrameworks.git`
        * `git pull upstream develop`
        * `git push origin develop`
    <!-- * Now create your own branch to track with the `develop-raspberrypi` branch -->
    * `develop-raspberrypi` 브랜치를 추적하도록 여러분의 고유 브랜치를 생성합니다.
        * `git checkout develop`
        * `git branch develop-raspberrypi`
        * `git checkout develop-raspberrypi`
    <!-- * Pull all of the recent commits from this `develop-raspberrypi` branch into YOUR tracking branch -->
    * `develop-raspberrypi`브랜치의 모든 커밋들을 *여러분의* 추적 브랜치로 반영(pull)합니다.
        * `git pull git://github.com/openFrameworks-RaspberryPi/openFrameworks.git develop-raspberrypi`
    <!-- * Now push your new branch back to your fork's origin on github: -->
    * 새 브랜치를 여러분의 (fork 된) github의 origin으로 푸쉬 합니다.
        * `git push origin develop-raspberrypi`
    <!-- * **Now make changes to the source code!** -->
    * **이제 소스코드를 변경합니다!**
    <!-- * Add changes to a commit. -->
    * 변경사항을 커밋에 추가(stage on)합니다.
        * `git add YOUR_CHANGED_FILE.cpp`
    <!-- * Commit your change set: -->
    * 변경된 것들을 메시지와 함께 커밋합니다.
        * `git commit -m "A descriptive message about your changes here ..."`
    <!-- * Push commit to your fork's origin on github: -->
    * 커밋을 여러분의 (fork 된) bithub의 origin으로 푸쉬합니다.
        * `git push origin develop-raspberrypi`
    <!-- * Now get back in your browser, head over to your fork's page and submit a pull request FROM `<YOUR_GITHUB_USERNAME>/openFrameworks` `develop-raspberrypi` TO `openFrameworks-RaspberryPi/openFrameworks` `develop-raspberrypi`.  You may have to search a little bit to find it.  You _don't_ want to submit a PR back to the original `openFrameworks/openFrameworks` branch repo.  Then ask a fellow developer to check out your PR and / or merge the pull request. -->
    * 이제 웹브라우저에서, 여러분의 fork페이지로 들어가 `<YOUR_GITHUB_USERNAME>/openFrameworks` `develop-raspberrypi` 에서 `openFrameworks-RaspberryPi/openFrameworks` `develop-raspberrypi`로 pull request를 작성해 제출합니다. 아마 이걸 찾기 위해 검색하는데 좀 시간이 걸릴겁니다. 여러분의 pull request가 원본 `openFrameworks/openFrameworks`브랜치 저장소로 반영되게 하고 싶진 _않을_ 테니깐요. 그리고 나서 개발자에게 여러분의 pull request를 확인하고(하거나) pull request를 병합해달라고 요청할 수 있습니다.
    <!-- * Rinse and repeat. -->
    * 정리한 뒤 반복합니다.
    <!-- * When you notice that new code has been added to the openFrameworks-RaspberryPi/openFrameworks develop-raspberrypi branch, you can pull in those changes to your branch by the same command as earlier. -->
    * openFrameworks-RaspberryPi/openFrameworks의 develop-raspberrypi 브랜치에 작성한 코드가 추가되었음이 확인되면, 앞서 사용했던 같은 명령을 사용해 여러분의 브랜치로 이 변경을 반영(pull)할 수 있습니다.
        * `git pull git://github.com/openFrameworks-RaspberryPi/openFrameworks.git develop-raspberrypi`
