# swift-photoframe
iOS 포토프레임 프로젝트 저장소



## 요구사항

- [x] 프로젝트 생성 및 TabBarController 추가
- [x] IBOutlet 연결하기
- [x] IBAction 연결하기
- [x] Scene을 Segue로 연결하기
- [x] ViewController 연결하기
- [x] Container ViewController 활용하기
- [x] 다른 화면 연결하기
- [x] 사진 앨범 선택하기
- [ ] 마무리

    

## 작업 내용 정리

### 1. 프로젝트 생성 및 TabBarController 추가

- 스토리보드 메인에서 TabBarController 추가
- 이후 첫번째 Scene에 ViewController 클래스 연결(CustomClass)
- 시뮬레이터 실행 후 콘솔 출력 결과 확인

<img src="https://user-images.githubusercontent.com/68586291/153905653-4ec934d9-49f4-4548-85d7-d610341f6036.png" alt="image" style="width:50%"/>

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

<img style="width:30%;align:center" alt="image" src="https://user-images.githubusercontent.com/68586291/153997054-75db2d6d-8ae9-4330-ab40-063a9e7a2b53.png">

#### 2-1. NSMutableAttributedString과 일반 Text를 사용했을 때의 차이

> 피드백을 받은 후, 텍스트 속성을 변경할 때 NSMutableAttributedString과 일반 Text을 사용했을 때 어떤 차이가 있는 지 확인해보았다.

- 위의 예시처럼 나오도록 일반 Text를 사용하여 코드를 작성한 후 시뮬레이터로 확인하였다.

```swift
firstLabel.backgroundColor = UIColor.darkGray //배경색 짙은회색으로 지정
firstLabel.textColor = UIColor.white //텍스트 색상 흰색으로 지정
firstLabel.font = UIFont.systemFont(ofSize: 40) //사이즈 40으로 지정
firstLabel.text = "Jed의 사진 액자" //텍스트 내용 동일하게 지정
```

<img src="https://user-images.githubusercontent.com/68586291/154012741-998a70c1-65b4-4bc9-a1d3-4c10f1be2cee.png" alt="image" style="width:30%; align:center"/><img src="https://user-images.githubusercontent.com/68586291/154013295-f2351332-73c7-4949-8e12-41dc5e2e9544.png" alt="image" style="width:30%; align:center"/>

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

<img src="https://user-images.githubusercontent.com/68586291/154094785-70b76066-a0ee-49ac-b1c4-94022c47b0d6.gif" alt="image" style="align:center; width:80%;"/>

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

<img src="https://user-images.githubusercontent.com/68586291/154201308-1d05f793-001b-4bf9-973f-a2162960ed9e.gif" alt="image" style="align:center;width:30%;"/>

