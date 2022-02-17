# swift-photoframe

## 1. 프로젝트 생성하기

- iOS App 프로젝트를 생성한다. 
- TabBar Controller를 추가한다. 
- Initial ViewController로 지정한다.
- 첫번째 Scene을 `ViewController`와 연결한다.
- viewDidLoad() 함수에 `print(#file, #line, #function, #column)`를 추가, 실행한다. 

![Tab bar](/PhotoFrame/PhotoFrame/Assets.xcassets/Screenshot1.imageset/Screenshot2.png)

![Console](/PhotoFrame/PhotoFrame/Assets.xcassets/Screenshot2.imageset/Screen Shot 2022-02-15 at 2.50.11 PM.png)

## 2. Label에 IBOutlet 연결 

-  첫번째 View controller에 label 생성
-  text, fontSize, color, backgroundColor 변경
-RGB 값으로 편하게 UIColor를 만들기 위한 extension 생성
- Description Label 생성 후 fontSize, color, backgroundColor 변경


## 3. Button에 IBAction 연결

- '다음' 버튼을 만들고 IBAction 연결
- IBAction에 Label 변경 코드 추가
- 2개 버튼에 1 액션 / 1개 버튼에 2 액션 어떻게 되는지 테스트
- Code Review가 끝나지 않은 상태에서 새로운 Branch 생성하여 2연속 PR 연습.
- 지난 PR에서 피드백 받은 UIColor 코드 줄바꿈 통일

## 4. Scene 생성 & (Unwind) Segue 연결

 -  새로운 Scene (gray)을 만들고 Segue 연결
 - 또 다른 Scene (yellow)를 만들고 Segue 연결
 - First View controller로 이동하는 Unwind Segue 연결
 - 지난 PR에서 피드백 받은 UIColor 인자(Int) 값 예외처리
 
 ## 5. ViewController 연결 & 화면 전환
  
 - GrayViewController와 YellowViewController를 추가하고 Storyboard와 연결
 - Gray, Yellow에 각각 Close Button을 구현
 - ViewController의 Lifecycle 마다 print를 찍어서 각 함수 호출 시점 확인
 - 코드를 사용해 YellowViewController를 보여주는 Action 추가

## 6. Navigation Controller 사용

---
### 학습 정리 Container View Controller

#### 화면을 전환하는 3가지 방법
- 직접 하거나
- Storyboard에서 하거나,
- Container View Controller를 이용한다.

#### Content VC & Container VC
- ContentVC는 직접 내용을 보여주는 일반적인 VC이다.
- Container VC는 직접 무언가를 보여주는 역할은 없음. VC 간에 부모-자식 관계를 형성하여 자식 VC를 관리하는 역할이다.
- viewControllers 라는 프로퍼티 안에 배열 형태로 하위 뷰들을 저장한다.
- setViewControllers 를 통해 root View를 지정할 수 있다.

#### Container VC가 필요한 이유
매시브 뷰 컨트롤러 현상을 막기 위해서다.
콘텐츠 VC에서 Navigation (라우팅) 로직을 분리해준다.
직접 코드로 화면을 띄우게 되면, 뷰 콘트롤러 안에서 직접 뷰 컨트롤러를 생성하고, 의존성을 주입하고, 화면에 띄워주는 역할까지 콘텐츠 VC가 하게 된다.
역할이 너무 많아진다. 따라서 이걸 별도 객체로 분리해낸 것이 Container VC이다.

#### Navigation Controller / Tapbar Controller
- 탭바 컨트롤러, 네비게이션 컨트롤러를 가장 많이 씀.
- 거의 모든 iOS 앱에서 사용된다고 해도 과언이 아닌 자주 사용된다. 
- Navigation Controller TabBar Controller가 iOS의 양대 컨트롤러

#### Navigation Controller
- 기본 동작
  - only one child view controller is visible at a time.
  - Selecting an item in the view controller pushes a new view controller onscreen using an animation, thereby hiding the previous view controller    
  - Tapping the back button in the navigation bar at the top of the interface removes the top view controller, thereby revealing the view controller underneath.
- 네비게이션 스택 navigation stack
  - Push / Pop 오퍼레이션으로 작동한다.
  - The first view controller in the array is the root view controller and represents the bottom of the stack.
  - The last view controller in the array is the topmost item on the stack, and represents the view controller currently being displayed
- Navigation Bar 관리
  - 상단에 노출되는 네비게이션 바를 Navigation Controller가 관리한다.
- Tool Bar
  - 하단에 노출되는 툴바. 옵션이다.

- Navigation Controller Delegate
  - 하위에 있는 View들은 입력을 받거나 정보를 전달할 때 Delegate 패턴을 사용한다.
- View Hierachy
  - 네비게이션 컨트롤러의 view 프로퍼티에는 view들의 위계구조가 저장되어있다.
  - 여기에 navigation bar, an optional toolbar 그리소 실제로 보여주는 content view 가 들어있다.
  - ![](https://docs-assets.developer.apple.com/published/83ef757907/NavigationViews_2x_e69e98a2-aaac-477e-9e33-92e633e29cc7.png)

- (Tip) 화면 전환시 Push보다는 Show를 쓰는 것이 좋다.
  - 만약 이동하고 싶은 VC가 NavigationVC 안에 있다면, 상관이 없다.
  - 하지만 항상 그렇지는 않다. 만약 아이패드 프로 앱에서 앱이 돌아간다면, 우리는 우리 콘텐츠 뷰 컨트롤러를 Split View Controller 안에서 보여줄 수도 있다. 이럴 때는 Push가 통하지 않는다.
  - Show 메서드가 더 나은 이유다. Navigation Controller 안에서 show를 하게 되면, push와 완전히 똑같이 작동한다. 다만 예외 상황이 있을 경우에도 show는 문제없이 해당 VC를 보여준다.
