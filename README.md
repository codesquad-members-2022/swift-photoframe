# swift-photoframe
iOS 포토프레임 프로젝트 저장소

----

## 프로젝트 생성하기

### 기능 요구 사항
> [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
>
> [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
>
> [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
>
> [x] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
>

### 구현 과정
1. 프로젝트 fork 후 내 저장소로 clone하기.
<img width="556" alt="스크린샷 2022-02-14 오후 12 26 48" src="https://user-images.githubusercontent.com/62687919/153795164-ebf76977-4b4f-4051-a8b8-4230595b7fc2.png">

2. 해당 폴더에 iOS프로젝트 생성
3. ebony브랜치로 스위칭
4. 기존 스토리보드의 ViewController삭제 후 TabBarController 생성
5. 생성 후 초기ViewController 설정 해주기 ( 필수 )
6. ViewController 두개 생성 후 TabBarController에 ViewControllers 추가
<img width="466" alt="스크린샷 2022-02-14 오전 11 25 47" src="https://user-images.githubusercontent.com/62687919/153795522-6b0810e2-7a24-486d-aeae-6b2dc042dfd2.png">

### 실행결과
<img width="835" alt="스크린샷 2022-02-14 오전 11 29 08" src="https://user-images.githubusercontent.com/62687919/153795641-c85ae290-9cc7-4620-b38f-c17ddfa1903a.png">

### 추가문제
TabBarViewController, UITabBar의 차이점 : TabBarViewController는 UITabBar를 View에 추가한 ViewController로 알고 있습니다. (ViewController를 상속)\
이와 유사한 클래스 : 비슷한 클래스로 NavigationController가 있습니다. 코드로 VC를 추가 시 TabBarViewController에서는 addChild를 사용하고, NavigationController에서는 pushViewController를 사용하는걸로 알고 있습니다.

----

## IBOutlet

### 기능 요구 사항
> [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
>
> [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
>
> [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.
>

### 구현 과정
1. UILabel 스토리보드에 추가.
2. 스토리보드에서 label의 위치 조절
3. viewDidLoad에서 텍스트 지정, 폰트크기, 가운데정렬 설정

### 실행결과
<img width="336" alt="스크린샷 2022-02-14 오후 12 13 37" src="https://user-images.githubusercontent.com/62687919/153893792-4d519412-a0a3-4dec-9f61-956c1cfd48b1.png">

### 추가학습
UILabel 클래스 속성(Property)
 <img width="452" alt="스크린샷 2022-02-15 오전 12 33 08" src="https://user-images.githubusercontent.com/62687919/153894414-1cdb4d32-0550-41f9-a506-bcbb4ae2c535.png">
UIView를 상속받기에 이와 관련된 속성을 모두 사용할 수 있습니다. 속성은 .text(text값 설정(string)), .textAlignment(정렬방향 설정(NSTextAlignment)), .adjustsFontSizeToFitWidth(지정된 width에 맞춰 글자의 폰트사이즈 설정(Bool)) 등을 자주 사용했습니다.

### 궁금증 정리

코드로 View를 작성하는 것과 스토리보드로 View를 작성하는 것의 차이점은 무엇일까?

1. 스토리보드 : iOS5부터 도입되었습니다.
- 장점 : preview를 통해 작업하며 결과를 예측할 수 있습니다.
- 단점 : 링크가 끊어졌을 때 파악하기 힘듭니다. ( IBOutlet, IBAction )
#### 협업 문제 ( Diff 로 알기 힘들고, Conflict 나면 해결 어려움 ) - 여러 storyboard로 나눈다
- 데이터 흐름이 표시되지 않고 prepareSegue에 의존 (storyboard만으로 데이터를 전달하려 할 때)

2. 코드
- 장점 : 재사용이 용이합니다.
        #### 협업 시 Conflict 문제가 낮아집니다.
        storyboard로 가능한 건 모두 구현이 가능합니다.
- 단점 : 컴포넌트를 숙지하고 있어야한다.(AutoLayout, CGFrame, CGRect)
        실행 전 까지는 어떤 화면이 나올 지 예측하기 힘듭니다.
    
코드로 View관련 로직을 작성한 후 이를 잘 분리하여 유지보수하기 (협업 시 또한)편할 것 같습니다. 
스토리보드는 실행 전 UI를 직관적으로 확인할 수 있다는 점이 큰 장점이라 생각합니다. 

----

## IBAction

### 기능 요구 사항
> [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
>
> [x] 연결한 액션에 대한 메서드를 구현한다.
>
> [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다
>

### 구현 과정
1. UIButton을 첫ViewController에 추가.
2. IBAction으로 추가.
3. 추가한 함수에 로직 구현.

### 실행결과
<img width="341" alt="스크린샷 2022-02-15 오전 12 57 37" src="https://user-images.githubusercontent.com/62687919/153899060-3ceacd2d-2233-4748-8711-8714fe45f54c.png">

<img width="353" alt="스크린샷 2022-02-15 오전 1 00 51" src="https://user-images.githubusercontent.com/62687919/153899696-a6d35869-b1a5-4ad4-848b-a841de0eb0f5.png">

### 추가학습
- 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.
<img width="392" alt="스크린샷 2022-02-15 오전 1 05 06" src="https://user-images.githubusercontent.com/62687919/153900504-1dfe3875-822c-4db9-b91d-8edeb192f1bd.png">
이와 같은 이벤트가 있고 일반적으로 버튼터치 시 감지되는 이벤트는 touchUpInsdie로 알고 있습니다.

- 버튼에 액션을 여러개 추가할 수 있을까? : 네!
- 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까? : 네!

### 궁금증 정리

버튼의 이벤트를 받아오는 방법은 어떤게 있을까?
- 검색결과 
1. IBAction
2. #selector
3. RxCocoa 등이 있었습니다.


----

## Scene Segue

### 기능 요구 사항
> [x] 사진액자 - IBAction 요구사항을 구현한 상태로 시작한다.
>
> [x] 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
>
> [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.
>

### 구현 과정
1. ViewController 추가
2. 첫화면 Button에 추가된 ViewController 연결
3. 추가된 ViewController 배경 색 변경
4. 1, 2의 방식으로 ViewController를 하나 더 추가.

### 실행결과
<img width="329" alt="스크린샷 2022-02-15 오후 2 41 21" src="https://user-images.githubusercontent.com/62687919/153999596-8eb61b13-02fd-4339-93c2-f37627b0c10a.png">
<img width="336" alt="스크린샷 2022-02-15 오후 2 41 30" src="https://user-images.githubusercontent.com/62687919/153999609-b6af79aa-7a06-4984-bf27-89ca0c093aad.png">


### 추가학습
- Segue에 액션에 있는 여러 항목들은 어떤 효과가 있는지 값을 바꿔보며 실행해서 학습한다.
<img width="192" alt="스크린샷 2022-02-15 오후 2 46 35" src="https://user-images.githubusercontent.com/62687919/154000117-35447190-cf9e-4200-81ff-50bb42c3de91.png">

- show : NavigationController 가 설정되어 있을 때 컨트롤러가 오른쪽에서 왼쪽으로 슬라이드 되며 나타나고, 새로운 뷰 컨트롤러는 뒤로가기 버튼이 생성됩니다.
없을 경우 Present Modally 로 뷰를 표시합니다.

- show detail : Show detail 은 스플릿 뷰에서 사용됩니다. 두 개의 화면으로 나누어진 스플릿 뷰에서 보조 뷰의 컨트롤러를 다른 컨트롤러로 대체합니다.
스플릿 뷰가 아닐 경우 Present Modally로 뷰를 표시합니다.

- Present Modally : 뷰 컨트롤러를 화면 하단에서 상단으로 끌어올리며 모달을 만들어냅니다.

NavigationController, splitView를 사용하지 않기에 presentModally를 사용하는 방식이 좋을 것 같습니다.
추후 NavigationController로 변화될 지 SplitView로 변화될 지 모르기 때문입니다.

### 궁금증 정리
1. segue란 무엇일까?
    - ViewController간의 화면전환 시 사용되는 객체입니다.
    - 관련 클래스 검색 중 UISegmentedControl를 찾았다. UISegmentedControl는 무엇일까?
        - 탭바와 비슷한 UI객체입니다. 이의 아이템 터치 시 Delegate에서 오는 이벤트알림에 맞는 로직을 실행시킵니다.

2. Scene이란? : "화면단위" 이며 사용자에게 컨텐츠를 출력하여 보여주고, 상호작용하는 단위입니다.

3. 추가학습에서의 Segue 액션들을 모두 코드에서도 사용이 가능할까?
    
```swift
        self.show(ViewController(), sender: nil)
        self.showDetailViewController(<#T##vc: UIViewController##UIViewController#>, sender: <#T##Any?#>)
        self.present(<#T##viewControllerToPresent: UIViewController##UIViewController#>, animated: <#T##Bool#>, completion: <#T##(() -> Void)?##(() -> Void)?##() -> Void#>)
```
- NavigationController는 push, TabBarController는 addChild를 사용하는걸로 알고 있습니다.



----


## ViewController 연결

### 기능 요구 사항
> [x] 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
>

### 구현 과정
1. YelloViewController.swift, GreenViewController.swift 파일을 추가합니다.
2. 스토리보드에서 해당 scene의 swift파일을 설정해줍니다.
3. 버튼에 연결된 segue를 삭제하고 코드로 화면을 전환합니다.
4. View생명주기 함수들을 override하여 호출시기를 확인합니다.

### 추가학습
- 화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 학습한다.
- 뷰 컨트롤러와 관련된 새로운 용어들에 대해 학습한다.
- YellowViewController에서 Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법을 찾아보고 적용해본다.

### 실행결과
<img width="329" alt="스크린샷 2022-02-15 오후 2 41 21" src="https://user-images.githubusercontent.com/62687919/153999596-8eb61b13-02fd-4339-93c2-f37627b0c10a.png">
<img width="336" alt="스크린샷 2022-02-15 오후 2 41 30" src="https://user-images.githubusercontent.com/62687919/153999609-b6af79aa-7a06-4984-bf27-89ca0c093aad.png">



### 고민점 및 구현
- 코드로 화면전환하기.
    1. 버튼 터치 시 ViewController를 스토리보드에서 가져와 연결시킨 후, 화면전환으로 이를 보여줍니다.
    * 문제 : 버튼 터치 때 마다 계속 viewcontroller 변수를 설정해주는걸 해결하려 했습니다.
    * 해결 : View 생명주기를 활용하여 loadView( 뷰가 시작되자마자 ) 한번 설정을 해준 후, 활용 시 마다 변수설정 없이 이를 재활용 하였습니다.
    ----
    수정 : guard let을 활용하여 yellowViewController가 nil이라면 이를 생성하여 전역변수 if let으로 YellowViewController를 가져옵니다(storyboard?).
    실행결과 : 가장 처음 실행될 때 yellowViewController를 메모리에 올려주고 그 이후 화면전환 시 이를 재활용합니다.
            하지만 이럴 필요 없이 변수 선언 시 lazy var yellowVC = YellowViewController()와 같은 형식으로 설정해주면 됩니다.
    
    * lazy : 처음 사용되기 전까지는 연산이 되지 않습니다.
    
    * guard let VS if let 
    
    - guard let : 영역 밖에서도 값을 사용할 수 있습니다.
    - if let : if let 영역 안에서만 사용이 가능합니다.
    
- 중복되는 코드 줄이기.
    1. GreenVC와 YellowVC의 UI설정과 중복되는 기능이 있었습니다.
    * 문제 : 이를 함수를 통하여 코드를 간결하게 할 수 있을 것 같았습니다.
    * 해결 : extension에 함수를 추가하여 중복코드를 해결하였습니다.
        * 문제 : 만약 추가설정요소가 하나라도 추가될 경우, 함수의 인자값을 수정해줘야 할 것 같아 이부분에 대해 조금 더 고민해봐야 할 것 같습니다.



----
