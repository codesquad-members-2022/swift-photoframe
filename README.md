# swift-photoframe
iOS 포토프레임 프로젝트 저장소

<br>
<br>

# 1. 프로젝트 생성하기 
### 완성 날짜
- 02월 14일 11:30

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/153791775-ccf47187-182d-4244-bf04-e9062dc23f92.png" width="30%">
<img src="https://user-images.githubusercontent.com/57667738/153791790-8e5963c7-a073-4b7f-860f-2f6a6627b030.png" width="30%">
<img src="https://user-images.githubusercontent.com/57667738/153791808-e351244d-bfa9-4040-a94f-c2dd217f8e4b.png">

<br>
<br>


## **기능요구사항**
- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
- [x] 특정한 시뮬레이터를 하나 골라서 실행한다.
- [x] readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.
- [x] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

<br>


## **프로그래밍 요구사항**
- [x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
- [x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다
- [x] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다

<br>
<br>

# 2. IBOutlet 연결하기
### 완성 날짜
- 02월 14일 23:00

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/153876555-cd83442e-a6fa-4269-a5df-49789dfb6115.png" width="30%">

<br>
<br>

## **기능요구사항**
- [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
- [x] 연결한 아웃렛 변수에 값을 변경한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

## **프로그래밍 요구사항**
- [x] Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
- [x] 레이블을 선택하고 `Control + 드래그`해서 ViewController 코드에 IBOutlet으로 연결한다.
- [x] Outlet 이름으로 `photoLabel`을 입력한다.
- [x] ViewController 클래스 viewDidLoad() 함수에서 위에 추가한 아웃렛 변수에 값을 변경하고 다시 실행한다.

```swift
self.firstLabel.text = "Mase의 사진액자"
```

- [x] 위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.
- [x] firstLabel 아래 있는 레이블도 `firstDescription` 아웃렛으로 연결한다.
    - [x] 마찬가지 방식으로 값을 변경해서 꾸며본다.

<br>
<br>

# 3. IBAction 연결하기
### 완성 날짜
- 02월 16일 12:20

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/154190199-7012a2c2-5a8d-47e1-bc36-b7460271e6aa.png" width="30%">
<img src="https://user-images.githubusercontent.com/57667738/154190215-ae63942f-64d4-413c-9546-48bf47ed05fd.png" width="30%">

<br>
<br>

## **기능요구사항**
- [x] 사진액자 - IBOutlet 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- [x] 연결한 액션에 대한 메서드를 구현한다.
- [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.

## **프로그래밍 요구사항**
- [x] Main.storyboard 에서 First Scene에 UIButton을 추가한다.
    - [x] 우측 유틸리티 영역 하단 3번째 탭 - 객체 라이브러리(Object Library)에서 Button 을 찾아서 View로 드래그한다.
    - [x] 방금 추가한 버튼을 선택하고 우측 유틸리티 영역 상단 4번째 탭 - 속성(Attributes)에서 Title을 `다음`으로 변경한다.
- [x] 버튼을 선택하고 `Control + 드래그`해서 ViewController 코드에 IBAction으로 연결한다.
- [x] 다음과 팝업에서 Connection 항목에서 IBOutlet 대신 IBAction 으로 변경한다.
- [x] 액션 이름을 `nextButtonTouched` 로 지정한다.
- [x] ViewController 클래스에 추가된 nextButtonTouched() 메서드에 아래처럼 구현을 추가한다.
    
    ```swift
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    ```

<br>
<br>

# 4. Scene을 Segue로 연결하기
### 완성 날짜
- 02월 16일 15:50

<br>

### 완성 화면 
|First Scene|||
|:-:|:-:|:-:|
|![First Image](https://user-images.githubusercontent.com/57667738/154211151-f8e91e4f-75c2-4d9a-84a2-a95795ee6200.png)|![](https://user-images.githubusercontent.com/57667738/154211198-23ec1673-8794-471c-9e50-06541eab2597.png)|![](https://user-images.githubusercontent.com/57667738/154211179-9dff602e-477d-4ea1-8de2-230f6e42c5d1.png)


<br>
<br>

## **기능요구사항**

- [x] 사진액자 - IBAction 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

<br>

## **프로그래밍 요구사항**

- [x] Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
- [x] 앞 단계에서 추가한 [다음]버튼을 선택하고 `Control + 드래그`를 해서 새로 추가한 Scene에 연결한다.
    - [x] 팝업으로 표시되는 Action Segue에서 `Show` 항목을 선택한다.
- [x] Scene과 Scene 사이에 화살표를 선택하면 Segue 속성을 변경할 수 있다.
- [x] 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다.
- [x] 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.
- [x] 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다.
- [x] 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다.<br>위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.
    - [x] 예를 들어 First Scene 다음에 추가한 화면이 Yellow 화면이었다면,<br>First Scene에서 [다음] 버튼을 누르면 Yellow 화면이 표시되고,<br>Yellow 화면에서 [다음] 버튼을 누르면 Blue 화면이 나오는 방식으로 두 단계 표시한다.

<br>
<br>

# 5. View Controller 연결하기
### 완성 날짜
- 02월 17일 15:15

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/154415994-c240ce43-d5f6-452e-af06-762b42f96a22.gif" width="50%" />

<br>
<br>

## **기능요구사항**

- [x] 사진액자 - Scene과 Segue 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

## **프로그래밍 요구사항**

- [x] 프로젝트에 새로운 ViewController 클래스를 추가한다. File > New... > File... 메뉴를 선택한다. 다음과 같은 화면에서 Cocoa Touch Class를 선택한다.
- [x] 다음과 같이 UIViewController에서 상속받도록 입력하고, 원하는 클래스명을 입력한다. (예시 YellowViewController)
- [x] 다음 화면에서는 프로젝트내 어떤 경로에 저장하며, 프로젝트 그룹/타깃에 저장할 것인지 선택한다.
    - [x] 하위 디렉토리가 있거나 원하는 하위 그룹이 있으면 변경할 수 있다.
    - [x] 빌드하는 타깃이 여러 개인 경우, 복수로 선택할 수도 있다.
- [x] 스토리보드에서 새로 추가한 Scene을 선택하고, 우측 유틸리티 영역 3번째 Identity 탭을 선택한다.
    - [x] Custom Class > Class 항목에 `YellowViewController` (자신이 생성한 클래스 이름)을 지정한다.
    - [x] 자동완성이 되야 클래스가 제대로 생성된 것이다. 자동완성이 안된다면 앞 단계를 다시 확인해서 UIViewController에서 상속 받도록 만들었는지 확인하고 클래스를 다시 만든다.
- [x] 이제 스토리보드에서 YellowViewController 화면에 [닫기] 버튼을 추가한다.
- [x] Assistant Editor를 선택하고 [닫기] 버튼에 대한 IBAction 액션을 연결한다.
    - [x] 만약 방금 추가한 `YellowViewController` (혹은 자신이 생성한 클래스)가 우측에 자동으로 연결되지 않으면 Custom Class가 정상적으로 연결되지 않았거나
    - [x] 우측 Assistant 편집기 상단에 점프바(JumpBar)에 `Automatic` 이라고 선택되어 있는지 확인한다. 다른 상태인 경우 `Automatic`으로 변경한다.
- [x] IBAction 이름은 `closeButtonTouched`로 지정하고 다음과 같이 코드를 작성한다.

```swift
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
```

- [x] 위와 동일하게 세 번째 추가한 화면에 대해 ViewController 클래스를 지정하고, [닫기]버튼을 추가하고, 액션을 연결해서 화면을 닫는 동작이 동작하도록 구현한다.
- [x] 뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 `print(#file, #line, #function, #column)` 코드를 추가한다.
    - viewWillAppear()
    - viewDidAppear()
    - viewWillDisappear()
    - viewDidDisappear()

<br>
<br>

# 6. Container ViewController 활용하기
### 완성 날짜
- 02월 18일 15:25

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/154629797-a644a300-2b10-46ae-aa3f-e4ee496ebe9f.gif" width="30%" />

- [닫기]버튼 또는 [< Back]버튼을 누르면 이전 View로 돌아간다
- 세 번째 View에서 [초기화면으로 돌아가기]버튼을 누르면 이전 View가 아닌 RootView로 돌아간다

<br>
<br>

## **기능요구사항**

- [x]  사진액자 - ViewController 요구사항을 구현한 상태로 시작한다.
- [x]  내비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선한다.
- [x]  실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

<br>

## **프로그래밍 요구사항**

- [x]  스토리보드에서 First Scene을 선택하고, Editor > Embed In > Navigation Controller 항목을 선택한다.
- [x]  실행해보면 화면 상단에 내비게이션바(Navigation Bar)가 추가되고 [다음]버튼을 누르면 다음 화면이 우측에서 좌측으로 애니메이션되면서 표시된다.
- [x]  [닫기]버튼에 연결된 `closeButtonTouched` 코드를 다음과 같이 수정한다.

        @IBAction func closeButtonTouched(_ sender: Any) {
            self.navigationController?.popViewController(animated: true)
        }
        
- [x]  위와 동일하게 세 번째 추가한 화면에 [닫기]버튼도 코드를 수정한다.
- [x]  뷰 컨트롤러 콜백 함수들 동작도 동일한지 확인한다.

<br>

## **추가학습거리**

### 뷰컨트롤러 컨테이너는 또 어떤 클래스가 있는지 찾아보고 학습한다.
- NavigationController
    - Stack 기반의 container view controller이다.
    - 제공하는 navigation 인터페이스로 1개 이상의 view controller를 관리할 수 있다.
    - Stack 기반이므로 최상단에 있는 하나의 view controller만이 보여지게 되고<br>view controller를 push 혹은 pop을 통해 보여질 view controller를 결정한다.

- TabBarController
    - Selection에 따라 어떤 child view controller가 화면에 보여질 지 관리하는 Container view controller이다.

- SplitViewController
    - 화면을 분할해서 2개의 view controller를 함께 표현.
    - 화면 왼쪽에 MasterViewController, 오른쪽에 DetailViewController가 있다.
    - 다른 뷰컨트롤러 컨테이너들과 달리 Child의 수가 2개로 고정되어있다.

- PageViewController
    - 각 페이지가 Child View Controller에 의해 관리되는,<br>컨텐츠 페이지 간의 탐색을 관리하는 컨테이너 뷰 컨트롤러이다.
    - 좌우로 Swipe하며 여러 view를 표시한다.

<br>

### 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지 학습한다.
- NavigationController가 있을 경우
    - 오른쪽에서 왼쪽으로 전환되는 방식(`Show`)으로 동작한다.
    - NavigationController가 다른 View를 호출한다.
    - 호출된 View는 Stack에 Push-Pop되며 Scene에 나타났다가 사라진다.
    - pushViewController, popViewController메소드를 사용한다.

- NavigationController가 없을 경우
    - 아이폰에서는 항상 `Present Modally` 방식으로 전환된다.

<br>

### 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.
- View가 Stack형태로 쌓이는 구조이기 떄문이다.
- 맨 마지막에 Scene에 올라온 View가 사용자에게 보이고, 해당 View를 Pop하면 직전에 쌓였던 View가 나타난다.
- Navigation VC를 Embed한 View가 항상 Stack의 맨 첫 번째로 들어간다.

<br>
<br>

# 7. 다른 화면 연결하기
### 완성 날짜
- 02월 19일 20:10

<br>

### 완성 화면
<img src="https://user-images.githubusercontent.com/57667738/154802033-d55e5575-9282-4628-92a1-585be0138b69.gif" width="30%" />

<br>
<br>

# **기능요구사항**

- [x] 사진액자 - Container ViewController 요구사항을 구현한 상태로 시작한다.
- [x] 탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

# **프로그래밍 요구사항**

- [x] 스토리보드에서 Second Scene을 선택하고, 다음과 같이 보이도록 화면을 디자인한다.
    - [x] 기존에 있던 두 번째 레이블은 삭제한다.
    - [x] UIImageView를 화면 상단 중앙에 240 x 240 크기로 배치하고, `photoImageView` 아웃렛으로 연결한다.
    - [x] 화면 하단에 [다음] 버튼을 추가하고 `nextImageButtonTouched` 액션으로 연결한다.

    
- [x] 앱에 포함할 사진 리소스를 다운로드한다. 압축을 풀고 이미지 파일들을 Xcode 프로젝트로 드래그해서 추가한다.
- [x] [다음]버튼에 연결된 `nextImageButtonTouched`에서는 01부터 22까지 랜덤으로 숫자를 선택해서 해당하는 이미지 파일을 photoImageView에 표시한다. 이미지뷰에 표시하는 방법은 다음과 같다.
    ```swift
    self.photoImageView.image = UIImage(named: "01.jpg")
    ```

- [x] 이미지뷰의 속성을 조정해서 이미지가 비율에 맞춰서 표시되도록 조정한다.