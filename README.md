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
