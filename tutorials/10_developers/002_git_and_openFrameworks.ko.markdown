## -*- coding: utf-8 -*-
---
.. date: 2012/02/23 19:52:00
.. title: 오픈프레임웍스와 git의 기본 소개 
.. summary: 오픈프레임웍스와 git의 기본적인 연결방법 소개 
.. author: Christoph Buchner
.. author_site:
.. translator: Yi donghoon
.. translator_site: http://icq4ever.net
---

이 튜토리얼은 분산 버전 컨트롤 시스템인 **깃(git)**에 관한 간단한 소개를 담고 있습니다. 어째서 코딩을 할때 깃을 사용하거나, 혹은 오픈프레임웍스와 [깃허브](www.github.com)를 연결하는것이 좋은 아이디어일까요? 

이 튜토리얼을 통해 여러분은 깃 저장소를 생성하고, 간단한 OF프로젝트를 시작하고, 깃을 이용하여 코드변화를 추적하는 법을 익힐 수 있습니다. 또한 깃에서 자주 수행하는 작업들도 배울 수 있습니다. 

## 깃의 기본

### 버전관리는 왜 필요한가요? 

버전관리는 작성한 코드의 변경, 히스토리, 차이점 비교등을 쉽게 할 수 있는 도구입니다.
이는 매번 작업폴더를 압축하여 보관하거나, 수동으로 백업하여 유지하는 것에 비하면 훨씬 향상된 방법이기도 합니다.

게다가, 깃을 사용하면 효율적으로 다른 이들과 협업하여 코드를 작성할수 있으므로, 사용하지 않을 이유가 없습니다. 이는 정말이지 여러분의 인생을 훨씬 쉽게 해줄 수 있습니다.

### 깃에 관한 기본적인 정보

