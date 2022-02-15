# STEP02. IBOutlet 연결하기

> 2022.02.15

### 요구사항

- [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
- [x] 연결한 아웃렛 변수에 값을 변경한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

<br/>
<br/>

### 과정

1. 스토리보드 UI 구성
   1. Label 2개 추가
   2. Stack view 를 사용해 Label 들을 감싸고, Stack View 에 제약조건을 걸어 화면 정렬
2. Label Outlet 과 ViewController 파일의 코드 연결
3. `viewDidLoad()` 메서드에서 Label 의 속성 코드로 변경
4. Inspector 영역에 UILabel의 커스텀 속성 추가

### 실행화면

<img src="https://user-images.githubusercontent.com/12508578/153988353-4a9798a9-2dfc-4380-80c7-2985994a8a09.png" width="100%" height="854px"/>

<br/>

## 배경 지식 학습

### IB(Interface Builder)

> UI 요소를 쉽게 배치하기 위해 Apple 에서 제공해주는 응용 프로그램.
>
> Xcode 에서는 Storyboard 를 뜻한다.

스토리보드와 우리가 만든 코드를 연결시킬때 IB 로 시작하는 Attribute 들을 사용해야 한다.

IBOutlet, IBAction, IBInspectable, IBDesignable 과 같은 Attribute 들은 스토리 보드와 연관있다.

**IBOutlet, IBAction**

- Interface Builder Annotation(주석)
- Annotation이 붙은 프로퍼티나 메서드는 앱이 빌드될때 컴파일러가 체크하고 연결정보를 찾아 인터페이스 빌더의 객체와 서로 연결해 준다.

### @IBOutlet

- 아울렛 변수
- 인터페이스의 빌더를 참조하는 프로퍼티임을 표시
- 화면상의 객체를 소스코드에서 참조하기 위해 사용
- 파일과 연결시 **Storage**를 weak, strong 값 중에서 고를 수 있다. (ARC)
  - weak 을 선택했을때 `@IBOutlet weak var firstLabel: UILabel!`
  - weak 타입으로 선언하면 참조되고 있어도 시스템이 임의로 메모리에서 제거할 수 있어 상호 참조에서 벗어날 수 있다.

### @IBAction

- 액션 메서드
- 객체의 이벤트를 제어할때 사용
- 인터페이스 빌더의 객체에서 일어나는 이벤트를 받는 메서드임을 표시
- 연결 정보는 Connection Attribute Tab(인스펙터 탭의 마지막) 에서 확인 가능하다

<aside>
💡 Annotation(주석): 
컴파일러에게 변수나 메서드의 성격을 알려주는 역할
</aside>

## @IBInspectable

> 인스펙터 영역에 커스텀 Attribute 를 추가할때 사용

get, set 이 가능한 연산 프로퍼티 여야 한다.

```swift
class CustomLabel: UILabel {
    @IBInspectable var MyColor: UIColor {
        get {
            return self.MyColor
        }
        set {
            self.textColor = newValue
        }
    }
}
```

![set 연산으로 값 변경](https://user-images.githubusercontent.com/12508578/153988756-6578b33b-2a19-4ad9-8718-da80c36415d1.png)

인스펙터에서 set 연산으로 값 변경을 할 수 있다.

1. 스토리보드에서 ViewController 에 Label 을 넣는다.
2. Label 의 Identity Inspector 에서 `Custom class: CustomLabel` 로 설정
3. 스토리보드의 Attributes Inspector 에서 속성값이 추가되었는지 확인

스토리보드의 인스펙터에서 컬러를 바꾸어도 UILabel 의 컬러는 그대로 인것을 볼 수 있을 것이다. 하지만 실행해 시뮬레이터에서 확인하면 변경된 컬러를 확인할 수 있다.

실시간으로 확인해 보려면 추가적으로 **IBDesignable** 이 필요하다.

### @IBDesignable

> 인터페이스 빌더에서 실시간으로 렌더링할때 사용

위에서 작성한 CustomLabel 클래스 코드 앞에 **@IBDesignable** 을 붙여보자:

```swift
@IBDesignable
class CustomLabel: UILabel {...
```

![IBDesignable을 적용한 익스펙터 화면](https://user-images.githubusercontent.com/12508578/153988947-d25cae45-94ad-4594-ad44-9728600f9849.png)

스토리보드가 업데이트되며, 빌드에 성공하면 `Designables` 가 생긴것을 볼 수 있다.

이제 추가한 속성값을 변경해보면, 스토리보드의 Label 이 실시간으로 변경되는 것을 확인할 수 있다.

<br/>

## 🧁 추가 학습거리

### UILabel

> 하나 이상의 text 를 표시하는 view

가장 최근에 설정한 속성이 화면에 표시된다.

속성(property):

- attributedText
  - `NSAttributedString` API 를 사용해 개별 문자 및 문자 그룹의 모양을 제어할 수 있다

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/b70cdd7a-c0da-4c74-aa9c-f45fa0eaf259/Untitled.png)

- NSString
  - text 형식을 균일하게 지정하려면 text property 를 NSString 로 설정한다.
  - NSString 은 font, textColor, textAlignment, lineBreakMode ...등의 property 를 포함할 수 있다.

### NSAttributedString

> text 일부에 대한 관련 속성이 있는 string(문자열)

[Apple Document-AttributedStrings](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/AttributedStrings/AttributedStrings.html#//apple_ref/doc/uid/10000036i)

- NSObject 를 상속받은 class
- Swift 문자열에서는 부분적으로 문자의 컬러를 바꿀 수 있는 기능이 없기때문에 Objective-C 의 NSAttributedString 을 사용한다.

### NSString

> String 과 bridge 하는 plain-text Unicode string 객체
> Foundation 관련 동작이 필요한 경우 NSString을 사용

- NSObject 를 상속받은 Class
  - Swift 의 String 은 Struct
- String ↔ NSString 은 쉽게 변환 가능(toll-free bridged)
  ```swift
  NSString as String
  String as NSString
  ```
