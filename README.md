# swift-photoframe
iOS 포토프레임 프로젝트 저장소

<Br>

## 💡 프로젝트 생성하기 

<Br>

- [x]  포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- [x]  iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- [x]  스토리보드에서 TabBar Controller를 직접 추가한다.
- [x]  특정한 시뮬레이터를 하나 골라서 실행한다
- [x]  [readme.md](http://readme.md/) 파일을 자신의 프로젝트에 대한 설명으로 변경한다.

<Br>
<Br>

    StoryBoard 라이브러리에서 TabBarController를 추가하고 TabBarViewController와 연결.
    
    첫번째 Scene Custom Class를 ViewController로 설정





<img src = "https://user-images.githubusercontent.com/59790540/154016935-a7ddeb41-8b14-47f8-8757-ca42ab726887.png" width="1000" height= "500" />

<br>
<img src = "https://user-images.githubusercontent.com/59790540/154016946-5ddd76d5-2613-4c36-a45f-5cec5b0c94c9.png" width="500" height= "100" />

<br>
<br>
<br>

---

## 💡 IBOutlet 연결하기 


    - cmd+shift+l  -> library
    - 라이브러리에서 label를 IB로 드래그 
    - option키를 누른 상태에서 해당 뷰 컨트롤러로 드래그 해, IBOutlet 연결 
    - UILabel 속성 및 UIView 속성을 참고해 속성 설정 

<img src = "https://user-images.githubusercontent.com/59790540/154016309-1fdd41ea-b4fb-4bd9-b033-e24c4a831723.png" width="200" height= "420" />


<br>
<br>

## 📓 UILabel

[https://developer.apple.com/documentation/uikit/uilabel](https://developer.apple.com/documentation/uikit/uilabel)

label을 커스터마이징 하기 위해서는 코드로 작성하거나, IB에서 속성을 주는 방법 두가지가 있다. 

- Text 설정
    - text 속성에 NSString 객체를 넣어주거나 attributedText 속성에 NSAttributedString 을 할당해서 보여지는 글을 설정할 수 있다
    - 여러개를 설정했다면 나중에 설정한것이 우선
- AttributedString vs text
    - AttributedString은 String 내의 각각 character에 속성을 부여할 수 있고, text는 일관된 속성을 지정할때 쓴다고 한다.
    - String내 일부만 다른 속성으로 변경[https://www.hackingwithswift.com/articles/113/nsattributedstring-by-example](https://www.hackingwithswift.com/articles/113/nsattributedstring-by-example)

### 📓 Accessing the Text Attributes

| text | String? | label에 보여지는 텍스트 |
| --- | --- | --- |
| attributedText | NSAttributedString? | label에 보여지는 텍스트 |
| font | UIFont! | 텍스트의 글꼴 |
| textColor | UIColor! | 텍스트 색상 |
| textAlignment | NSTextAlignment | 텍스트 정렬 속성 |
| lineBreakMode | NSLineBreakMode | 글이 label 크기를 벗어났을때 속성  |
| lineBreakStrategy | NSParagraphStyle.LineBreakStrategy | line-break 옵션. 마지막에 한글자만 남았을때 linebreak를 해주는 속성 등 |
| isEnable | Bool | 텍스트 활성화 여부. False일 경우 흐릿하게 표현  |
| showsExpansionTextWhenTruncated | Bool | 포인터가 잘린 텍스트(...) 위에 있을 때 label의 전체 텍스트가 표시되는지 여부  |

### 📓 Sizing the Lable’s Text

| adjustsFontSizeToFitWidth | Bool | 텍스트를 레이블 크기에 맞출지 여부(공간이 좁다면 텍스트의 크기를 줄일지 여부)  |
| --- | --- | --- |
| allowsDefaultTighteningForTruncation | Bool | truncated 된다면 텍스트 사이의 여백을 줄일지의 여부  |
| baselineAdjustment | UIBaselineAdjustment | 레이블에 맞게 텍스트를 줄여야 될때, 텍스트의 baseline이 고정된 상태로 유지되는지 여부 |
| minimumScaleFactor | CGFloat | 텍스트의 최소 축소 비율  |
| numberOfLines | Int | 텍스트 최대 줄 수  |

### 📓 기타

| highlightedTextColor | UIColor? | 텍스트 하이라이트 색상 |
| --- | --- | --- |
| isHighlighted | Bool | 하이라이트 여부  |
| shadowColor | UIColor? | 텍스트 그림자 색 |
| shadowOffset | CGSize | 텍스트 그림자 오프셋  |
| isUserInteractionEnable | Bool | 사용자 이벤트를 무시하고 이벤트 대기열에서 제거할지 여부 |


---

<br>

# step3
    다음 버튼 터치 전 / 후
<img src = "https://user-images.githubusercontent.com/59790540/154208679-12c5a9d4-bc78-4623-9a6b-c37907e44148.png" width="200" height= "420" />

<img src = "https://user-images.githubusercontent.com/59790540/154208692-def9b5a7-21bb-4608-9336-5121042b0de1.png" width="200" height= "420" />

​    


# IBAction

Interface Builder를 통해 받아온 정보로 Action을 수행하겠다는 의미 

### 이벤트를 처리할 수 있는 컴포넌트를 IBAction 연결하는 방법 

    1. (Code) - addTarget 메소드로 연결
    2. (Interface Builder) - IB에서 해당 컴포넌트를 control 을 누른상태로 ViewController에 드래그해서 연결

** 연결 후 Connection Inspector 로 연결 상태를 관리 할 수 있었다. **

** 코드로 연결하는 방법은 추후에 해봐야 겠다 **

```swift
@IBAction func nextButtonTouched(_ sender: Any) {
        
        print("touchUpInside event")
        self.photoLabel.textColor = .black
        self.photoLabel.backgroundColor = .purple
        self.photoLabel.alpha = 0.8
    }
```

- 다양한 Event를 걸어서 호출순서를 파악했다.

<br>

## UIControl.State

- 특정 이벤트는 State를 변경시킬 수 있다.

### ❓이벤트가 아닌 상태에 따라 button의 속성을 변경을 해보고 싶어서 nextButton.setTitle("selected", for: .selected) 를 추가했는데 터치를 해도 변하지 않았다

### 💡해결방법

- state는 이벤트에 의해서 바뀌긴 하지만, 개별적인 설정을 해주어야 한다고 한다. 인스펙터 빌더나, 코드상으로 Select가 가능한 버튼으로 설정을 해주니 가능했다.
- Default 상태에서 터치했을때는 highlighted State 라는것을 알았다

<br>

## 버튼에 액션을 여러개 추가할 수 있을까? 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?

둘다 가능하다.
<br>
<br>

# 💡 weak/Strong 

컴파일 시 코드를 분석해서 자동으로 retain, release 코드를 생성해주는 것- 참조된 횟수를 추적해 더 이상 참조되지 않는 인스턴스를 메모리에서 해제해주는 것

    Strong으로 참조하게 되면, 뷰 컨트롤러에 작성한 프로퍼티가 뷰를 소유하고 있으므로, 뷰를 removeFromSuperview 메소드로 씬에서 삭제해도 메모리에서 해제되지 않는다. 
    이에 비해서 Weak로 생성한 아웃렛 프로퍼티는 뷰를 소유하지 않으므로, 뷰를 삭제하면 메모리에서 해제된다.

<br>

### 왜 weak 를 사용해야하는가?
<br>
    메모리가 부족해지면 ViewController의 didReceiveMemoryWarning가 호출됩니다.
    보통 didReceiveMemoryWarning 에서 main view를 nil 처리함으로써 main view를 포함한 subview들 까지 모두 dealloc 하여 메모리를 확보하는 동작을 구현

<br>

## ❗️ 
디폴트로 Weak을 사용하는게 좋다. 
뷰를 씬에 삭제했다가 다시 추가해야 하는 상황이라면 Strong 으로 작성하고, 그 외에는 Weak로 작성한다.

---

<br>

# step4
## 요구사항 
- [x]  Scene추가와 Segue 연결
- [x]  IBOutlet weak 로 변경

<p align="center">
<img src="https://user-images.githubusercontent.com/59790540/154417282-3f7301d5-9c68-49e4-a235-daac97292c79.gif" width="200" height="420">
</p>

## 📓Segue 학습 
### **show**

가장 일반적인 세그웨이 이다. 새 화면으로 이동한다. Stack 구조로서 새 화면이 원래 화면 위를 덮는 구조이다.

### **Show Detail**

SplitView 구조에서 원래 화면을 Master, 새 화면을 Detail로 표시한다. 아이폰에서는 똑같아 보이지만 아이패드로 보면 화면이 둘로 분할되서 보이게 된다.

### **Present Modally**

새 화면이 모달처럼 원래 화면 위 전체를 뒤덮는다. 월래 화면은 새 화면 뒤에 그대로 존재하게 된다.

### **Popover Presentation**

아이패드에서 팝업창을 띄운다. 아이폰 앱한테는 Show Detail과 마찬가지로 큰 의미가 없다.

### **Custom**

사용자 정의 세그웨이를 만든다.

## 📓 화면 전환방식
    화면을 전환하는 방식에는 크게 3가지가 있다.
    1. present
    2. segue
    3. nevigation controller 


---

<br>

# step5
## 요구사항 
- [x]  프로젝트에 새로운 ViewController 클래스를 추가한다. Custom Class > Class 항목에 `YellowViewController` (자신이 생성한 클래스 이름)을 지정한다.
- [x]  닫기 버튼을 추가하고, YellowViewController 와 연결.
- [x]  IBAction 이름은 `closeButtonTouched`로 지정하고 다음과 같이 코드를 작성한다.
- [x]  위와 동일하게 세 번째 추가한 화면에 대해 ViewController 클래스를 지정하고, [닫기]버튼을 추가하고, 액션을 연결해서 화면을 닫는 동작이 동작하도록 구현한다.
- [x]  뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 `print(#file, #line, #function, #column)`
 코드를 추가한다.

<br>
<br>

## 진행과정

- SecondView에 닫기 버튼을 추가하고 뷰 콜백 함수들을 호출했을때 결과

- SecondVC → ThirdVC를 show방식으로 전환했을때
![스크린샷 2022-02-17 오후 4 50 29](https://user-images.githubusercontent.com/59790540/154623988-4d53a724-b065-4d4f-8409-c4f68f7e7dcc.png)

- SecondVC → ThirdVC를 fullScreen방식으로 전환했을때

![스크린샷 2022-02-17 오후 4 52 58](https://user-images.githubusercontent.com/59790540/154623994-4a5da829-b4af-43b4-883c-b83d1536610f.png)


- segue 방식이 아닌 present 방식을 통한 화면 전환
    - 전환할 Scene에 Storyboard ID를 설정해주어야 한다.
    - completion을 통해 present가 된후 해야할 작업들을 처리해줄 수 있다(메모리 작업 등)

```swift
    guard let secondVC = self.storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController else {return}
    self.present(secondVC, animated: true, completion: nil)
```

<br>
<br>

## 학습내용

### ViewController

- 역할
    - 뷰 계층을 관리.
    - 뷰를 업데이트하고 화면에 해당하는 뷰에서 이벤트가 일어났을 때 어떻게 처리할것인지 중간 매개체 역할
    - 화면 사이즈, 회전을 감지하고 대응

    <img width="238" alt="스크린샷 2022-02-17 오후 3 57 16" src="https://user-images.githubusercontent.com/59790540/154624206-57fa7a08-6e44-4083-a369-d25f0819d862.png">


→ ViewController 가 View를 포함하는 관계인것을 확인 할 수 있다. 

- 의미
    - MVC에서 C.
    - 뷰컨트롤러에서 하위뷰들을 만들고 그 뷰에서 필요한 데이터들을 가지는 모델들을 처리해주는 역할을 함.
    - 모델과 뷰 중간역할을 함.

- 장점
    - 재사용
    - 화면을 담당하는 뷰와 비즈니스 로직을 표현하는 모델을 분리


## View Life Cycle

뷰가 화면에 보여지는 상태의 변화나 뷰의 레이아웃에 변화가 생기면 뷰 컨트롤러는 여러가지 메서드를 호출해 서브클래스가 적절한 대응을 할 수 있게 한다.


<img width="500" alt="스크린샷 2022-02-17 오후 3 57 16" src="https://user-images.githubusercontent.com/59790540/154624444-e96549b9-eb25-4685-b54b-056a9481cbe1.png">



### 뷰의 상태변화 메소드

**viewDidLoad()**

- **뷰 계층이 메모리에 로드된 직후 호출되는 메서드**
- 뷰의 추가적인 초기화 작업을 하기 좋은 시점
- 메모리에 처음 로딩 될때 1회 호출되는 메서드로, 메모리 경고로 뷰가 사라지지 않는 이상 다시 호출되지 않음

**viewWillAppear(_ animated: Bool)**

- **뷰가 뷰 계층에 추가되고 화면이 표시되기 직전에 호출되는 메서드**
- 뷰의 추가적인 초기화 작업을 하기 좋은 시점
- 다른 뷰로 이동했다가 되돌아오면 재호출되는 메서드로, 화면이 나타날때마다 수행해야하는 작업을 하기 좋은 시점

**viewDidAppear(_ animated: Bool)**

- **뷰가 뷰 계층에 추가되어 화면이 표시되면 호출되는 메서드**
- 뷰를 나타내는 것과 관련된 추가적인 작업을 하기 좋은 시점

**viewWillDisappear(_ animated: Bool)**

- **뷰가 뷰 계층에서 사라지기 직전에 호출되는 메서드**
- 뷰가 생성된 뒤 발생한 변화를 이전상태로 되돌리기 좋은 시점

**viewDidDisappear(_ animated: Bool)**

- **뷰가 뷰 계층에서 사라진 후 호출되는 메서드**
- 뷰를 숨기는 것과 관련된 추가적인 작업을 하기 좋은 시점
- 시간이 오래 걸리는 작업은 하지 않는 것이 좋음



---

# step6

## ✅**요구사항**

- [x]  Navigation Controller Embed
- [x]  이동버튼 터치시 push
- [x]  닫기버튼 터치시 pop

## 📔진행과정

- Navigation Controller 를 추가한다.

<img width="200" alt="스크린샷 2022-02-17 오후 3 57 16" src="https://user-images.githubusercontent.com/59790540/154853182-789ca891-5b3a-4c07-98f9-39f836185749.png">

- 다음 버튼을 눌렀을때 다음 화면으로 넘어가도록 한다.
    - 다음 뷰 컨트롤러를 스토리보드 ID로 얻어온 후
    - 네비게이션컨트롤러로 push 동작을 수행하도록 한다.

```swift
guard let secondVC = self.storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController else {return}
self.navigationController?.pushViewController(secondVC, animated: true)
```

- 닫기 버튼을 눌렀을때 이전 화면으로 돌아가도록 한다.



---
step7 
## ✅**요구사항**

- [x]  이미지 파일 추가
- [x]  탭바의 두 번째 화면 구현
    - [x]  UIImageView 추가
    - [x]  다음버튼을 누를때마다 랜덤 이미지 보여주기

## 📔진행과정

- 두번째 뷰에 UIComponent 추가하기
<p align="center">
<img src="https://user-images.githubusercontent.com/59790540/154853624-2eb5b1e1-ffa8-4c82-865d-b8915a243740.png" width="220" height="420">
</p>
- 이미지 리소스 프로젝트 파일에 추가하기
    - 이미지가 들어있는 폴더를 드래그해서 추가하였다.

- 다음버튼을 터치시 랜덤 이미지 선택해서 보여주기
    - 랜덤이미지가 없다면 시스템 이미지를 보여주도록 했다.

```swift
let randomImageNumber: String = {
            let random = String(Int.random(in: 1...22))
            if random.count == 1 { return "0"+random }
            return random
        }()
        
        if let image = UIImage(named: "Demo Images/\(randomImageNumber).jpg"){
            self.photoImageView.image = image
        }else{
            photoImageView.image = UIImage(systemName: "questionmark.square")
        }

```

<p align="center">
<img src="https://user-images.githubusercontent.com/59790540/154854164-498f0421-a68f-404f-918b-bd54eecb7b43.gif" width="200" height="420">
</p>


- 이미지 크기 조정하기
    - Content모드를 학습 후 이미지를 비율에 맞게 꽉차게 보여줄 수 있도록 Aspect fill 메소드를 사용.
    
    ```swift
    photoImageView.contentMode = .scaleAspectFill
    ```
    

## ContentMode

[http://monibu1548.github.io/2018/05/21/scalemode/](http://monibu1548.github.io/2018/05/21/scalemode/)

### Scale To Fill (기본값)

- UIImageView 크기에 맞게 이미지를 임의대로 늘려서 넣는다.

### AspectFit

- 원본의 비율을 유지
- UIImageView 내부에서 밖으로 나가지 않도록 이미지 비율을 유지한채 크기 조정
- 여백이 생길 수 있다.

### AspectFill

- 원본의 비율을 유지
- UIImageView 영역밖으로 나갈 수 있다. Clip to bounds 를 true로 설정한다면 짤리지 않음
- UIImageView 내부에 여백이 생기지 않음
- 이미지 일부가 짤려보일 수 있어 인물, 동물 사진에는 적합하지 않음







step8

## ✅**요구사항**

- [x] 이미지 테두리 액자 화면 추가 
- [x] 앨범에서 사진 가져오기 기능 
  - [x] Info.plist 에서 라이브러리 접근 권한 설정 





## 📔진행과정

- 이미지를 다운받아 두번째 뷰에 PhotoFrame ImageView 추가하기 
  - 사진이 보여지는 ImageView 보다 아래에 위치

![스크린샷 2022-02-22 오전 12.46.41](/Users/choeyeju/Desktop/스크린샷 2022-02-22 오전 12.46.41.png)

- 드래그앤 드롭으로 조절가능하다(같은 depth라면 상위에 있을수록 앞에 위치 )

- 선택 버튼 추가하기 

  ![스크린샷 2022-02-22 오전 12.45.42](/Users/choeyeju/Desktop/스크린샷 2022-02-22 오전 12.45.42.png)



- 선택 버튼을 터치했을때 라이브러리에서 사진 선택해서 UIImageView에 로드 

  - Info.plist 에서 `Privacy - Photo Library Usage Description` 을 추가해서 설정해준다 

  - UIImagePickerControllerDelegate, UINavigationControllerDelegate 프로토콜을 채택한다. 

  - 버튼을 터치했을때 photoLibrary 를 띄운다. 

    ```swift
        @IBAction func selectButtonTouched(_ sender: Any) {
            
            picker.sourceType = .photoLibrary
            self.present(picker, animated: true, completion:  nil)
            
        }
    
    ```

  - 이미지 선택을 완료했을때는, 프로토콜에 선언되어있는 메소드를 사용하여 구현할 수 있다. 

    ```swift
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                photoImageView.image = image
            }
            self.dismiss(animated: true, completion: nil)
        }
    ```

    