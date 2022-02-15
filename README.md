# STEP03. IBAction 연결하기

> 2022.02.16

### 요구사항

- [x] 사진액자 - IBOutlet 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- [x] 연결한 액션에 대한 메서드를 구현한다.
- [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.

<br/>
<br/>

### 과정

1. 스토리보드 UI 구성
   1. UIButton 생성
2. UIButton 의 이벤트와 ViewController 파일 연결
3. UIButton 이벤트 구현
4. 여러 버튼을 하나의 액션에 연결
   1. UIButton 생성, 레이아웃 구성
   2. 파일에 Action 연결
   3. Action 메서드 구현

### 실행화면

![step3-result](https://user-images.githubusercontent.com/12508578/154120928-a0cb7e3a-57d7-46e3-b789-43421817d690.png)

<br/>

## 배경 지식 학습

### UIButton

[apple documentation-uibutton](https://developer.apple.com/documentation/uikit/uibutton/)

button 은 **Target-Action 디자인 패턴**을 사용해 사용자가 버튼을 누를 때 앱에 알린다.

버튼을 tap 했을때 발생하는 이벤트를 직접 처리하지 않고 button에 action method 를 할당하고, 메서드가 언제 실행될지 트리거(trigger)하는 event 를 지정한다.

- runtime 에 button은 발생하는 모든 터치 이벤트를 처리하고 method를 호출한다.
- `addTarget(\_:action:for:)` 메서드나 Interface Builder 에서 버튼의 액션을 처리할 메서드를 연결한다
- button 상태 5가지(사용자와의 상호작용을 위함)
  - default, highlighted, focused, selected, disabled.
  - default 가 기본상태이며, 사용자가 버튼을 누르면 highlighted 상태가 된다.
- UIControl class 상속받음
  - UIControl: 컨트롤 객체에서 특정 이벤트 발생시, 미리 정해둔 target action 을 실행(Target-Action 패턴)
  - UIButton, UISwitch, UIStepper....
- button의 내용은 `imageView`(UIImageView), `titleLabel`(UILabel) 으로 구성

### Target-Action 디자인 패턴

> 객체는 이벤트가 발생할 때, 정보가 담긴 메시지를 다른 객체에게 보낸다.

👉  [apple developer document](https://developer.apple.com/library/archive/documentation/General/Conceptual/Devpedia-CocoaApp/TargetAction.html#//apple_ref/doc/uid/TP40009071-CH3)

이벤트 발생시 상황에 때라 원하는 대상(target)을 선택해 액션을 실행할 수 있다. (유연한 설계)

```swift
객체A ---(Action Message)---> 객체B
```

- Action Message: 이벤트 발생시 전송하는 메시지
- target: 액션이 호출될 객체(ex. ViewController)
- iOS 에서 많이 사용하는 패턴

```swift
func addTarget(_ target: Any?,
        action: Selector,
           for controlEvents: UIControl.Event)
```

- target:
  - action method 가 호출하는 객체
  - nil 지정시 UIKit 은 responder chain 에 지정된 action message 를 응답하고 message 를 해당 객체에 배달하는 객체를 검색한다.
- action:
  - 호출할 action method 를 식별하는 selector
- controlEvents:
  - action method 가 호출되는 컨트롤별 이벤트

<br/>

## 🧁 추가 학습거리

- IBAction, IBOutlet 연결 구조에 대해 정리
- 버튼에 IBAction 을 추가할 때 이벤트 종류
  - 👉  [apple document](https://developer.apple.com/documentation/uikit/uicontrol)-UIControl
  - touchUpInside: 버튼의 기본 이벤트. 컨트롤 영역 안쪽에서 터치 하고 난 후
  - touchUpOutside: 컨트롤 영역 안쪽에서 터치하고 난 후 컨트롤 밖에서 손을 뗏을때
  - touchDown: 터치했을떄
  - touchCancel: 터치를 취소
  - valueChanged: 값이 변경되었을때
- 버튼에 액션을 여러개 추가할 수 있나
  - `button.addTarget()` 을 사용해 여러 액션을 추가할 수 있다
- 여러버튼을 동시에 하나의 액션에 연결할 수 있나
  - 하나의 액션에 연결 가능하며, tag property 를 사용해 각각의 버튼을 구분할 수 있다.
  ```swift
  @IBAction func colorButtonTouched(_ sender: UIButton) {
      var buttonTitle: String = "Touched"
      switch sender.tag {
      case 0:
          buttonTitle += "Blue"
      case 1:
          buttonTitle += "Orange"
      case 2:
          buttonTitle += "Purple"
      default:
          break
      }
      sender.setTitle(buttonTitle, for: .normal)
  }
  ```