[깃(Git)](http://en.wikipedia.org/wiki/Git_%28software%29)은 오픈프레임웍스와 깃허브에서 사용할 수 있는 버전 관리 시스템입니다. 이것이 바로 우리가 사용하게 될 것이지요.
다른말로는 [분산관리시스템(distributed revision control system)](http://en.wikipedia.org/wiki/Distributed_revision_control)이라 불리는데, 사용하기 위해 중앙서버/저장소가 따로 필요가 없다는 의미입니다.

만약 깃에 관해 검색해보셨다면, 이 튜토리얼과 함께 반드시 살펴보아야할 몇몇 자료들이 있을것입니다. 그것들은 *여러분에게 기본적인 깃의 사용법을 알려줄 것입니다*. 그 다음 오픈프레임과 깃을 사용하는 방법에 대해서 다룰 것입니다.

[gitref.org](http://gitref.org/)는 깃에 대한 핵심적인 레퍼런스의 훌륭한 요약본입니다. 대략 30분이면 끝까지 읽으실 수 있을것입니다.

[깃허브 도움말 페이지](http://help.github.com/)은 깃과 깃허브에 관한 기본적인 사용법, 개념, 조항들을 다루고 있습니다. 일반적으로 깃과 뭔가를 할때 초기 아이디어를 얻기에 좋습니다. 

## OF 프로젝트에 깃을 사용하기

만약 깃을 여러분의 프로젝트에서 사용하고 싶다면, **가능한한 일찍 사용하는것**이 합리적입니다. 아예 코딩하기 전부터 시작하는것이 더욱 이상적입니다.

앞 섹션의 링크에 언급된 기본적인 사용법 외의 주목할만한 팁을 이제부터 소개해 드리고자 합니다.

### 부적절한 파일은 무시하라 

**깃이 올바른 파일만들 추적하도록 하는것**이 중요합니다.
자동으로 생성되는파일, 임시파일, 바이너리, 사용자측면의 파일들(user-specific files)은 저장소에서 제외되어야 합니다.

깃에서는, `.gitignore`에 특정 패턴을 입력하여 무시할 파일들의 필터를 작성할 수 있습니다(앞에 .이 있음에 유의하세요).
만약 프로젝트가 프로젝트 생성기를 통해 생성했다면, **미리 만들어진 `.gitignore`파일**을 사용하는것이 좋습니다.
여러 상황을 위한 유용한 `.gitignore` 파일의 콜렉션은 [이곳](https://github.com/github/gitignore)에서 찾을 수 있습니다.

이미 저장소에 주가되어 있는 파일들의 경우, 무시되지 않음에 주의하시기 바랍니다.
또한, 파일들이 한번이라도 저장소에 추가되면, 그것들은 히스토리에 기록되어 머물게 됩니다. 이런 경우 불필요하게 저장소의 크기가 늘어나기 쉬운데, 이는 저장소에 실수로 추가된 파일들을 쉽게 비우기 힘들기 때문입니다(특히 이미 온라인에 저장소를 동기화 시킨 경우에 말이죠). 
이러한 이유로, 저장소에 파일을 추가할때에는 신중해야 하는것이 **매우 중요합니다**.


### GUI기반의 깃 툴들

만약 명령어모드(command line)를 사용하고 싶지 않을경우에는, 다양한 그래픽 인터페이스 클라이언트를 사용할 수도 있습니다. Stackoverflow에 훌륭한 추천들이 있습니다. [Linux](http://stackoverflow.com/q/2141611/599884), [MacOS](http://stackoverflow.com/questions/455698/best-visual-client-for-git-on-mac-os-x) and [Windows](http://stackoverflow.com/questions/157476/what-guis-exist-for-git-on-windows)용을 확인해보세요.

### Remotes : origin과 upstream

[Remotes](http://gitref.org/remotes/)는 여러분의 저장소와 (아마도)연결될 원격 저장소를 의미하는 식별자입니다.
이러한 원격 저장소에 접근하기 위해 항상 URL을 입력해야 하는것은 아닙니다.
관례적으로, 여러분의 저장소의 복사본의 이름은(가령 github의 경우) `origin`입니다. 이는 github의 저장소를 `git clone`하면 자동으로 세팅됩니다.
추가적으로, 만약 여러분이 다른 저장소를 fork할경우(예를들어 OF의 저장소를 복제하여 갖고 있다고 합시다), 다른 저장소는 일반적으로 `upstream`라 이름붙여집니다.

### 깃, SVN에서 넘어오기

여러분 중에 SVN을 사용하다가 깃으로 전환하고 싶으신 분이 있으시다면, 약간 혼란스러울 수 있습니다. 웹상에 이와 관련하여 다양한 자료들이 있습니다. [이곳](http://git.or.cz/course/svn.html)은 동일한 수행의 명령어 비교를 설명하는 튜토리얼입니다. 
힌트를 드리자면 커밋은 로컬 저장소에만 영향을 미치므로, 깃에서 훨씬 덜 심각(중요)하다는 것입니다.  깃에서는 **빨리 커밋하고, 자주 커밋하라**가 핵심입니다.

다른 차이점이라면, 여러분의 저장소는 중앙 저장소에서 보다 훨씬 더 분리되어있다는 것입니다.
또한, 병합(merging)과 가지치기(branching)는 깃의 동작의 핵심이므로, 자유롭게 사용하시길 바랍니다.

### 새로운 가지를 github에 push하기

만약 분리된 가지(branch)에서 새로운 작업을 했고, 그것을 github 저장소에 푸쉬하고 싶을때에는

	git push origin new-work

라고 하시면 됩니다. (역자 주 : new-work는 분리된 가지(branch)의 이름입니다.)


### remote상의 가지(branch)를 local에 복사하기 

만약 로컬 저장소에 존재하지 않는, 저장소의 branch로 체크아웃하고 싶으시다면

	git fetch origin
	git checkout --track origin/interesting-branch

라고 하시면 됩니다.

두번째 명령어는 로컬 브랜치의 이름을 `origin/interesting-branch`와 동일하도록 `interesting-branch`라고 해라 라는 뜻입니다. 이렇게 하면 remote상의 브랜치에서 push, pull을 쉽게 수행할 수 있습니다.

### remote상의 branch 삭제하기 

어떤 branch상에서 작업을 했고(예를들어 pull request를 위해 OF의 특정 버그를 수정하고), 더이상 이 브랜치가 필요없을 경우(예를들어 프로젝트 매니저가 해당 브랜치를 이미 병합하였다면), remote상의 branch를 아래 명령어로 삭제할 수 있습니다.
	
	git push origin :old-branch

### OF에 공헌하기 위한 깃 워크플로우

개발을 할때 따라야할 오픈프레임웍스 개발 워크플로우는 [이곳](https://github.com/openframeworks/openFrameworks/wiki/openFrameworks-git-workflow)에 설명되어 있습니다.

만약 여러분이 오픈프레임웍스 개발에 성공적으로 참여하고 싶다면, 위 문서를 반드시 따라주셔야 합니다.
또한, **거대한 프로젝트관리를 위한 팁**을 얻고 싶다면 살펴보는것이 도움이 될 것입니다.

## 일반적으로 발생하는 문제점의 해결법들

여러분이 깃으로 작업하면서 마주칠만한 문제가 발생할 상황들 몇몇 있습니다. 
대부분의 이러한 문제들은 해결법이 동일합니다.

### 커밋되지 않은 변경을 pulling 할 경우

커밋되지 않은 변경을 갖고 있을 때, 작업중인 branch를 remote에서 pulling하여 업데이트 할 경우, 깃에 의해 pull은 거부됩니다.

이러한 경우 `git stash`를 사용합니다.
This is a really useful [feature](http://gitready.com/beginner/2009/01/10/stashing-your-changes.html) similar to a clipboard, where you can temporarily store changes while doing something else.
이것은 아주 유용한 [기능](http://gitready.com/beginner/2009/01/10/stashing-your-changes.html)으로 클립보드와 유사한데, 다른 작업을 하는동안 임시적으로 변경사항을 저장합니다.

[다양한 옵션들](http://linux.die.net/man/1/git-stash)도 있습니다.
일반적으로, 그냥 현재의 변경을 stach상에 push하는 `git stach`와, 마지막 stach로 되돌리는 `git stach pop`만 사용하시면 됩니다.
이러한 상황에서는 아래와 같이 하시면 됩니다.


	<code a bit>
	git stash
	git pull upstream develop
	git stash pop
	<continue work>

## 더 많은 깃 관련 자료들:

더 많은 기능들에 대해 깊게 알고 싶거나, 이 튜토리얼에서 언급되지 않은 문제를 해결하고 싶으시다면, 아래 자료들을 참고해보시기 바랍니다:

[The oF git cheat sheet](http://piratepad.net/ofgitcheatsheet): **오픈프레임웍스 개발자들에 의해 제공되는, 도움될만한 git 명령어들**의 모음

[Pro Git](http://progit.org/): 서적으로, 웹사이트에서 html로 무료로 볼 수 있습니다. git의 기본부터 고급컨셉까지 모든것을 다루고 있습니다. 한글 번역본은 [이곳](https://dogfeet.github.io/articles/2012/progit.html)에서 볼 수 있습니다.

[The git man pages](http://www.kernel.org/pub/software/scm/git/docs/): git의 매뉴얼입니다. 커맨드라인에서도 볼 수 있습니다만, 온라인으로 보는것이 훨씬 보기 쉽습니다. :D git의 명령어모드 사용법에 관한 핵심뼈대를 살펴볼 수 있습니다.

git을 어떻게 사용하는지 질문이 있으시다면, [스택오버플로우](http://www.stackoverflow.com)가 최선입니다. 같은 문제를 겪고있는 누군가가 아마도 이미 있을것입니다. 예를들면 이런겁니다. [How do I make git ignore mode changes?: 깃에서 ignore모드를 변경할려면 어떻게 해야하나요?](http://stackoverflow.com/search?q=How+do+I+make+git+ignore+mode+changes)

기사, 위키페이지, 튜토리얼, 블로그 등에 git에 관한 방대한 자료들이 있습니다. [git for the lazy](http://spheredev.org/wiki/Git_for_the_lazy)나  [Git Immersion](http://library.edgecase.com/git_immersion/index.html) 가 그 예입니다.