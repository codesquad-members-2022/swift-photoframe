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



