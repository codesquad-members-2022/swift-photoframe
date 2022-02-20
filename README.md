# STEP04. Scene을 Segue로 연결하기

> 2022.02.20

### 요구사항

- [x] 사진액자 - IBAction 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

<br/>
<br/>

### 과정

1. 스토리보드에서 First Scene 과 연결되는 ViewController 추가
   1. UIButton 추가하고, 화면 정중앙 배치
2. 두번째 ViewController 와 연결할 세번째 ViewController 를 스토리보드에서 추가
3. 두번째 ViewController 의 버튼을 컨트롤+클릭한 상태에서 드래그하여 세번째 ViewController 와 Segue-show 연결
4. 실행하여 정상동작 확인

### 실행화면

![step4-result](https://user-images.githubusercontent.com/12508578/154839984-200d7b62-2175-4561-a8ca-4910a1ea7177.png)

<br/>

## 배경 지식 학습

### Segue 사용하기

> 스토리보드 파일에서 두 ViewController 간의 전환을 정의

👉  [apple developer document-Using Segues](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html)

- segue 의 시작점: button, table row, gesture recognizer
- segue 의 끝점: 표시할 ViewController
- segue 은 항상 새로운 ViewController 을 표시(present)하지만, unwind segue 를 사용해 view controller 를 dismiss 할 수도 있다.
- runtime 에 UIKit 은 view controller 와 연관된 segue 를 load 하고 해당 요소에 연결한다. (programmatically 하게 segue 를 trigger 할 필요없다) 사용자가 요소와 상호작용하면 UIKit 은 적절한 view controller 를 load 하고 앱에 segue 가 발생한다고 알린다음 전환을 실행한다.
- UIKit 에서 보낸 알림을 사용해 데이터를 새로운 view controller 에 전달하거나 segue 가 완전히 발생하지 않도록 할 수 있다.

스토리보드가 아닌 코드로 segue 실행:

```swift
override func performSegue(withIdentifier identifier: String, sender: Any?) {
    // identifier 에 해당하는 segue 객체를 스토리보드에서 찾아 segue 실행
}
```

<br/>

## 🧁 추가 학습거리

### Segue Action

![segue actions](https://user-images.githubusercontent.com/12508578/154840166-0546d981-7d82-49b0-b9e8-5cd372a15a7d.png)

**Adaptive segue**(이미지에서 Action Segue) 는 현재 환경을 기준으로 동작을 자동으로 조정한다. (예.Show segue 의 동작은 현재 view controller 따라 변경된다.)

**Non-Adaptive segue**는 Adaptive segue 를 지원하지 않는 iOS7 이하 에서의 앱을 위해 제공된다.

| action            | segue icon                                                                                                                 |
| ----------------- | -------------------------------------------------------------------------------------------------------------------------- |
| show, show detail | ![show](https://user-images.githubusercontent.com/12508578/154840061-a9ece8cc-626d-418e-802d-a9aca5b13756.png)             |
| present modally   | ![presentModally](https://user-images.githubusercontent.com/12508578/154840081-adf110ea-0602-4ac7-9ad5-5e0f763887eb.png)   |
| present popover   | ![presentAsPopover](https://user-images.githubusercontent.com/12508578/154840100-b96ebbd0-7d6d-4dc2-be5a-8841cbd3daa9.png) |

- **Show:**
  - `showViewController` 메서드를 통해 새 컨텐츠를 표시
  - 대부분의 view controller 는 modally over 로 동작
  - 일부 view controller 는 이 메서드를 override 하여 다른 동작을 구현하는데 사용
    - 예를들어, navigation controller 는 새로운 view controller 를 navigation stack 에 push 한다
  - UIKit 은 \***\*targetViewControllerForAction\*\*** 메서드를 사용해 source view controller(다음 뷰컨트롤러를 띄워줄 뷰컨트롤러) 를 찾는다
    - 이 메서드는 view controller 계층을 올라가며 `show(:sender:)`를 override 한 view controller 를 찾는다.
    - 찾았다면, 반환된 view controller 의 `show(:sender)`를 사용
    - 못찾았다면 nil 을 반환해 `present(:animated:completion)`을 사용
- **Show Detail:**
  - `showDetailViewController(_:sender:)` 메서드를 통해 target view controller 를 표시
  - UISplitViewController 객체에 내장된(embed) view controller 들에만 이 segue 가 적용됨
  - 사용시 UISplitViewController가 두번째 child view controller(detail controller) 를 새로운 content 로 교체
  - 대부분의 view controller 는 새로운 content 를 modally 로 표시
  - UIKit 은 targetViewControllerForAction:sender 메서드를 사용해 source view controller 를 찾는다
- **Present Modally:**
  - 지정된 presentation, transition style 을 사용해 view controller 를 modally 로 화면에 나타낸다
- **Present As Popover:**
  - horizontally regular 환경에서는 view controller 가 popover 로 나타난다
  - horizontally compact 환경에서는 view controller 가 full-screen modal 로 표시된다
  - 👉 [apple view controller programming guide-The Adaptive Model](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/TheAdaptiveModel.html)