- segue는 어플리케이션 내 각 화면 인터페이스 간의 흐름을 정의하는 역할을 하며, 이번 단계에서는 스토리보드 내에 있는 두 개의 view controller 간의 전환을 결정하는 것을 확인할 수 있었음
- segue의 개념이 처음에는 생소해서, 단순히 이전 view controller을 버튼과 연결하면 이전으로 돌아가는 줄 알았지만 실제로 확인해보니 새로운 view controller가 위에 다시 쌓이는 식으로 진행되고 있었음
- [공식문서](https://developer.apple.com/library/archive/featuredarticles/ViewControllerPGforiPhoneOS/UsingSegues.html#//apple_ref/doc/uid/TP40007457-CH15-SW1)를 보니 ***A segue always presents a new view controller, but you can also use an unwind segue to dismiss a view controller*** 라고 나와 있는 것으로 보아 segue는 그 자체로 새로운 화면을 생성하는 역할을 하는 것이며 만일 이전 화면으로 되돌릴 경우에는 unwind segue를 사용해야 할 듯함
  - unwind segue에 대해서는 5단계에서 진행하기로 하였다!

​    

### 5. ViewController 연결하기

> 진행하기 전에 전반적인 버튼, 라벨 디자인을 좀 더 보기좋게 변경하고 진행했음

<img src="https://user-images.githubusercontent.com/68586291/154320046-0d6b0feb-25a1-4a0e-adbd-f3d465adff1d.gif" alt="image" style="width: 30%; align: center;"/>    

​    

#### 5-1. Segue 없이 다음 화면으로 연결하기

- 각각의 스토리보드에 있는 Scene에 대해, GrayViewController와 YellowViewController 클래스를 만들어 서로 연결
- 기존에는 InitialView에서 다음 버튼을 누르면 스토리보드에서 생성한 Segue를 통해 GrayViewController로 연결되는 구조였지만, 이번 단계에서는 Segue를 지우고 코드로 화면을 전환하도록 변경했음

```swift
guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "GrayViewController")else{
  print("No NextViewController Found")
  return
}
nextViewController.modalPresentationStyle = .fullScreen
nextViewController.modalTransitionStyle = .coverVertical
self.present(nextViewController, animated: true, completion: nil
```

- UIViewController의 storyboard라는 프로퍼티가 가진 instantiateViewController 함수가 리턴하는 UIViewController을 스토리보드에서 생성했던 GrayViewController로 지정했음
  - 단, 스토리보드에서 해당 Scene의 스토리보드 아이디를 withIdentifier 인자로 입력한 GrayViewController로 명시해야 함
- 리턴한 UIViewController을 nextViewController이라는 변수에 담아준 후, modalPresentationStytle과 modalTransitionStyle 값을 각각 원하는 방식으로 변경했음
  - fullscreen : 다음 화면(모달)이 띄워질 때 전체 화면을 덮도록 함
  - coverVerticial : 화면 전환 애니메이션이 수직방향으로 일어나도록 함
- 이후 present를 호출하면 화면이 전환되는 액션이 발생하는 것을 확인할 수 있음

​    

#### 5-2. Unwind Segue를 통해 화면 닫기

- 4단계에서 보류했던 Unwind Segue를 사용해보았음
- YellowViewController에서 이전의 GrayViewController로 되돌아가는 상황을 가정했음
- Unwind Segue의 경우 우선 되돌아갈 대상이 되는 뷰컨트롤러에 UIStoryboardSegue를 인자로 받는 IBAction 함수를 아래와 같이 작성해야 함

```swift
@IBAction func unwind(_ segue: UIStoryboardSegue){
  print(#function)
}
```

- 이후 스토리보드에서 닫기 버튼을 Scene의 Exit과 연결하면 Unwind Segue 방식으로 해당 화면을 닫고 연결된 이전 화면으로 돌아갈 수 있음

​    

#### 5-3 뷰컨트롤러의 생명주기

<img src="https://t1.daumcdn.net/cfile/tistory/2613D13C58C64DE32C" alt="img" style="width:50%; align:center;"/>

- 아래와 같은 함수를 각각 오버라이딩 한 후, 함수가 호출되는 순서를 확인했음

```swift
override func viewWillAppear(_ animated: Bool) {
  print(#file, #line, #function, #column)
}

override func viewDidAppear(_ animated: Bool) {
  print(#file, #line, #function, #column)
}

override func viewWillDisappear(_ animated: Bool) {
  print(#file, #line, #function, #column)
}

override func viewDidDisappear(_ animated: Bool) {
  print(#file, #line, #function, #column)
}
```

- 그림과 마찬가지로 화면이 처음 로드되면 viewDidLoad -> viewWillAppear -> viewDidAppear 순서로 함수가 호출되고, 화면이 닫힐 때는 viewWillDisappear -> viewDidDisappear 순서로 화면이 닫히는 것을 확인할 수 있었음

​    

### 6. Container View Controller 활용하기

<img src="https://user-images.githubusercontent.com/68586291/154426264-1886c131-be91-426d-b684-6616e664a222.gif" alt="image" style="align:center; width: 30%;"/>

- Navigation Bar을 추가

- 처음에는 연결된 GrayViewController, YelloViewController Scene에 Back 네비게이션 버튼이 자동으로 생기지 않는 문제가 발생했음

- 또한 화면 넘김 역시 기존과 그대로 아래에서 위로 모달이 올라오는 방식으로 이루어졌음

- 우선 화면을 연결하는 Segue를 다시 생성하고, 화면을 넘기는 방식(kind)을 모달이 아닌 show로 바꿈으로써 연결된 화면들에 자동으로 네비게이션 버튼이 생기고 왼쪽에서 오른쪽으로 화면이 넘기는 애니메이션 확인

- 이후 기존에 아래와 같이 작성한 화면을 닫는 코드는 동작하지 않았음

  ```swift
  @IBAction func dismissButtonTouched(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
  ```

- 위의 코드는 아래와 같이 navigationController 프로퍼티의 함수를 호출하는 식으로 변경하여 이전 화면으로 돌아가는 것을 확인

  ```swift
  @IBAction func exitButtonTouched(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
  ```

​    

#### 6-1. Navigation Controller

- [공식문서](https://developer.apple.com/documentation/uikit/uinavigationcontroller)에서는 UINavigationController에 대해 스택 기반의 계층화된 콘텐츠가 모여있는 view controller 컨테이너로 정의하고 있음

  *A container view controller that defines a stack-based scheme for navigating hierarchical content.*

- 이러한 구조에서는 한 시점에 하나의 view controller만이 보이도록 하고 있으며, 하나의 view controller이 보이도록 선택하면 이를 스크린에 push하고(기존의 화면은 화면에서 사라짐),  back button과 같은 닫기 버튼을 누르면 top에 위치한 view controller을 화면에서 pop하여 사라지게 한 후 바로 밑에 있는 view controller이 화면에 위치하도록 함

  - 이런 식으로 여러 view가 스택과 같이 push, pop의 과정을 거치며 사용자에게 보이는 화면은 스택의 top에 해당하는 부분이라는 점에서, 화면을 전환하고 닫는 관련 함수의 이름도 popViewController, pushViewController와 같은 형식으로 표현

​    

### 7. 다른 화면 연결하기

<img src="https://user-images.githubusercontent.com/68586291/154537526-12e2654d-ce8f-4897-9827-472b93cf22c3.gif" alt="image" style="width:30%; align:center;"/>

- UIImageView, UIImage를 활용
- 스토리보드에서 ImageView 아이템을 추가한 후, 생성해둔 WhiteViewController 클래스에 IBOutlet으로 이전과 동일하게 연결
  - imageView IBOutlet 변수 생성

```swift
@IBOutlet weak var imageView: UIImageView!
```

- 이후 다음 버튼을 눌렀을 때 실행할 nextButtonTouched 함수 내부에서 1~22 사이의 랜덤 숫자를 도출해서 이에 해당하는 이미지 파일명을 만듦
  - 이후 이에 해당하는 파일정보로 UIImage를 생성해서, imageView.image 속성에 값을 할당

```swift
@IBAction func nextButtonTouched(_ sender: UIButton) {
  imageView.image = getRandomImage(number: Int.random(in: 1...22))
}

func getRandomImage(number: Int)-> UIImage?{
  let fileName: String = number<10 ? "0\(number)" : String(number)
  return UIImage(named: "Demo Images/\(fileName).jpg")
}
```

- 이미지를 이미지뷰 사이즈에 맞추기 위해서는 Content Mode 를 아래와 같이 Scale To Fill로 변경해줌

```swift
imageView.contentMode = .scaleToFill
```

​    

### 8. 사진 앨범 선택하기

<img src="https://user-images.githubusercontent.com/68586291/154623719-999c412d-e4fb-4a6e-8d8b-cc83277b00b3.gif" alt="image" style="width:26%;align:center;"/>

- 사진액자 이미지를 넣을 새로운 ImageView 추가 후 frameView라는 변수에 @IBOutlet으로 연결

  - 미리 다운받은 photoframe-border.png 파일로 UIImage를 만들어서 이미지 속성으로 추가함

  ```swift
  @IBOutlet weak var frameView: UIImageView!
  
  func setFrameView(){
    frameView.image = UIImage(named: "Demo Images/photoframe-border.png")
    frameView.center.x = self.view.center.x
    frameView.center.y = self.view.center.y*0.7
  }
  ```

- 앨범에서 사진 선택을 위해 선택 버튼 추가 후 selectButton이라는 변수에 @IBOutlet으로 연결한 후, selectButtonTouched라는 @IBAction 함수 생성

  ```swift
  @IBOutlet weak var selectButton: UIButton!
  @IBAction func selectButtonTouched(_ sender: UIButton) {
    //...
  }
  ```

- UIImagePickerController을 사용하여 앨범에 있는 사진을 가져와 UIImage를 생성해서 사용하도록 설정

  ```swift
  @IBAction func selectButtonTouched(_ sender: UIButton) {
    let imagePicker = UIImagePickerController()
    imagePicker.sourceType = .photoLibrary
    imagePicker.allowsEditing = true
    imagePicker.delegate = self
    self.present(imagePicker, animated: true, completion: nil)
  }
  ```

- [공식문서](https://developer.apple.com/documentation/uikit/uiimagepickercontroller) 를 보니, UIImagePickerController을 사용하기 위해서는 UIImagePickerControllerDelegate 프로토콜에 delegate를 전달해야 된다고 명시되있음

  - 유저가 앨범에 있는 사진을 선택하는 등의 액션을 취하면 delegate object에 이를 알리는 것
  - 이럴 경우 delegate object는 UIImagePickerController의 동작을 위임받아 사용자에게 응답하게 됨

  ```swift
  imagePicker.delegate = self
  ```

  - 결국 위의 코드가 의미하는 것은, 생성한 UIImagePickerController의 delegate object로 self, 즉 WhiteViewController을 지정하게되는 것을 의미함

- 이후 delegate object의 응답을 위해 아래와 같이 UIImagePickerControllerDelegate 프로토콜을 구현하여 위임받아 응답할 동작을 정의함

  ```swift
  extension WhiteViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
      let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
      self.imageView.image = selectedImage
      picker.dismiss(animated: true, completion: nil)
    }
  }
  ```

  



