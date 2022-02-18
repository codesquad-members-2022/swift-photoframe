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
