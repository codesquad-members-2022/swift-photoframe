# swift-photoframe
iOS 포토프레임 프로젝트 저장소



## 요구사항

- [x] 프로젝트 생성 및 TabBarController 추가
- [x] IBOutlet 연결하기
- [x] IBAction 연결하기
- [ ] Scene을 Segue로 연결하기
- [ ] ViewController 연결하기
- [ ] Container ViewController 활용하기
- [ ] 다른 화면 연결하기
- [ ] 사진 앨범 선택하기
- [ ] 마무리

​    

## 작업 내용 정리

### 1. 프로젝트 생성 및 TabBarController 추가

- 스토리보드 메인에서 TabBarController 추가
- 이후 첫번째 Scene에 ViewController 클래스 연결(CustomClass)
- 시뮬레이터 실행 후 콘솔 출력 결과 확인

<img src="https://user-images.githubusercontent.com/68586291/153905653-4ec934d9-49f4-4548-85d7-d610341f6036.png" alt="image" style="zoom:80%"/>

![image](https://user-images.githubusercontent.com/68586291/153906104-97dd8f5a-1c1d-4498-949f-e149aec20e22.png)

​    

### 2. IBOutlet 연결하기

- 스토리보드에서 첫번째 Scene 내부에 UILabel 추가
- 추가한 UILabel을 ViewController클래스 내부로 IBOutlet으로 연결
- 연결 후 클래스 내에 아래와 같은 프로퍼티 변수 생성된 것 확인

```swift
@IBOutlet weak var firstLabel: UILabel!
```

- NSMutableAttributedString을 사용하여 라벨에 보여질 텍스트 및 텍스트 속성 설정

```swift
//라벨에 보여질 텍스트, 속성 설정
let attributedText = NSMutableAttributedString(string: "Jed의 사진 액자")
attributedText.addAttributes([.backgroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 40)], range: NSRange(location: 0, length: 10))
firstLabel.attributedText = attributedText
```

- 시뮬레이터로 결과 확인

<img style="zoom:30%;align:center" alt="image" src="https://user-images.githubusercontent.com/68586291/153997054-75db2d6d-8ae9-4330-ab40-063a9e7a2b53.png">

#### 2-1. NSMutableAttributedString과 일반 Text를 사용했을 때의 차이

> 피드백을 받은 후, 텍스트 속성을 변경할 때 NSMutableAttributedString과 일반 Text을 사용했을 때 어떤 차이가 있는 지 확인해보았다.

- 위의 예시처럼 나오도록 일반 Text를 사용하여 코드를 작성한 후 시뮬레이터로 확인하였다.

```swift
firstLabel.backgroundColor = UIColor.darkGray //배경색 짙은회색으로 지정
firstLabel.textColor = UIColor.white //텍스트 색상 흰색으로 지정
firstLabel.font = UIFont.systemFont(ofSize: 40) //사이즈 40으로 지정
firstLabel.text = "Jed의 사진 액자" //텍스트 내용 동일하게 지정
```

<img src="https://user-images.githubusercontent.com/68586291/154012741-998a70c1-65b4-4bc9-a1d3-4c10f1be2cee.png" alt="image" style="zoom:50%; align:center"/><img src="https://user-images.githubusercontent.com/68586291/154013295-f2351332-73c7-4949-8e12-41dc5e2e9544.png" alt="image" style="zoom:50%; align:center"/>

- 같은 결과가 나올 줄 알았는데, 배경색이 적용되는 범위가 NSMutableAttributedString을 적용했을 때와 달랐다.
- 두 가지 방식을 배경색만 달리해서 혼합한 후 다시 시뮬레이터를 확인해보니, 두 가지 방식을 적용했을 때 두 배경색이 서로 겹치며, 적용되는 범위가 각기 다름을 확인할 수 있었다.

```swift
//배경색: 짙은회색, 폰트 색상: 검은색, 폰트사이즈: 40
firstLabel.backgroundColor = UIColor.darkGray
firstLabel.textColor = UIColor.black
firstLabel.font = UIFont.systemFont(ofSize: 40)
firstLabel.text = "Jed의 사진 액자"
//배경색: 검은색, 폰트 색상: 흰색, 폰트사이즈: 40
let attributedText = NSMutableAttributedString(string: "Jed의 사진 액자")
attributedText.addAttributes([.backgroundColor: UIColor.black,
                              .font: UIFont.systemFont(ofSize: 40),
                              .foregroundColor: UIColor.white], range: NSRange(location: 0, length: 10))
firstLabel.attributedText = attributedText
```

- 공식문서를 보니 NSMutableAttributedString에 대해 다음과 같은 설명이 있었다.

```
An NSAttributedString object manages character strings and associated sets of attributes (for example, font and kerning) that apply to individual characters or ranges of characters in the string.
```

- [관련 포스팅](https://jcsoohwancho.github.io/2020-05-21-NSAttributedString-%EB%B6%84%EC%84%9D/) 과 함께 종합해보니, 이해한 바로는 NSMustableAttributedString을 생성한 후, 속성값을 설정하면 라벨 전체에 적용되는 것이 아닌 NSRange 범위 내에 있는 개별 문자에 적용되는 것 같았다.
- 우선 개별 문자 색상이나 사이즈가 변하는 것은 동일하지만, 배경색과 같이 적용 범위의 크기와 관련된 속성 설정일 때는 주의해서 사용해야 겠다.

   

### 3. IBAction 연결하기

<img src="https://user-images.githubusercontent.com/68586291/154094785-70b76066-a0ee-49ac-b1c4-94022c47b0d6.gif" alt="image" style="align:center;"/>

- 첫번째 Scene에 UIButton을 하나 추가한 후, nextButton이라는 이름으로 IBOutlet으로 연결

```swift
@IBOutlet weak var nextButton: UIButton!
```

- 이후 다양한 터치 액션을 실험해보고자 __`touch up inside`__  , __`touch up outside`__ , __`touch down`__ 에 해당하는 각각의 IBAction을 연결하여 각기 다른 로직을 적용

```swift
//touch up inside
@IBAction func nextButtonTouchedUpInside(_ sender: Any) {
  self.firstLabel.textColor = UIColor.blue
  self.firstLabel.backgroundColor = UIColor.yellow
  self.firstLabel.alpha = 0.5

  print("touched up inside")
}
//touch up outside
@IBAction func nextButtonTouchedUpOutside(_ sender: Any) {
  self.firstLabel.textColor = UIColor.red
  print("touched up outside")
}
//touch down
@IBAction func nextButtonTouchedDown(_ sender: Any) {
  self.firstLabel.textColor = UIColor.white
  print("touched down")
}
```

- 위의 세 가지 터치 동작의 차이는 아래와 같았음
  - __touch up inside : UI요소를 터치한 후 손가락을 해당 요소 범위 내에서 뗐을 때__
  - __touch up outside: UI요소를 터치한 후 손가락을 해당 요소 범위 밖에서 뗐을 때__
  - __touch down: UI요소를 터치한 후 손가락을 떼지 않았을 때__
- 마지막으로 각기 다른 UIButton에 동일한 IBAction을 연결해보았음
  - 여러 버튼을 하나의 액션에 연결할 수 있으며, 함수 내부에서 파라미터로 받은 sender이 각기 다름을 확인할 수 있음

```swift
@IBOutlet weak var testButton1: UIButton!
@IBOutlet weak var testButton2: UIButton!
@IBOutlet weak var testButton3: UIButton!

@IBAction func testButtonTouchedUpInside(_ sender: UIButton) {
  print("\(sender.hash) : test button touched up inside")
}
```

​    

### 4. Scene을 Segue로 연결하기

> 이번 단계에서는 스토리보드상에서 segue로 scene들을 연결하고 segue의 개념을 학습하는 정도로만 진행했습니다.
> 추후 창 닫기를 위한 rewind segue와 같은 부분은 5단계에서 진행하고자 합니다.

- 스토리보드에서 버튼을 생성한 후 segue를 통해 ViewController과 연결

<img src="https://user-images.githubusercontent.com/68586291/154201308-1d05f793-001b-4bf9-973f-a2162960ed9e.gif" alt="image" style="align:center;zoom:80%;"/>

- segue는 어플리케이션 내 각 화면 인터페이스 간의 흐름을 정의하는 역할을 하며, 이번 단계에서는 스토리보드 내에 있는 두 개의 view controller 간의 전환을 결정하는 것을 확인할 수 있었음
- segue의 개념이 처음에는 생소해서, 단순히 이전 view controller을 버튼과 연결하면 이전으로 돌아가는 줄 알았지만 실제로 확인해보니 새로운 view controller가 위에 다시 쌓이는 식으로 진행되고 있었음
- [공식문서](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html#//apple_ref/doc/uid/TP40007457-CH15-SW1)를 보니 ***A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller*** 라고 나와 있는 것으로 보아 segue는 그 자체로 새로운 화면을 생성하는 역할을 하는 것이며 만일 이전 화면으로 되돌릴 경우에는 unwind segue를 사용해야 할 듯함
  - unwind segue에 대해서는 5단계에서 진행하기로 하였다!
