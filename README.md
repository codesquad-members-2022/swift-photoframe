# swift-photoframe

## Step1 : 프로젝트 생성하기

[x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
[x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다.
[x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다.
[x] 자동 생성된 ViewController 클래스 `viewDidLoad()` 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다.

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
