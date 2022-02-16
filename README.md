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
