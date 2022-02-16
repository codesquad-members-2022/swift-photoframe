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

