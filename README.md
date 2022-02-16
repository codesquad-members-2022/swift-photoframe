# swift-photoframe

## Step1 : 프로젝트 생성하기

- [x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다.
- [x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다.
- [x] 자동 생성된 ViewController 클래스 `viewDidLoad()` 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

### 실습 과정
<img alt="Basic_Storyboard_Image" height="300" src="PhotoFrame/README_images/Basic_Storyboard_Image.png" width="500"/>   

기본 스토리보드로 주어지는 Main.storyboard 에서는 UIKit에 정의된 UIViewController가 위치하여 있고, 이 ViewController의 속성 중 `isInitialViewController`가 체크되어 있다.      
이는 왼쪽에 우향 화살표를 통해 알 수 있다.   
<img alt="Basic_Storyboard_Image_isInitialViewController_off" height="300" src="PhotoFrame/README_images/Basic_Storyboard_Image_isInitialViewController_off.png" width="500"/>
<img alt="initialViewController_Error" height="120" src="PhotoFrame/README_images/initialViewController_Error.png" width="500"/>   
보시다시피 `isInitialViewController`의 체크를 해제하면 왼쪽 화살표가 없어진다. initialViewController가 없어진 프로젝트를 실행하면 오류가 발생한다.

과제 수행을 위해 모든 요소들을 다 제거한다. `Command`+`A`로 모두 선택하거나 드래그 앤 드롭으로 모두 선택 후 `Backspace`를 이용하여 요소들을 전부 제거한다.   
<img alt="Empty_Storyboard" height="300" src="PhotoFrame/README_images/Empty_Storyboard.png" width="500"/>   
여기서, `Command`+`Shift`+`L` 혹은 우측 상단의 `+` 버튼을 이용하여 라이브러리 창을 호출한다.   
<img alt="Library_Search_UITabBarController" height="200" src="PhotoFrame/README_images/Library_Search_UITabBarController.png" width="300"/>   
UITabBarController 추가를 위해 TabBar 등을 입력한다. 개인적으로는 클래스 이름 그대로 적는 것을 선호한다. 이 편이 좀 더 정확한 결과를 유도하는 것 같아 선호한다.   
엔터 키를 누르거나 선택된 리스트를 그대로 드래그 앤 드롭으로 스토리보드 화면에 드롭한다.   
<img alt="Storyboard_UITabBarController_isInitialViewController_on" height="300" src="PhotoFrame/README_images/Storyboard_UITabBarController_isInitialViewController_on.png" width="500"/>   
`isInitialViewController`가 없으므로, 맨 처음 TabBarController의 `Attribute Inspector`창을 확인한다.   
<img alt="Storyboard_UITabBarController_noChildViewController" height="300" src="PhotoFrame/README_images/Storyboard_UITabBarController_noChildViewController.png" width="500"/>   
실습을 위해 미리 주어진 두 개의 뷰컨트롤러를 모두 삭제한다. 하지만, TabBarController는 남았으므로 UIViewController를 스토리보드에 추가한 뒤 새로 연결하도록 한다.   
<img alt="Library_Search_UIViewController" height="200" src="PhotoFrame/README_images/Library_Search_UIViewController.png" width="300"/>   
아까 UITabBarController때처럼 Library를 열어 UIViewController를 검색한다. 같은 방법으로 두 개의 UIViewController를 추가한다.   
<img alt="Storyboard_Drag" height="300" src="PhotoFrame/README_images/Storyboard_Drag.png" width="500"/>   
UITabBarController의 맨 위 검은 바 부분의 첫번째 버튼에서 `Control`+Drag 를 이용하여 두 개의 UIViewController를 연결한다. UITabBarController의 하위 관계이므로, `view controllers`를 선택해준다.   
<img alt="New_File_Cocoa_Touch_Class_3" height="300" src="PhotoFrame/README_images/New_File_Cocoa_Touch_Class_1.png" width="500"/>
<img alt="New_File_Cocoa_Touch_Class_3" height="300" src="PhotoFrame/README_images/New_File_Cocoa_Touch_Class_2.png" width="500"/>   
<img alt="New_File_Cocoa_Touch_Class_3" height="300" src="PhotoFrame/README_images/New_File_Cocoa_Touch_Class_3.png" width="500"/>   
이제 첫번째 뷰컨트롤러를 위한 CustomClass를 생성한다. `Commans`+`n`을 입력하여 iOS 플랫폼의 `Cocoa Touch Class`를 찾아 Next를 클릭하거나 Enter를 입력한다.      
자동완성을 이용해본다. Class 이름은 'FirstSceneViewController'로 할 예정이다. 우선 클래스 이름을 입력하는 부분에 'FirstScene'을 입력한 후 아래 `Subclass of:` 부분에 UIViewController를 입력한다(자동완성을 지원한다).      
UIViewController가 입력되는 순간 'FirstScene' 뒤에 'ViewController'가 따라 붙는다. Next를 클릭하거나 Enter를 누르고 프로젝트 폴더 안에 클래스 코드를 담을 swift파일을 저장한다.
<img alt="FirstSceneViewController_Edited" height="300" src="PhotoFrame/README_images/FirstSceneViewController_Edited.png" width="500"/>   
FirstSceneViewController가 바로 보이게 되었다. 주어진 코드를 입력한다.   
<img alt="FirstSceneViewController_CustomClass_Admit" height="300" src="PhotoFrame/README_images/FirstSceneViewController_CustomClass_Admit.png" width="500"/>   
다시 스토리보드로 돌아가서 `Identity Inspector` 화면의 Custom Class 부분이 비어있다. FirstSceneViewController를 자동완성으로 입력하거나, 수동으로 입력한 후 아래의 모듈을 PhotoFrame으로 맞춘다.   
다른 뷰 컨트롤러로 갔다가 다시 돌아와 적용이 잘 되었는지 다시 확인한 후 실행해본다.   
<img alt="Result_Image" height="300" src="PhotoFrame/README_images/Result_Image.png" width="700"/>   
원하는 결과를 얻을 수 있었다.

### GitHub Push Error Alert!

GitHub `Push` 시 다음의 오류가 발생하였다.

* Remote Repository에 `PR`을 보냄
* `Merge`가 된 이후에 `Rebase`를 진행

이후에 다시 GitHub Push를 하려고 하는데 다음의 오류가 발생한다. Git Stash를 이용해서 지금까지의 내용을 넣어놓은 뒤 Pull을 받을 필요가 있을 것 같다.

![Git_Push_Error_First](PhotoFrame/README_images/Git_Push_Error_First.jpg)

원인은 간단했다. 프로젝트의 일부 파일이 제대로 커밋되지 않은 상태에서 Merge된 이후 다시 Push 하려고 하면서 깃 자체가 꼬여버렸다.   
`충돌을 해결`하고 fork한 나의 저장소에서 `Pull`을 받은 뒤 `Stash Apply`하면, 지금까지 한 내용을 버리지 않고 `커밋`하면 된다.

<img alt="Project_Forder_File_Missing" height="200" width="300" src="PhotoFrame/README_images/Project_Forder_File_Missing.png"/>
<img alt="Correct_Files_Conflict" height="200" width="300" src="PhotoFrame/README_images/Correct_Files_Conflict.png"/>
<img alt="After_Git_Stash" height="100" width="300" src="PhotoFrame/README_images/After_Git_Stash.png"/>

---

### UIKit View Management 클래스 중 UITabBarController / UITabBar

UIKit에 포함된 View Controllers를 관리하는 UIKit View Management 클래스들은 하위 뷰 컨트롤러들을 이용하고 이동하는 인터페이스를 제공한다.

#### UITabBarController

**Container View Controller의 일종으로, 선택 가능한 다수의 인터페이스를 관리하는 뷰 컨트롤러 클래스입니다. 여기서 '선택'이란 어떤 하위 뷰 컨트롤러를 보여줄지 결정하는 것입니다.**

다른 뷰 컨트롤러 클래스와는 다르게 서브클래싱을 꼭 하지 않는 경우도 많은 클래스이다. 간단히 말해 탭에 따라 완전 다른 정보들 혹은 같은 정보의 다른 인터페이스들을 보여주는 것인데, 이것은 뷰를 보여주는 root viewcontroller를 바꾸는 것이다.

위에 설명한 부분은 강조할 필요가 있겠다.

![UITabBarController_Complement_Image](PhotoFrame/README_images/UITabBarController_Complement_Image.jpg)

1. Tab1을 탭한 상태로 앱이 실행되었다. Tab1에는 Tab1's root ViewController가 있으므로, ViewController가 제공하는 화면이 화면에 출력된다.   
   몇 가지 화면을 들어가면서 여러 View들이 쌓이게 되었다. 이제 Tab2를 탭 해본다.
2. Tab2에는 Tab2's root ViewController가 있다. Tab을 바꿈으로써 root ViewController가 바뀌고, 새로운 root ViewController가 제공하는 화면이 출력된다.   
   몇 가지 화면을 더 들어가본다.
3. Tab1으로 돌아온다. 이전의 Tab1's root ViewController로 root ViewController가 바뀐다. root ViewController에 의해 보이던 화면들이(Tab1's root ViewController에 의해 제공되던 화면, Child View Controller도 hierarchy 그대로) 보이게 된다.

관련 클래스로는 Tab 자체를 표현하는 UITabBarItem 클래스가 있다.

#### UITabBar

**특정 탭 바 안의 모든 버튼들은 표시하고, 버튼 선택에 따라 하위작업, 뷰, 앱 모드들을 선택할 수 있도록 한다.**

주로 UITabBarController의 하위 요소로서 사용되지만, 단독적으로 사용되기도 하다. UITabBar는 UITabBarItem이 선택될 경우 delegate 객체에 정보를 알리게 되고, 이 객체를 개발자 맘대로 다룰 수 있게 된다.

참고로 UITollbar는 전혀 다른 클래스이다. UITabBar는 UITabBarItem이 앱의 모드를 바꾸기 위해 사용하는 뷰라면, UIToolBar는 사용자가 현재 화면(컨텐츠)에서 할 수 있는 액션들을 모아놓는 곳이다.

UITabBar를 따로 생성하는 방법은 Interface Builder 를 이용하거나, Programmatically하게 만드는 방법이 있다. 구현이 완료되면 UITabBarDelegate 프로토콜을 구현한 클래스에서 UITabBar가 전달하는 report(각 탭을 탭할 경우 발생)를 받거나 부수적인 처리를 손쉽게 할 수 있도록 도와준다.   
자세한 사항은 다음의 문서를 참고한다 ([UITabBar Apple Documentation](https://developer.apple.com/documentation/uikit/uitabbar))

---

## Step2 : IBOutlet 실습

- [x] Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
- [x] 레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.
- [x] UILabel의 속성을 이용하여 여러 작업을 수행한다.
- [ ] UILabel에서 Lucas에 언급되지 않은 속성들에 대해서도 공식문서를 찾아본다.

### 결과 화면
![Step2_Result](PhotoFrame/README_images/Step2_Result.png)

### 학습한 내용에 대한 간단한 정리

* Interface Builder 의 `Control`+Drag 를 통해 원하는 요소를 다른 요소와 관계시키거나, 커스텀 클래스에 참조시킬 수 있다.
* 컨트롤 드래그 를 이용하여 요소끼리 관계를 맺을 경우 각 요소의 위치 제약조건을 설정하게 된다.
* 커스텀 클래스에서 참조할 경우 변수명 앞에 `@IBOutlet`이 붙게 되고 `weak`도 추가 되어 있다.
* 특히 weak에 대한 부분은 `Reference Count와` `View Life Cycle`에 연관된 문제로 간단히 살펴볼 필요가 있음(깊이 들어가게 되면 이번 주 스텝 학습에 지장이 될 것으로 예상).

---

### GitHub Push Error Alert AGAIN!

PR이 git merge가 되었다는 소식을 듣고는 main branch로 이동 후 fetch 다음 rebase 하더니 계속 Conflict가 발생하였다.   
<img alt="Step2_Git_Rebase_Proceeding" height="350" src="PhotoFrame/README_images/Step2_Git_Rebase_Proceeding.png" width="450"/>
<img alt="Step2_Git_Rebase_Complete" height="200" src="PhotoFrame/README_images/Step2_Git_Rebase_Complete.png" width="300"/>   
커밋을 되돌리는 git restore 명령어를 이용하여 충돌을 계속 해결하며 rebase를 실행시켜 나갔지만 이후에 많은 파일에서 이런 종류의 내용들이 추가되기 시작했다.

```
<<<<<<<< HEAD

=============
```

프로젝트 파일을 여니 이런 오류도 발생하였다.

```
The project ‘project’ is damaged and cannot be opened due to a parse error. Examine the project file for invalid edits... control conflicts
```

구글링을 해보니 `xcodeproj` 파일 안에 `pbxproj` 파일을 열어보면 위의 'HEAD' 같은 중복되는 내용들이 발견되면 수정해주라는 내용이었다.   

**문제가 되는 파일을 미리 복사해두고 불필요한 부분을 지우니 프로젝트 파일을 열 수 있었다.**

---

### UILabel Complement Study

현업에 들어가게 될 경우 가장 많이 사용하게 될 UILabel에서 특이한 뷰를 만들 때 사용할 두 개의 주제에 대해 실습 없이 내용만을 업데이트 해 보도록 한다.

### Attributed Strings

NSAttributedString 객체를 attributedText 에 반영하는 식으로 적용하도록 한다. attributedText, text 프로퍼티 상관없이 최종적인 내용은 가장 최신 반영내용을 그대로 보여주게 된다.

UILabel의 attributedText 프로퍼티는 각 문자(혹은 다수의 문자)의 형태를 결정하기 위한 프로퍼티이다. NSAttributedString API를 사용하여 적용을 하게 되며, 문자열의 font/color/alignment를 설정하게 된다.   
attributedText에 설정값만 바꾸게 되면 라벨은 설정값을 오버라이드하여 적당한 설정으로 바꾸게 된다. 예를 들어 color를 변경하였을 때 모든 글자의 색은 바뀌지만, 굵은 글씨 형태나 이탤릭체 형태 등은 바뀌지 않는 것이다.

만약 UILabel 컨텐츠의 형태가 일정하다면 NSString 객체를 text 프로퍼티에 적용하는 것도 좋다. NSString에는 font/color/alignment/lineBreakMode 프로퍼티 등이 설정되어 있다.

Interface Builder에서 많이 사용하게 될 속성은 글자 크기에 관한 부분이다. adjustsFontSizeToFitWidth, minimumScaleFactor 등 각 속성에 대한 부분은 다음 기회에 추가로 설명할 수 있도록 하겠다.

### textRect(forBounds:limitedToNumberOfLines:)

이 메소드는 라벨의 컨텐츠가 나타날 영역을 표시할 때 사용하는 메소드이다. textRect(forBounds:limitedToNumberOfLines:)를 오버라이드하면 numberOfLines를 보고 컨텐츠가 보일 양을 조절할 수 있는 등 유용하게 사용할 수 있다.

호출을 위해서는 sizeToFit()/sizeThatFits() 가 선행 호출되어야 함을 주의한다. 

---

# Git for CodeSquad

코드스쿼드에서 깃을 사용하면서 계속 오류가 발생하고 있다. 이대로는 안된다..... 한번 제대로 정리하지 않으면 끝나지 않는 오류의 늪으로 갈 것 같다.....

## 명령어 정리
1. clone (git clone url)

기존의 레포지토리 혹은 대상으로 정한 레포지토리의 복제본을 만듭니다.   
해당 명령어는 Git URL 이 지원하는 프로토콜을 따라야 합니다.
* 로컬 또는 원격 레포지토리 복제
* 최초(bare) 레포지토리 복제
* 단순(shallow) 복제 옵션을 사용하여 레포지토리 부분을 복제

<예시>
```
/* repo 주소(<repo>)에 있는 레포지토리를 특정 디렉토리(<directory>)로 복사 합니다. */
git clone <repo> <directory>
// 특정 디렉토리로 복사 레포지토리를 위치시킴
git clone https://........ /Users/Beck/Desktop/workSpace/MyProject
/* repo 주소(<repo>)에서 레포지토리를 복제한 뒤, 태그(<tag>)만 복제합니다. */
git clone --branch <tag> <repo>
// Head ref 다운로드 하지 않고 특정 브랜치만 복제.
git clone -branch feature_new https://........
```

2. checkout (+옵션 b 알아보기)   
Git에서 “체크아웃”이란 대상 엔터티의 다른 버전 간 전환을 의미합니다. 여기서의 엔티티는 파일, 커밋, 브랜치 세 가지입니다. 주로 브랜치 간의 전환을 할 경우 많이 사용하고, 커밋을 취소할 때도 종종 사용합니다.   
변경이 일어날 경우 프로젝트 기록(로컬 프로젝트 파일 및 폴더)에 변경 사항이 저장되기 때문에 읽기 전용 작업은 아닙니다. 그러므로, 브랜치 체크아웃 시에 저장된 버전 일치를 위하여 새 커밋을 모두 기록(Commit) 하도록 지시합니다.   
git checkout은 git branch와 밀접하게 작동합니다.

```
// 브랜치 중 develop 브랜치로 이동
$> (main) git branch
main
develop
$> (main)git checkout develop
$> (develop)

// 브랜치를 만드는 방법 1
$> (develop) git branch feature_new
$> (develop) git checkout feature_new
$> (feature_new)

// 브랜치를 만드는 방법 2
$> (develop) git checkout -b feature_new
$> (feature_new)

---

// 원격 브랜치에서 Git 체크아웃(fetch로 우선 컨텐츠를 모두 불러와야 함)
$> (main) git fetch --all
// 최신 Git 원격 브랜치 정보를 이용하여 체크아웃
$> (main) git checkout https://...../User/main/feature_new
// 이전 Git 원격 브랜치 정보를 이용하여 체크아웃
$> (main) git checkout -b feature_new main/feature_new
```

**detached HEAD**

_HEAD란 Git의 현재 스냅샷을 얘기합니다._ git checkout은 내부적으로 브랜치 혹은 커밋을 가리키도록 HEAD를 업데이트 하는 것입니다. 브랜치가 아닌 커밋을 체크아웃하면 detached HEAD 상태가 됩니다.   
detached HEAD는 경고입니다. 앞으로 수행할 모든 작업이 프로젝트 개발의 나머지 부분과 분리되어 있음을 뜻합니다. 이 상태에서 개발을 진행해버리면 돌아갈 수 있는 브랜치가 없습니다.   
개발은 항상 브랜치에서 이뤄져야 한다는 중요한 점을 다시 한번 강조합니다. 분리된 커밋에서 새 커밋이 발생하면 이전 커밋과의 관계가 애매해집니다.

3. branch (+옵션 d 알아보기)   
브랜치 만드는 명령어다. 간단히만 보고 넘어가자. 브랜치는 커밋의 포인터일 뿐이다.

```
// 모든 브랜치 리스트를 보여준다.
git branch
// 원격 브랜치까지 모두 보여준다.
git branch -a
// 현재 브랜치(체크아웃 된)에서 특정 브랜치를 생성한다.
git branch feature_new
// 특정 브랜치를 삭제한다(safe).
git branch -d feature_new
// 특정 브랜치를 삭제한다(unsafe, unmerged commit 무시. 커밋 날려버릴 
때 좋음).
git branch -D feature_new
// 현재 브랜치(체크아웃 된)의 이름 변경
git branch -m feature_renamed
```

4. status   
현재 상태를 보여준다. 현재 상태라 함은 인덱스 커밋과 HEAD 커밋의 차이점을 경로 형태로 보여주는 것이다.
5. commit
6. rm   
단순히 지운다는 의미보다는, 다음 커밋을 의미하는 Git Index가 추적하고 있는 파일들을 삭제하는 것이다. 이는 Staging Area에 있는 파일이라고 해도 되겠다. 물론, Staging Area/Working Directory 둘 다 삭제하는 명령어도 가능하지만, 아쉽게도 Working Directory에서 삭제하는 방법은 존재하지 않는다. 또한, 브랜치도 삭제 불가하다.   
주의할 점은 현재 HEAD의 파일과 Staging Index의 파일 버전이 일치해야 한다는 것이다. 만약 일치하지 않으면 Git에 의해 명령어가 차단된다.   
git repository에서 staging area/working directory 모두 파일 삭제를 하고 싶은 경우는 Shell에서 rm 명령어와 git add를 같이 쓴다.
```
git rm file1
git rm file1 file2 file3
// -f force 옵션은 Git 자체에서 수행하는 HEAD 와의 버전 검사를 무시한다.
git rm -f file1
// 미리 시뮬레이션 해보고 결과를 볼 수 있는 -n 혹은 --dry-run 옵션.
git rm -n file1
git rm --dry-run file1
// cached 옵션을 이용해서 Staging-Index만을 지우도록 할 수 있다.
git rm --cached file1
// -q는 결과를 숨긴다.
git rm -q file1

// git rm을 취소하는 방법은 reset, checkout 두 개의 방법이 있다.
git reset HEAD
git checkout .
```
7. add
8. push
9. pull request
10. remote add
11. fetch ([번역 : Git fetch와 pull, pull은 이제 그만!](https://merrily-code.tistory.com/124))
12. rebase([4. git merge와 git rebase의 차이](https://hajoung56.tistory.com/5))   
adsf
13. merge([4. git merge와 git rebase의 차이](https://hajoung56.tistory.com/5))   
asdf
14. git reset과 git revert ([Git reset과 revert 알고 사용하기](https://velog.io/@njs04210/Git-reset%EA%B3%BC-revert-%EC%95%8C%EA%B3%A0-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0))   
HEAD 브랜치 이동. 정확히는 브랜치가 가리키는 커밋을 바꾼다. -> 바뀐 커밋 이후의 커밋은 지운다.   
현재 HEAD에서 revert 하면 현재 커밋의 이전 커밋을 뜻하는 새로운 커밋을 만든다. -> 이전 커밋을 뜻하는 새로운 커밋에서 또 revert를 하면 이전의 이전 커밋을 뜻하는 커밋을 또 만든다.
