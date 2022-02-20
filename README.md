# swift-photoframe
iOS 포토프레임 프로젝트 저장소

# Step1. 프로젝트 생성하기

1. 스토리보드에서 TabBar Controller 추가 후, 첫번째 Scene의 Custom Class를 ViewController로 지정
2. 기존의 ViewController는 삭제
<img width="457" alt="스크린샷 2022-02-14 오후 10 53 56" src="https://user-images.githubusercontent.com/95578975/153877063-8179b860-3ee8-4036-8ae8-8188c19cab59.png">

3. viewDidLoad() 함수 내에서 아래 코드 입력

```swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // print 출력 결과
        // 15 /Users/ansanghee/CodeSquad/iOS-Class/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 16 viewDidLoad() 49
        print(#column, #file, #line, #function, #column)
    }
}
```

- file: 현재 파일의 경로 / The name of the file in which it appears.
- line: print문의 라인 위치 / The line number on which it appears.
- function: 현재 실행 중인 함수 이름 / The name of the declaration in which it appears.
- column: 제일 왼쪽에서부터 커서의 수. 예를 들면 위의 viewDidLoad() 내에서 첫번째 column은 15, 두번째 columndms 49를 출력한다. / The column number in which it begins.


### 💡 학습 키워드
- [UITabBar](https://developer.apple.com/documentation/uikit/uitabbar)
- [UITabBarController](https://developer.apple.com/documentation/uikit/uitabbarcontroller)


# Step2. IBOutlet 연결하기

## ✏️ 작업 목록

- [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.

- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.

- [x] 연결한 아웃렛 변수에 값을 변경한다.

- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

## 🤔 고민과 해결

### 1️⃣ 코드로 색상을 변경하기

#### 방법1. #colorLiteral

colorLiteral을 사용하여 직접 색을 선택하여 설정하였습니다.

![스크린샷 2022-02-15 오후 2 59 50](https://user-images.githubusercontent.com/95578975/154001698-418eb90e-8522-4ef6-a2e4-8dafccbe548c.png)



#### 방법2. UIColor(red:green:blue:alpha:) 

###### ❌ 실패 : 파라미터로 정수 값 전달

처음에는 파라미터로 정수 값을 전달했는데, 지정한 색이 나오지 않았습니다.

```swift
UIColor(red: 250, green: 197, blue: 210, alpha: 1)
```



###### ⭕️ 해결방법 : 위의 정수 값을 255.0으로 나눠줌

```swift
UIColor(red: 250 / 255.0, green: 197 / 255.0, blue: 210 / 255.0, alpha: 1)
```

UIColor에서 파라미터로 CGFloat 형식이 오고, 이는 0에서 1 사이의 값을 가져야한다고 합니다.![스크린샷 2022-02-15 오후 2.59.24](/Users/ansanghee/Library/Application Support/typora-user-images/스크린샷 2022-02-15 오후 2.59.24.png)

RGB는 8비트이기 때문에 각 색상의 가능한 범위는 0 - 255 (2^8 = 256)이고, 조합할 수 있는 범위는 256 * 256 * 256입니다.

0 - 255의 범위를 255로 나누면 0.0 - 1.0의 범위로 바뀌고, 여기서 0.0은 0 (0x00)을 의미하고, 1.0은 255(0xFF)를 의미합니다.



CGFloat이 아닌 UIColor(hex: )와 같이 사용하려면, UIColor extension을 이용해야하는데 직접 한번 구현해볼 예정입니다. 



#### 방법3. UIColor(cgColor: CGColor(red:green:blue:alpha:))

```swift
UIColor(cgColor: CGColor(red: 250 / 255.0, green: 197 / 255.0, blue: 210 / 255.0, alpha: 1))
```

위의 방법2와 무슨 차이가 있는지 궁금해서 UIColor, CGColor 문서를 찾아보았습니다.

UIColor는 cgColor 속성을 갖고 있습니다. 그리고 UIColor는 UIKit에서 널리 사용되는 반면 cgColor는 이름에서 알 수 있듯이 CoreGraphics와 CoreAnimation 함수에만 사용된다고 합니다. [출처](https://stackoverflow.com/questions/48260237/difference-between-cgcolor-and-uicolor)

###### [CGColor](https://developer.apple.com/documentation/coregraphics/cgcolor)

- CGColor is the fundamental data type used internally by Core Graphics to represent colors. CGColor objects, and the functions that operate on them, provide a fast and convenient way of managing and setting colors directly, especially colors that are reused (such as black for text). CGColor is derived from CFTypeRef and inherits the properties that all Core Foundation types have in common.
- Generally `CGColor` is used to apply color operations with Core Graphics contexts like CGImage, CGLayer etc...

###### [UIColor](https://developer.apple.com/documentation/uikit/uicolor)

- An object that stores color data and sometimes opacity (alpha value). When performing custom drawing, a UIColor object provides methods that set the fill or stroke colors of the current graphics context. ***A UIColor object is typically represented internally as a Core Graphics color (CGColor) in a Core Graphics color space (CGColorSpace).*** There are methods and properties that return the underlying color data.
- UIColor, is used to apply color operations on UIKit interface elements like UIImage, UIView etc...

ㅤ

#### + 참고) 색상을 선택하면 바로 Swift Code로 변환해주는 사이트 [바로가기](https://www.ralfebert.com/ios/swift-uikit-uicolor-picker/) 



### 2️⃣ 스토리보드가 아닌 코드로 화면 구현하기

- 스크럼 때 스토리보드를 전혀 사용하지 않고 코드로 하신 분이 계셔서 저도 코드로 한번 구현해보아야겠다고 생각했습니다.

- 라벨의 위치를 오토레이아웃이 아닌 코드로 구현해보았습니다. UIView의 Creating Constraints Using Layout Anchors를 참고하였고 Step 1의 미션도 다시 코드로 구현해볼 예정입니다. 
- 아직 공부를 더 해야한다고 생각하기 때문에 다음 PR 때 추가로 내용 작성하겠습니다!



### 💡 학습 키워드

- [UIColor]() vs [CGColor]()
- #colorLiteral

- [CGFloat](https://developer.apple.com/documentation/coregraphics/cgfloat)
- [UIView](https://developer.apple.com/documentation/uikit/uiview)
- AutoLayout
- [UILabel](https://developer.apple.com/documentation/uikit/uilabel)


### 📱 실행 화면
<img width="350" alt="스크린샷 2022-02-15 오후 4 35 00" src="https://user-images.githubusercontent.com/95578975/154014196-177b1be8-6fb5-4397-9961-74f78297c69e.png">


# Step3. IBAction 연결하기

## 💻 작업 목록

- [x] 사진액자 - IBOutlet 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- [x] 연결한 액션에 대한 메서드를 구현한다.
- [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.

## 🤔 고민과 해결

### 1️⃣ UIButton 구현하기

##### 방법1. firstButton을 먼저 선언하고, viewDidLoad() 내에 다음과 같이 구현. 그리고 objective-c 함수를 이용

```swift
let firstButton = UIButton(type: UIButton.ButtonType.system) as UIButton

@objc func buttonTapped(_ sender: UIButton) {
                print("\(sender.titleLabel?.text!) Button tapped")
}

override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstButton.frame = CGRect(x: self.view.center.x, y: 150, width: 150, height: 45)
        self.firstButton.backgroundColor = UIColor.systemPink
        self.firstButton.setTitle("Tap me!", for: UIControl.State.normal)
        self.firstButton.tintColor = .white
        self.firstButton.addTarget(self, action: #selector(self.buttonTapped), for: .touchUpInside)
        self.view.addSubview(firstButton)
}
```

- UIButton을 먼저 생성한 후, 뷰에 위치를 지정합니다.
- UIButton의 속성을 설정합니다.
- UIButton에 action을 추가합니다. 여기서 addTarget(_:action:for:)은 event 중 UIControl의 action입니다. control에서 지정한 이벤트를 수행하면, 이와 관련된 작업이 지정된 target에게 전달됩니다. 
  - target은 self이고, action에서 #selector 내로 지정된 함수가 호출됩니다. 여기서 호출되는 함수는 objective c입니다.

- 마지막으로 view에 UIButton을 addSubview를 하면 됩니다.

##### 방법2. Anchor를 이용하여 구현. viewDidLoad() 내에 추가한 코드.

###### 1. 문제 발생

```swift
thirdButton.translatesAutoresizingMaskIntoConstraints = false

thirdButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
thirdButton.widthAnchor.constraint(equalToConstant: 275).isActive = true
thirdButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
thirdButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true

thirdButton.setTitle("세번째 버튼입니당", for: .normal)
thirdButton.setTitleColor(.white, for: .normal)
thirdButton.backgroundColor = .purple
self.view.addSubview(thirdButton)
```

<img width="551" alt="스크린샷 2022-02-16 오후 3 34 34" src="https://user-images.githubusercontent.com/95578975/154209494-e20acba7-d8e2-4d4f-97e9-454b7d107ced.png">

- 오류 메시지를 보면 "Unable to activate constraint with anchors~~~~ and ~~ because they have no common ancestor. Does the constraint or its anchors reference items in different view hierarchies? That's illegal"이라고 되어있습니다. 
- 해석해보면, "앵커를 사용하여 제약 조건을 활성화할 수 없습니다. 제약이나 앵커가 다른 뷰 계층의 항목을 참조합니까? 이는 불법입니다. "라고 되어있습니다.
- 이 오류는 UIButton이 상위 계층의 view에 접근 권한이 없기 때문에 발생한 오류입니다. addSubview는 상위 뷰와 하위 뷰를 연결시키고 접근 권한을 주는 메소드인데, 현재 addSubview는 뒤에서 호출되고 있습니다. 접근 권한이 없는데 상위 뷰에 접근하여 제약 조건을 활성화하려고 했기 때문에 발생한 오류입니다. 
- constraint를 주기 전에 먼저 UIButton을 addSubview() 해주어야 합니다. 

###### 2. 해결 코드

```
self.view.addSubview(thirdButton)
thirdButton.translatesAutoresizingMaskIntoConstraints = false

thirdButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
thirdButton.widthAnchor.constraint(equalToConstant: 275).isActive = true
thirdButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
thirdButton.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 150).isActive = true

thirdButton.setTitle("세번째 버튼입니당", for: .normal)
thirdButton.setTitleColor(.white, for: .normal)
thirdButton.backgroundColor = .purple
thirdButton.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
```

<img width="356" alt="스크린샷 2022-02-16 오후 3 54 41" src="https://user-images.githubusercontent.com/95578975/154212083-f678b0de-e97b-4ec1-99e4-7fcf01e74f66.png">

#### firstButton과 thirdButton을 탭했을 때의 차이를 알기 위해서 코드 수정

```swift
@objc func buttonTapped(_ sender: UIButton) {
    print("\(sender.titleLabel?.text) Button tapped")
    
    switch sender {
    case firstButton:
        self.firstLabel.text = "첫번째 버튼"
    default:
        self.firstLabel.text = "세번째 버튼!"
    }
}
```



## 📱 실행 화면

![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/95578975/154213213-1b420c87-dad2-4253-b099-1d246adee863.gif)

## ✏️ 추가학습거리

### 1. IBOutlet vs IBAction

- Scene에 추가된 UI와 코드를 연결하는 것으로, 둘 다 스토리보드와의 연결고리라고 할 수 있습니다.
- 연결되지 않은 IBOutlet과 IBAction이 클래스에 존재해도 되지만, 연결되지 않은 IBOutlet에 접근하게 된다면 오류가 발생합니다.
- IBAction을 사용해도 오류가 나지 않는 이유
  - 연결되지 않은 IBAction은 일반 메소드와 동일하기 때문입니다.

#### IBOutlet

- Scene에 추가된 UI에 접근할 때 사용으로, 변수입니다.
- 아울렛 선언 후에 반드시 Scene에 추가된 UI와 연결해야합니다. 연결하지 않고 이를 사용하려고 하면 오류가 발생합니다.

#### IBAction

- Control에서 발생한 이벤트를 처리하는 것으로, 메소드입니다.

#### @IBOutlet, @IBAction의 @는 무엇인가?

- 컴파일러에게 어떤 속성을 갖고 있다고 전해주는 역할을 하는 예약어이자 어노테이션입니다.
- 컴파일러에게 @가 붙은 명령어에 대해 어떤 attribute가 부여되었음을 말합니다.
- 따라서 @IBAction의 속성이 func 키워드 앞에 붙어있다면, 이 메소드는 Interface Builder에서 사용이 가능하며 UI로 연결이 가능하다는 의미를 가집니다.

### 2. 버튼에 IBAction을 추가할 때 이벤트의 종류

<img width="196" alt="스크린샷 2022-02-16 오후 8 54 40" src="https://user-images.githubusercontent.com/95578975/154259659-6ea34847-7d4e-45f3-bf65-cfad0e2f0b49.png">

##### Did End On Exit: 편집 후 포커스 없어짐

##### Editing Changed: 편집

##### Editing Did Begin: 편집 시작할 때

##### Editing Did End: 편집 종료될 때

##### Primary Action Triggered: 버튼에 의해 트리거된 semantic action

##### Touch Cancel: 터치가 취소될 떄

##### Touch Down: 터치 다운될 때

##### Touch Down Repeat: 여러 번 터치 다운될 때

##### Touch Drag Enter: 컨트롤 경계로 손가락이 드래그될 때

##### Touch Drag Exit: 컨트롤 내에서 경계 밖으로 손가락이 드래그될 때

##### Touch Drag Inside: 컨트롤의 경계 내로 손가락이 드래그될 때

##### Touch Drag Outside: 컨트롤의 경계 바로 밖으로 손가락이 드래그될 때

##### Touch Up Inside: 컨트롤에서 터치 업 할 때

##### Touch Up Outside: 컨트롤되지 않는 영역에서 터치 업 할 때

##### Value Changed: 값이 변경될 때



### 3. 버튼에 액션을 여러 개 추가할 수 있을까?

Second Button에 Action을 3개 추가했는데 오류가 나지 않고 잘 실행되었습니다.

<img width="182" alt="스크린샷 2022-02-16 오후 11 03 35" src="https://user-images.githubusercontent.com/95578975/154280507-a6d3cb20-de4b-4929-bb10-2aaec8232479.png">

<img width="623" alt="스크린샷 2022-02-16 오후 11 04 28" src="https://user-images.githubusercontent.com/95578975/154280662-1977e247-68ae-4a36-a02c-22788df38086.png">

<img width="202" alt="스크린샷 2022-02-16 오후 11 03 15" src="https://user-images.githubusercontent.com/95578975/154280457-05c2c248-5111-4f64-a43d-af6097f94da7.png">

### 4. 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?

testAction 메소드에 3개의 버튼을 동시에 연결해보았습니다. 잘 실행이 된 것을 확인할 수 있었습니다.

<img width="650" alt="스크린샷 2022-02-16 오후 11 12 36" src="https://user-images.githubusercontent.com/95578975/154282232-5f6c8aa1-520c-4e8c-8fa9-64b96e25b04e.png">

### 5. 하나의 버튼에 여러 아울렛을 연결할 수 있을까?

연결과 실행 모두 잘 되었습니다.

<img width="644" alt="스크린샷 2022-02-16 오후 11 25 34" src="https://user-images.githubusercontent.com/95578975/154284748-d142ccb1-8fde-46af-879f-7e573d8689ef.png">

### 6. 여러 버튼을 동시에 하나의 아울렛으로 연결할 수 있을까?

![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/95578975/154284440-b970723b-15f6-4063-b8de-ad42b25b6a82.gif)

버튼을 2개 만들고 먼저 하나의 버튼을 아울렛으로 연결하고, 또 다른 버튼을 거기에 연결하니 이전에 연결한 버튼의 아울렛이 사라졌습니다. 불가능합니다.


## 💡 학습 키워드

- [UIButton](https://developer.apple.com/documentation/uikit/uibutton)
- [UIControl](https://developer.apple.com/documentation/uikit/uicontrol)
- [translatesAutoresizingMaskIntoConstraints](https://developer.apple.com/documentation/uikit/uiview/1622572-translatesautoresizingmaskintoco)
- [addTarget(_:action:for:)](https://developer.apple.com/documentation/uikit/uicontrol/1618259-addtarget)
- IBAction
- IBOutlet vs IBAction
- obj-c


# Step4. Scene을 Segue로 연결하기

## 💻 작업 목록
- [x] Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
- [x] 앞 단계에서 추가한 [다음]버튼을 선택하고 `Control + 드래그`를 해서 새로 추가한 Scene에 연결한다.
- [x] 팝업으로 표시되는 Action Segue에서 `Show` 항목을 선택한다.
- [x] Scene과 Scene 사이에 화살표를 선택하면 Segue 속성을 변경할 수 있다.
- [x] 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다. 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.
- [x] 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다. 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다. 위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.
  - [x] 예를 들어 First Scene 다음에 추가한 화면이 Yellow 화면이었다면, First Scene에서 [다음] 버튼을 누르면 Yellow 화면이 표시되고, Yellow 화면에서 [다음] 버튼을 누르면 Blue 화면이 나오는 방식으로 두 단계 표시한다.

## 📱 실행 화면

![ezgif com-gif-maker (3)](https://user-images.githubusercontent.com/95578975/154428641-3af1b989-99d7-4e87-a03a-d2316c14c2de.gif)

## ✏️ 추가 학습 거리

### Action Segue 종류

Show, Show Detail은 동일하다. 다만 Show Detail은 UISplitViewController에서 다르게 적용된다.

#### Show

이 segue는 타겟 뷰 컨트롤러의 [showViewController:sender:](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621377-showviewcontroller) 메소드를 이용하여 새 콘텐츠를 표시한다. 대부분의 뷰 컨트롤러의 경우, 이 segue가 소스 뷰 컨트롤러를 통해 새 콘텐츠를 modally하게 보여준다. 일부 뷰 컨트롤러는 메소드를 오버라이드하여 다른 동작을 구현하는 데 상요한다. 예를 들어, 네비게이션 컨트롤러는 새로운 뷰 컨트롤러를 navigation stack에 push 한다.

UIKit은 [targetViewControllerForAction:sender:](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621415-targetviewcontroller) 메소드를 사용하여 소스 뷰 컨트롤러를 위치시킨다.

#### Show Detail

이 segue는 타겟 뷰 컨트롤러의 [showViewController:sender:](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621377-showviewcontroller) 메소드를 이용하여 새 콘텐츠를 표시한다. 이 segue는 UISplitViewController 객체에 내장된 뷰 컨트롤러에만 적용된다. 이 segue를 사용하면 분할 뷰 컨트롤러가 두번째 하위 뷰 컨트롤러 (디테일 뷰 컨트롤러)를 새 콘텐츠로 교체한다. 대부분의 다른 뷰 컨트롤러는 새 컨텐츠를 modally하게 표시한다.

[Example 1](https://stackoverflow.com/questions/26287247/what-are-the-differences-between-segues-show-show-detail-present-modally): In Mail on iPad in landscape, tapping an email in the sidebar replaces the view controller on the right to show the new email.

[Example 2](https://stackoverflow.com/questions/25966215/whats-the-difference-between-all-the-selection-segues): In Messages, tapping a conversation will show the conversation details - replacing the view controller on the right when in a two column layout, or push the conversation when in a single column layout

#### Present Modally

이 segue는 지정된 표시 및 변환 스타일을 사용하여 뷰 컨트롤러를 modally하게 표시한다. 적절한 presentation context를 정의하는 뷰 컨트롤러가 실제 presentation을 처리한다.

#### Present As Popover

수평으로 규칙적인 환경에서 뷰 컨트롤러는 popover로 나타난다. 수평으로 compact한 환경에서 뷰 컨트롤러는 full-screen modal presentation을 사용하여 표시한다.

#### Custom

Interface Builder는 뷰 컨트롤러를 표시하는 것부터 popover로 화면을 컨트롤러에 표시하는 것까지 하나의 뷰 컨트롤러에서 다른 뷰 컨트롤러로 전환하는 모든 표준 방법에 대한 segue를 제공한다. 그러나 내가 원하는 segue가 없을 경우, custom segue를 만들 수 있다.

##### Implementing a Custom Segue

Custom segue를 구현하려면, `UIStoryboardSegue` 를 subclass하고, 아래 메소드들을 구현하면 된다.

- `initWithIdentifier:source:destination:` 메소드를 오버라이드해서 custom segue 객체를 초기화하는데 사용한다. 항상 super를 먼저 호출한다.

- `perform` 메소드를 구현하여 전환 애니메이션을 구성하는데 사용한다.

![image](https://user-images.githubusercontent.com/95578975/154425681-c3d9a646-62b6-4716-938a-d9a74394bb1e.png)



실행화면은 모두 같았습니다. 

![ezgif com-gif-maker](https://user-images.githubusercontent.com/95578975/154419697-58b6459b-2da6-4e79-b713-84ff619b9f83.gif)



그래서 이번엔 아이패드로 변경하여 실행해보았습니다.

그 결과, Show, Show Detail, Present Modally는 모두 아래와 같은 화면이 실행되었습니다.

![ezgif com-gif-maker (4)](https://user-images.githubusercontent.com/95578975/154429795-e269ca6e-0691-4aed-bc54-07d9fb63fe2d.gif)



Present As Popover은 아래와 같은 화면이 나왔습니다.

![ezgif com-gif-maker (5)](https://user-images.githubusercontent.com/95578975/154429800-6a19a0e2-8bcc-49d6-a42f-36ec45a85f45.gif)

## 💡 학습 키워드

- [Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

- [Modality](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/modality/)
- [Popover](https://developer.apple.com/design/human-interface-guidelines/ios/views/popovers/)


# Step5. ViewController 연결하기

## 💻 작업 목록

- [x] 새로운 뷰 컨트롤러 2개 추가
- [x] 위에서 만든 뷰 컨트롤러에 닫기 버튼 추가 후 닫기 기능 구현
- [x] ViewController의 라이프 사이클 학습 및 실습
- [x] 두번째 뷰컨트롤러에서 Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법 적용하고 학습
- [x] Step5 README 작성하기


## 📱 실행 화면

![ezgif com-gif-maker (6)](https://user-images.githubusercontent.com/95578975/154621684-9a04544e-9281-4036-905d-da65eb817411.gif)

- FirstViewController -> PinkViewController, PinkViewController -> MintViewController로 넘어갈 때 viewWillDisppear, viewDidDisappear 메소드가 호출되지 않는다. 
- 새로운 뷰가 나타날 때, 기존의 뷰가 사라지는 것이 아니라 그 위에 새로운 뷰가 올라가는 것이기 때문에 viewWillDisappear, viewDidDisappear 메소드는 호출되지 않는다. 자세히 보면 위에 기존의 뷰가 보이는 것을 확인할 수 있다.



## 🤔 고민과 해결

### 1️⃣ Segue & Transition Style 

Presentation은 모두 Automatic으로 바꾸고, Segue와 Transition Style을 테스트해보았습니다. 

- Segue - Popover의 경우, 아이패드에서만 차이점을 알 수 있었습니다. 
- Transition Style은 모두 Segue를 Present Modally로 연결하였습니다. FullScreen일 경우, Transition Style에는 변화가 없었습니다.
  - Transition Style - Partial Curl의 경우, Segue를 Present Modally로 설정하면 "Thread 1: "Application tried to present UIModalTransitionStylePartialCurl to or from non-fullscreen view controller <PhotoFrame.TestTableViewController: 0x144d143a0>."와 같은 오류 메시지를 확인할 수 있었습니다.
  - [애플 공식 문서](https://developer.apple.com/documentation/uikit/uimodaltransitionstyle/uimodaltransitionstylepartialcurl?language=objc)에서 Partial Curl 스타일은 상위 뷰컨트롤러가 FullScreen 뷰를 표시하고 [UIModalPresentationFullScreen](https://developer.apple.com/documentation/uikit/uimodalpresentationstyle/uimodalpresentationfullscreen?language=objc) 모달 프레젠테이션 스타일을 사용하는 경우에만 지원한다고 합니다. 그 외의 form factor를 사용하려고 하면 예외가 트리거됩니다.
- Transition Style - Partial Curl의 경우, Segue를 Present Modally로 하면 오류가 발생하기 때문에 Show로 해야합니다.

![ezgif com-gif-maker (7)](https://user-images.githubusercontent.com/95578975/154633705-d317c933-06f5-45e4-ba11-bcae17f66054.gif)



### 2️⃣ viewWillDisappear, viewDidDisappear 출력해보기

viewWillDisappear, viewDidDisappear 출력을 확인하기 위해 TableViewController와 Navigation Controller를 추가하여 테스트해보았습니다.

Show Detail, Present Modally과 Present As Popover 방식은 앞과 똑같이 두 함수가 호출되지 않았고, Show 방식은 앞의 Modal 방식과 달리 화면 전체가 새로운 뷰로 꽉 찬 것을 확인할 수 있었습니다. 그리고 viewWillDisappear, viewDidDisappear 함수의 호출도 확인할 수 있었습니다.

![ezgif com-gif-maker (9)](https://user-images.githubusercontent.com/95578975/154637764-0be225fe-4a86-4b19-9e65-2eb0e8bc1464.gif)

## ✏️ 추가 학습 거리

### ViewController의 라이프 사이클

- **func viewDidLoad()** : 뷰 계층이 **메모리에 로드된 직후** 호출. 

- **func viewWillAppear(_ animated: Bool)** : 뷰가 뷰 계층에 추가되고 **화면에 표시되기 직전에** 호출.

- **func viewDidAppear(_ animated: Bool)** : 뷰가 뷰 계층에 추가되어 **화면이 표시되면** 호출.

- **func viewWillDisappear(_ animated: Bool) **: 뷰가 뷰 계층에서 사라지기 직전에 호출.

- **func viewDidDisappear(_ animated: Bool)** : 뷰가 뷰 계층에서 **사라진 후** 호출.



### YellowViewController에서 Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법

- 버튼을 IBAction으로 연결하고, IBAction 메소드 내에 다음과 같이 코드를 구현합니다.

```Swift
@IBAction func nextButtonTouched(_ sender: UIButton) {
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MintViewController") as! MintViewController
    present(vc, animated: true, completion: nil)
}
```

##### instantiateViewController(withIdentifier:)

- 지정된 identifier로 뷰컨트롤러를 만들고 스토리보드의 데이터로 초기화합니다.

- `identifier`

  스토리보드 파일에서 뷰컨트롤러를 고유하게 식별하는 identifier 문자열. 디자인 타임에서 인터페이스 빌더에서 뷰컨트롤러의 Storyboard ID 속성에 동일한 문자열을 넣습니다. 이 identifier는 뷰컨트롤러 객체 자체의 속성이 아닙니다. 스토리보드는 이 identifier를 사용하여 뷰컨트롤러에 적합한 데이터를 찾습니다. 지정된 식별자가 스토리보드 파일에 없는 경우, 이 메소드는 예외를 발생시킵니다.

- [참고 문서](https://developer.apple.com/documentation/uikit/uistoryboard/1616214-instantiateviewcontroller)

## 💡 학습 키워드

- ViewController
- LifeCycle
- [ViewController LifeCycle](https://medium.com/good-morning-swift/ios-view-controller-life-cycle-2a0f02e74ff5)
- [UIModalTransitionStyle](https://developer.apple.com/documentation/uikit/uimodaltransitionstyle?language=objc)
- Storyboard Identifier


# Step6. Container ViewController 활용하기

## 💻 작업 목록

- [x] 내비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선하기
- [x] ViewController Container 종류 학습하기
- [x] 내비게이션 컨트롤러가 있을 경우와 없을 경우의 화면 전환 동작과 화면들 간에 포함관계가 있는지 학습하기
- [x] 내비게이션 컨트롤러 관련 메소드는 왜 push/pop인지 찾아보기
- [x] 보여주는 방식과 사라지는 방식 같이 학습하고 정리하기

## 📱 실행 화면

![ezgif com-gif-maker](https://user-images.githubusercontent.com/95578975/154799560-1297e8fb-de19-450c-be0a-fabb63dbd302.gif)

- Step5 (1)에서 테스트해보았던 것처럼 화면 전체가 새로운 뷰로 꽉 찼고, viewWillDisppear, viewDidDisappear이 호출되는 것을 확인할 수 있었습니다.

## 🤔 고민과 해결

### NavigationController을 Embed한 후 마주한 오류

#### 1️⃣ PinkViewController의 닫기 버튼이 동작하지 않음

- 해결 코드

```swift
@IBAction func closeButtonTouched(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
}
```

##### [popViewController(animated:)](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621886-popviewcontroller)

- navigation stack에서 제일 상위의 뷰컨트롤러를 pop하고 화면을 업데이트

#### 2️⃣ MintViewController의 닫기 버튼이 동작하지 않음

- 1️⃣에서의 방법과 동일하게 해결

#### 3️⃣ PinkViewController의 Segue Programmatically 버튼이 동작하지 않음

```swift
@IBAction func nextButtonTouched(_ sender: UIButton) {
    let vc = self.storyboard?.instantiateViewController(withIdentifier: "MintViewController") as! MintViewController
    self.navigationController?.pushViewController(vc, animated: true)
}
```

##### [pushViewController(_:animated:)](https://developer.apple.com/documentation/uikit/uinavigationcontroller/1621887-pushviewcontroller)

```swift
func pushViewController(_ viewController: UIViewController, 
               animated: Bool)
```

- 뷰컨트롤러를 receiver의 스택에 push하고 화면을 업데이트

### 

## ✏️ 추가 학습 거리

### 1️⃣ ViewController Container 종류

#### [`UISplitViewController`](https://developer.apple.com/documentation/uikit/uisplitviewcontroller)

- 계층 인터페이스를 구현하는 컨테이너 뷰컨트롤러.

#### [`UINavigationController`](https://developer.apple.com/documentation/uikit/uinavigationcontroller)

- 계층적 내용을 navigate 하기 위한 스택 기반 스키마를 정의하는 컨테이너 뷰컨트롤러.

#### [`UINavigationBar`](https://developer.apple.com/documentation/uikit/uinavigationbar)

- 일반적으로 navigation controller와 함께 화면 상단의 바에 표시되는 내비케이션 컨트롤.

#### [`UINavigationItem`](https://developer.apple.com/documentation/uikit/uinavigationitem)

- 연결된 뷰컨트롤러가 보여질 때 내비게이션 바가 표시하는 항목.

#### [`UITabBarController`](https://developer.apple.com/documentation/uikit/uitabbarcontroller)

- 다중 선택 인터페이스를 관리하는 컨테이너 뷰컨트롤러로, 여기서 선택으로 표시할 하위 뷰컨트롤러가 결정된다.

#### [`UITabBar`](https://developer.apple.com/documentation/uikit/uitabbar)

- 앱에서 서로 다른 하위 작업, 뷰 또는 모드를 선택할 수 있도록 탭 바에 하나 이상의 버튼을 표시하는 컨트롤.

#### [`UITabBarItem`](https://developer.apple.com/documentation/uikit/uitabbaritem)

- 탭 바에 있는 아이템을 나타내는 객체.

#### [`UIPageViewController`](https://developer.apple.com/documentation/uikit/uipageviewcontroller)

- 하위 뷰컨트롤러가 각 페이지를 관리하는 컨텐츠 페이지 간의 navigation을 관리하는 컨테이너 뷰 컨트롤러.

### 2️⃣ 내비게이션 컨트롤러가 있을 경우와 없을 경우의 화면 전환 동작과 화면들 간에 포함관계가 있는지 학습

#### 내비게이션 컨트롤러가 있을 경우

- 화면이 새로운 뷰로 전환될 때, 새로운 뷰가 화면을 꽉 채웠습니다.
- 모든 뷰컨트롤러의 viewWillAppear 함수 내에 `navigationController?.children`을 출력하는 코드를 추가하여 현재 내비게이션 컨트롤러의 children을 확인해보았습니다.

```swift
override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("FirstViewController", #function)
    print("***** Current Navigation Stack *****", navigationController?.children)
}
```

- [children](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621452-children)

  - Child 뷰컨트롤러를 모아놓는 children 배열

- 실행 화면

  - 첫번째 VC에서는 children 배열이 1개의 뷰컨트롤러를 갖고, PinkVC에서는 2개를, MintVC에서는 3개를 가지는 것을 확인할 수 있었습니다. 
  - 새롭게 뷰컨트롤러가 push되면 그에 따라 children 배열에도 push된 뷰컨트롤러가 추가되고, 뷰컨트롤러가 pop 되면 그에 따라 children 배열에서도 pop된 뷰컨트롤러가 제거된 것을 확인할 수 있었습니다.

  ![ezgif com-gif-maker (1)](https://user-images.githubusercontent.com/95578975/154816642-dc93b1f0-95e6-46b6-9c80-acd9215810bf.gif)

#### 내비게이션 컨트롤러가 없을 경우

- 화면이 새로운 뷰로 전환될 때, 새로운 뷰가 화면을 꽉 채우지 않았고, viewWillDisappear, viewDidDisappear이 호출되지 않았습니다.

### 3️⃣ 내비게이션 컨트롤러 관련 메소드는 왜 push/pop일까?

내비게이션 컨트롤러는 계층적 내용을 navigate 하기 위한 스택 기반 스키마를 정의하는 컨테이너 뷰컨트롤러입니다. 이 타입의 인터페이스는 한 번에 하나의 하위 뷰 컨트롤러만 표시할 수 있습니다. 그렇기 때문에 뷰컨트롤러에서 새로운 뷰컨트롤러를 push하면 화면에 표시되고 이전 뷰컨트롤러는 숨겨집니다. 인터페이스 상단에 있는 뒤로 가기 버튼을 누르면 내비게이션 바에서 제일 top에 있는 뷰컨트롤러가 제거되어 그 밑에 있던 뷰컨트롤러가 나타납니다.

### ➕ Step5에서 보여주는 방식과 사라지는 방식 같이 학습하고 정리하기 (NavigationController 없는 상태)

- 따로 브랜치 생성하여 작업을 진행

- [dismiss(animated:completion:)](https://developer.apple.com/documentation/uikit/uiviewcontroller/1621505-dismiss)

- 한번에 모든 뷰를 dismiss하는 코드

  ```swift
  self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)
  ```

- 실행 화면

  ![ezgif com-gif-maker (2)](https://user-images.githubusercontent.com/95578975/154817927-4432874d-507d-4b3f-b233-bfa138deebe5.gif)

## 💡 학습 키워드

- UIViewController
- ViewController Container
- [Container View Controllers](https://developer.apple.com/documentation/uikit/view_controllers/creating_a_custom_container_view_controller/)
- [UISplitViewController](https://developer.apple.com/documentation/uikit/uisplitviewcontroller)
- [UINavigationController](https://developer.apple.com/documentation/uikit/uinavigationcontroller)
- [UITabBarController](https://developer.apple.com/documentation/uikit/uitabbarcontroller)
- [UIPageViewController](https://developer.apple.com/documentation/uikit/uipageviewcontroller)

# Step7. 다른 화면 연결하기

## 💻 작업 목록

- [x] 탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
- [x] UIImageView 와 UIImage 클래스는 각각 어떤 역할을 담당하는지 학습한다.
- [x] 이미지 뷰의 속성은 어떤 것들이 있는지 애플 개발자 문서를 참고한다.
- [x] Step7 README 작성하기


## 📱 실행 화면

![ezgif com-gif-maker (5)](https://user-images.githubusercontent.com/95578975/154859519-2c8e4a48-be60-4f57-96bd-c04d0031c11c.gif)

## 🤔 고민과 해결

### 1️⃣ TabBarItem 이미지 변경 (with Storyboard)

시도 1 - TabBarItem의 Attributes Inspector에서 Tab Bar Item의 System Item 설정 -> 이미지 표시되지만,  selected/unselected 구분 X

시도 2 - TabBarItem의 Attributes Inspector에서 Tab Bar Item의 Selected Image 설정 -> 이미지 표시 X

시도 3 - TabBarItem의 Attributes Inspector에서 Bar Item의 Image만 설정 -> 이미지 표시 X

시도 4 - TabBarItem의 Attributes Inspector에서 Tab Bar Item의 System Item, Bar Item의 Image 모두 설정 -> 이미지 표시 O, selected/unselected 구분 O

### 2️⃣ TabBarItem 이미지 변경 (with Code)

#### 시도 1 - 이미지 표시 X

```swift
print(tabBarItem.image, tabBarItem.selectedImage) // nil nil
self.tabBarItem.image = UIImage(systemName: "photo.artframe")
self.tabBarItem.selectedImage = UIImage(systemName: "photo.fill")
print(tabBarItem.image, tabBarItem.selectedImage) // not nil. 값 있음.
```

#### 시도 2 - 이미지 표시 X

```swift
print(tabBarItem.image, tabBarItem.selectedImage) // nil nil
self.tabBarItem.image = UIImage(systemName: "photo.artframe")?.withRenderingMode(.alwaysOriginal)
self.tabBarItem.selectedImage = UIImage(systemName: "photo.fill")?.withRenderingMode(.alwaysOriginal)
print(tabBarItem.image, tabBarItem.selectedImage) // not nil. 값 있음.
```

#### 시도 3 - 이미지 표시 X

```swift
print(tabBarController?.tabBarItem.image, tabBarController?.tabBarItem.selectedImage) // nil nil
self.tabBarController?.tabBarItem.image = UIImage(systemName: "photo.artframe")
self.tabBarController?.tabBarItem.selectedImage = UIImage(systemName: "photo.fill")
print(tabBarController?.tabBarItem.image, tabBarController?.tabBarItem.selectedImage) // not nil. 값 있음.
```



시도 1, 2, 3 모두 값이 들어가지만 화면에는 나타나지 않았습니다.

![스크린샷 2022-02-21 오전 1 15 11](https://user-images.githubusercontent.com/95578975/154852428-ff711a6e-56c9-45f6-8ed1-6059c15791fa.png)



#### 해결 방법

```swift
self.tabBarController?.tabBar.items?[0].image = UIImage(systemName: "photo.artframe")
self.tabBarController?.tabBar.items?[0].selectedImage = UIImage(systemName: "photo.fill")
```

#### 개선 코드

```swift
if let tabBarItem = self.tabBarController?.tabBar.items?[0] {
    tabBarItem.image = UIImage(systemName: "photo.artframe")
    tabBarItem.selectedImage = UIImage(systemName: "photo.fill")
}
```



### 3️⃣ Asset에 Image 추가하기

이미지를 추가하니 모두 자동으로 1x에 추가가 되었습니다. 1x, 2x, 3x의 차이점이 뭔지 궁금해져서 찾아보았습니다. [Image Size and Resolution](https://developer.apple.com/design/human-interface-guidelines/ios/icons-and-images/image-size-and-resolution/)

iOS가 콘텐츠를 화면에 배치하는데 사용하는 좌표계는 디스플레이의 픽셀에 맵핑되는 포인트 단위 측정을 기반으로 합니다. 표준 해상도 디스플레이는 1:1 픽셀 밀도 (또는 @1x)이며, 여기서 1 픽셀은 1 포인트와 같습니다. 고해상도 디스플레이는 2.0 또는 3.0의 스케일 팩터 (@2x, @3x라고 합니다)를 제공하여 픽셀 밀도가 높습니다. 따라서 고해상도 디스플레이는 이미지에 더 많은 픽셀을 요구합니다. 사용자가 어떤 기기를 사용할 지 알 수 없기 때문에 모든 사용자에게 적절한 이미지를 제공하기 위해 1x, 2x, 3x 이미지를 준비하여 image set으로 사용하는 것입니다.

1x, 2x, 3x 이미지는 동일한 이미지이지만 단순히 크기가 다를 뿐입니다. 이미지의 기본 크기가 100x100 픽셀이면 2x에서 200x200 픽셀, 3x에서 300x300 픽셀이어야 합니다. 

## ✏️ 추가 학습 거리

### 1️⃣ UIImageView 와 UIImage 클래스는 각각 어떤 역할을 담당하는지 학습

#### UIImageView

인터페이스에 하나의 이미지 또는 일련의 애니메이션 이미지를 표시하는 객체. ImageView는 UIImage 객체를 사용하여 지정할 수 있는 모든 이미지를 효율적으로 그릴 수 있도록 해줍니다. UIImageView 클래스를 사용하여 JPEG 및 PNG 파일과 같은 표준 이미지 파일의 내용을 표시할 수 있습니다. 코드 또는 스토리보드에서 이미지뷰를 구성하고 런타임에 표시되는 이미지를 변경할 수 있습니다. 애니메이션 이미지의 경우, 이 클래스의 메소드를 사용하여 애니메이션을 시작/중지하고 다른 애니메이션 매개변수를 지정할 수도 있습니다.

#### UIImage

앱에서 이미지 데이터를 관리하는 객체. 이미지 객체를 사용하여 모든 종류의 이미지 데이터를 나타낼 수 있으며 UIImage 클래스는 기본 플랫폼에서 지원하는 모든 이미지 형식에 대한 데이터를 관리할 수 있습니다. 이미지 객체는 변경할 수 없으므로 항상 디스크의 이미지 파일이나 코드로 생성된 이미지 데이터와 같은 기존 이미지 데이터로 생성합니다. 이미지 객체에는 하나의 이미지 또는 애니메이션에 사용하는 일련의 이미지가 포함될 수 있습니다.

### 2️⃣ 이미지 뷰의 속성 학습

#### ScaleToFill

이미지 비율 유지 X, 프레임 전체 채움

#### Aspect Fit

이미지 비율 유지 O, 프레임 전체 채우지 않음. 이미지 크기대로 유지 (남는 영역은 투명하게 된다)

#### Aspect Fill

이미지 비율 유지 O, 프레임 전체 채움. 이미지가 일부 짤릴 수 있음.

#### Redraw

캐시를 사용하지 않고 항상 컨텐츠를 다시 그리는 것. 이 때 setNeedsDisplay()가 사용된다.


이후 옵션들 (Center, Top, Bottom, Left, Right, Top Left, Top Right, Bottom Left, Bottom Right)은 컨텐츠의 크기를 조절하지 않고, 컨텐츠가 배치되는 역할에만 영향을 미칩니다.

### 📱 View.ContentMode Test
![contentMode](https://user-images.githubusercontent.com/95578975/154857604-f469cf74-a2af-43ab-bcd1-45043cb13583.gif)![탱](https://user-images.githubusercontent.com/95578975/154858377-160677e1-ff1f-43ef-b577-773683409bd2.gif)


## 💡 학습 키워드

- [UIImageView](https://developer.apple.com/documentation/uikit/uiimageview)
- [UIImage](https://developer.apple.com/documentation/uikit/uiimage)
- [Bundle Resource](https://developer.apple.com/documentation/bundleresources)
- [View ContentMode](https://developer.apple.com/documentation/uikit/uiview/contentmode)
