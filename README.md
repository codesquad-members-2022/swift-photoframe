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

## 7. [Image View](https://developer.apple.com/documentation/uikit/uiimageview)

![](https://user-images.githubusercontent.com/17468015/154629194-7353cd10-4d39-4da1-9369-2332083b1c91.png)


- `UIImage` 객체를 담아 보여주는 뷰.


### Scale
![](https://s3.us-west-2.amazonaws.com/secure.notion-static.com/589ab1bf-80c9-4c7c-9069-b5454e4a852b/Untitled.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20220218%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20220218T061139Z&X-Amz-Expires=86400&X-Amz-Signature=5dc9e03eb58c9b8c9aaf77962dbcd878aeb4c25af190c26ee0fc56ea51327c26&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22Untitled.png%22&x-id=GetObject)

** Aspect Fit **
- Aspect 비율을 유지하고 맞지 않는 영역은 남긴다.

**Aspect Fill**
- Aspect 비율을 유지하되 모든 영역을 채운다. 일부 이미지는 잘려나간다.

**Scaled to Fit**
- 이미지 비율을 깨뜨리고 모든 영역을 채운다. 이미지가 잘리지 않는다.

### 투명도

- 이미지는 먼저 이미지 뷰의 배경에 합쳐지고, 그 다음 나머지 창과 합쳐지는 식으로 렌더링
- 이미지에 투명도를 주면 이미지 뷰 뒤 배경이 보이게 된다.
- 하지만 ImageView의 투명도와 Image 주어진 투명도가 다를 수 있다.
- 이미지와 이미지 뷰가 둘다 투명도를 가지고 있다면, (이미지 뷰 Opaque 속성이 false라면) 이미지 뷰는 둘을 합치기 위해서 ‘Alpha blending’을 사용한다.
- 이때, 이미지의 알파값은 이미지 뷰의 알파값에 곱해진다. 만약 이미지가 알파값을 가지고 있지 않다면 1.0으로 간주한다.
- 이미지 뷰가 Opaque 속성이 true라면, (투명하지 않도록 설정되어있다면) 이미지 픽셀이 이미지 뷰의 배경 색과 합쳐지고, 이미지 뷰의 투명도 알파 값은 신경쓰지 않는다.
- 알파 값을 합성하는 것은 상당히 비싼 작업이다. 만약 shadow 애니메이션까지 쓴다면 더 심해질 것이다. 만약 투명도가 꼭 필요하지 않은 경우라면, isOpaque를 항상 true로 설정하자.

### 이벤트
- Image View는 기본적으로는 유저 이벤트를 무시한다.
- 만약 이벤트를 받고 싶다면 `isUserInteractionEnabled` 를 true로 바꿔줘야 한다.

### 이미지 뷰 성능 높이기
- 이미지 스케일링과 투명도 (알파) 블렌딩은 상대적으로 비싼 작업이다. 둘을 최대한 줄이기 위해서 이렇게 해보자.
1. 자주 사용되는 이미지의 Scale된 버전을 캐싱해라.
   - 만약 특정한 큰 이미지가 작은 썸네일로 줄여져서 보이는 경우가 자주 일어난다면, 작게 줄인 이미지를 미리 준비해서 썸네일 캐시에 미리 저장한다.
   - 스케일링 오버헤드가 줄어든다.
2. 이미지 뷰와 비슷한 사이즈의 이미지를 사용하라.
   - 큰 이미지를 이미지 뷰에 맞게 배정하기 보다는, 미리 이미지 뷰 사이즈에 맞게 스케일된 이미지를 만들어라.
3. 이미지 뷰를 Opaque로 만들어라.
   - isOpaque는 꼭 필요한 경우가 아니라면 true로 해라.

### [심볼 이미지 (아이콘)](https://developer.apple.com/documentation/uikit/uiimage/configuring_and_displaying_symbol_images_in_your_ui)

- UIkit에서 심볼은 이렇게 생성한다.
```swift
// 내장 심볼: Create a system symbol image.
let image = UIImage(systemName: "multiply.circle.fill")                  

// 커스텀 심볼: Create a custom symbol image using an asset in an asset catalog
let image = UIImage(named: "custom.multiply.circle")
```

- 심볼 이미지는 일관된 아이콘 셋이다. 벡터 이미지라서 확대해도 깨지지 않는다.
- tint-color를 적용하면 색깔을 바꿀 수 있다.
- 심볼은 이미지지만, 텍스트와 비슷한 속성을 몇가지 지원한다.
    - thin, heavy, bold 같은 속성을 적용할 수 있다.
    - 텍스트 크기와 맞게 스케일을 조정할 수 있다.
    - 심볼과 같이 쓰이는 텍스트의 베이스라인을 정렬할 수 있다.
- `[UIImage.SymbolConfiguration](https://developer.apple.com/documentation/uikit/uiimage/symbolconfiguration)` 을 사용하면 심볼 이미지 스타일을 바꿀 수 있다. 텍스트 스타일이나 웨이트 등을 바꿀 수 있다. 
- 보통 심볼의 설정값은 심볼을 보여주는 이미지 뷰에 저장한다. `[preferredSymbolConfiguration](https://developer.apple.com/documentation/uikit/uiimageview/3295948-preferredsymbolconfiguration)` 라는 이미지 뷰의 속성이 있는데 여기에 설정을 집어넣을 수 있다.
- `[UIImage.SymbolConfiguration](https://developer.apple.com/documentation/uikit/uiimage/symbolconfiguration)` 을 설정한다음, 설정 객체를 이미지 뷰에 집어넣는다.

```swift
// Create a configuration object that’s initialized with two palette colors.
var config = UIImage.SymbolConfiguration(paletteColors: [.systemTeal, .systemGray5])

// Apply a configuration that scales to the system font point size of 42.
config = config.applying(UIImage.SymbolConfiguration(font: .systemFont(ofSize: 42.0)))

// Apply the configuration to an image view.
imageView.preferredSymbolConfiguration = config
```
