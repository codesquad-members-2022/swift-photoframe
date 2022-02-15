# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## Step 2 

### IBOutlet 생성방법 및 사용법.
- 생성된 view 안에서 Library 에 있는 요소들중 원하는 오브젝트를 골라 원하는 위치에 놓고 오른쪽 클릭 + 해당하는 클래스에 로 드래그하여 IBOutlet 키워드를 사용하여 변수 생성가능
- 거꾸로 View 안에 지정된 custom class 에서 IBOulet 생성후, 매칭해줄수도 있음.
- 오브젝트 속성 값은 Interface builder 를 통해서도 바꿀수 있지만, View 의 Custom class 안에서도 속성변경가능 


### UILabel 의 사용처 
- [UILabel 사용처 와 사용방법](https://sodocumentation.net/ios/topic/246/uilabel) 
- Read-Only Text view 이고, 여러 라인의 정적인 텍스트를 쓸때 주로 사용된다. 



Strong or weak reference? 



- 미션에서 설명하길 "Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다." 라고 되어있는데 First Scene 에 'First View' 레이블이 없어서 한참을 해맸다. 


<!---->
<!--### 1.1 기능요구사항-->
<!--- [X] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.-->
<!--- [X] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.-->
<!--- [X] 스토리보드에서 TabBar Controller를 직접 추가한다.-->
<!--- [X] 특정한 시뮬레이터를 하나 골라서 실행한다. = Iphone 11-->
<!--- [X] readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.-->
<!--- [ ] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.-->
<!--- [ ] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.-->
<!---->
<!---->
<!--### 1.2 프로그래밍 요구사항-->
<!--- [X] TabBar Controller를 추가하고 Initial ViewController로 지정한다.-->
<!--- [X] 기존에 스토리보드에 만들어졌던 ViewController는 지워도 된다.-->
<!--- [X] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다-->
<!---->
<!--#### 2022.02.15 회고-->
<!--- [CodeSquad](https://www.hackerrank.com/challenges/save-the-prisoner/problem) 에서 자신의 이름으로된 브랜치 를 생성하고 셋팅 작업을 했는데 처음으로 git hub 을 써보는거여서 아직 많이 어설프다. 특히 로컬 브랜치들간의 checkout 과 로컬 브랜치에 step1 이라는 브랜치를 왜 만들어야하는지 이해하는데 힘들었다. step1,2,3 를 만드는이유는 step 마다 작업을하면 그 브랜치의 이름이 일종의 save point 역할을 하여 나중에 revert 이나 reset 할경우 알아보기 쉽게 로그를 확인할수 있게 한다는 것으로 이해했다. -->
<!--- IOS 의 Storyboard 프로젝트를 만들어 기능요구사항 과 프로그램 요구사항 에 맞추어 미션을 부분도 많이 해맸다. Xcode 13 의 App Interface 는 storyboard 과 swiftUI 로 나뉘는데 swiftUI 는 storyboard 가 없었다. swiftUI 는 storyboard 의 단점을 보안하기위해 나온 프래임워크 라고 한다. (스토리보드는 시간이 지남에 따라 급격하게 커지고, 협업 및 유지 보수하기에도 매우 까다로워서 iOS 혹은 애플 플랫폼 개발자들 중에는 이러한 스토리보드 방식을 안 좋아하는 경우가 많다) -->
<!--- 마지막으로 view Controller 의 계념 과 관련 용어들을 눈으로 익히고 사용해보는데 낯설고 어색했다.-->
<!---->
