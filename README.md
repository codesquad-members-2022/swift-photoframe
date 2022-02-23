### 🧑🏼‍💻 작업 목록
- [x]  프로젝트 저장소를 본인 저장소로 fork하고 local에 clone한다.
- [x]  iOS App탬플릿으로 "PhotoFrame"프로젝트를 위 local 저장소 경로에 생성한다.
- [x]  스토리보드에서 TabBar Controller를 직접 추가하고 기존 ViewController는 지워서 사용한다.
- [x]  TabBarController에 Tab을 2개로 지정하고, Scene을 추가하여 연결한다.
- [x]  ViewController 클래스 viewDidLoad() 함수에서 print 코드를 추가하여 실행 후 콘솔영역을 확인한다.   
![Screen Shot 2022-02-14 at 20 29 14 PM](https://user-images.githubusercontent.com/92699723/153865152-59030565-c364-4c3b-93fa-058dc83b31cf.png)

### 학습 키워드
- git command
- TabBarController
- Pull Request
- Git Commit Convention
- Custom Class
- Initial View Controller
### 고민과 해결
- git commit convention에 대해 아직 어색하고 제대로 작성하지 못하였다...
- 스토리보드에 ViewController를 지우고 진행해보지 못해서 당황했었다.   
-> ViewController.swift 파일에서 먼저 코드를 작성하고 스토리보드의 TabBarController를 연결하여 해결하였다.
- PR을 보내는데 master/main 으로 보내지않아야 하는 걸 같은 팀원의 고민해결방법을 보고 조금은 수월하게 진행되었다.   

# STEP2
## 기능 요구사항
- [x] 사진액자 앱 - 시작하기 요구사항 구현내용 상태에서 시작
- [x] First Scene에 만들어져 있는 레이블 연결
- [x] 연결한 Outlet 변수에 값을 변경
## 프로그래밍 요구사항
- [x] Xcode 프로젝트에 Assistant Editor 모드로 변경한다.
- [x] **control + Drag** 해서 ViewController 코드에 연결

### First Scene에 레이블 연결
Assistant Editor 모드로 변경하여 ViewController.swift파일에 레이블을 선택하고 연결하려고하였다.   
하지만 계속 Assistan에서 ViewController.swift파일이 열리지않아 당황하였고 Step1부터 다시 찾아보았지만 해결하지 못하였다.   
-> 팀원들에게 도움을 요청하였고 해답까진 아니였지만 어느정도 알지 못한 부분을 알게 되었다.   
- 해결1. TaBbarController에 연결된 Scene1(viewController)의 상단 부분에 3가지 버튼이 존재하였는데(이 부분을 도크(Dock)라고 부른다)   
    이곳에서 custom class를 지정해줘야했다.   
- 해결2. 이곳의 Class항목에서 UIViewController를 찾을 수 없어 헤매다 처음 TabBarController의 class명을   
    바꿔서 사용했던것이 기억났고 적용하여보니 ViewController.swift 파일이 열리는 것을 확인하고 IBOutlet으로 연결할 수 있었다.
    ![Screen Shot 2022-02-15 at 15 32 59 PM](https://user-images.githubusercontent.com/92699723/154010342-e30db773-b0b6-44ef-9577-12bb042aa40c.png)
### 추가한 Outlet 변수에 값을 변경하고 다시 실행
실행하였지만 Error message를 볼 수 있었다...   
```
PhotoFrame/ViewController.swift:18: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
2022-02-15 15:55:17.582736+0900 PhotoFrame[25752:1700096] PhotoFrame/ViewController.swift:18: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value
```
- 해결1. 다시 Mission 내용을 살펴보았고 Class를 잘못 설정했다는 것을 알 수 있었다.
- 해결2. FirstViewController.swift파일을 생성하고 class를 새로 생성한 뒤 IBOutlet으로 연결하여 출력결과를 확인할 수 있었다.   
<img src="https://user-images.githubusercontent.com/92699723/154010404-65cf00ce-75f5-4114-8a2f-ebd7918a4d32.png" width="800
" height="400"/>   
<img src="https://user-images.githubusercontent.com/92699723/154010450-46fc4bb2-5d9d-4111-a5bd-2893a63c4ff1.png" width="800" height="400"/>   
### photoLabel의 속성을 변경해본다.
<img src="https://user-images.githubusercontent.com/92699723/154013140-110ab0ec-a9e2-4235-91b0-c0dc29c2b133.png" width="400" height="400"/>   

### photoLabel 아래 레이블도 firstDescription Outlet 연결
<img src="https://user-images.githubusercontent.com/92699723/154013944-ff568ccf-708f-4c8a-9c90-3c08eaf522ed.png" width="800" height="400"/>   

# STEP3
## IBAction 연결하기   
- [x]  First Scene에 버튼 (UIButton)을 추가하고 IBAction으로 연결한다.
    - [x]  Main.storyboard에서 First Scene에 UIButton을 추가
    - [x]  버튼을 선택하고 ViewController 코드에 IBAction 연결
    - [x]  팝업에서 Connection 항목에서 IBOutlet → IBAction으로 변경
- [x]  연결한 액션에 대해 메서드 구현
    - [x]  ViewController 클래스에 추가된 nextButtonTouched()메서드 구현추가
    - [x]  실행하고 버튼을 터치하기 이전/이후 화면 캡쳐해서 readme.md 파일에 포함
### Step3 - 1
- 우측 유틸리티 영역과 좌측 네비게이터 영역이라고하며 Command + Option + 숫자0 단축키로 유틸리티 영역을 확인하였다.
- 속성(Attributes)에서 Title 항목에서 '다음'으로 변경하였고
- storyboard에서 ViewController 코드에 연결하였다.
<img src="https://user-images.githubusercontent.com/92699723/154876613-d2e98616-0a13-478d-b36a-7bb9eb99910b.png" width="700" height="200"/>      

### Step3 - 2
- Mission 메서드 요구사항에 맞춰 구현완료   
<img src="https://user-images.githubusercontent.com/92699723/154877257-ef9ee795-9232-47ea-819d-6c624d18ef6d.png" width="400" height="400"/><img src="https://user-images.githubusercontent.com/92699723/154877262-3c5e744d-e082-4af6-8e10-98f82e04c435.png" width="400" height="400"/>      

# STEP4
## Scene을 Segue로 연결하기
- [x]  IBAction 요구사항을 구현한 상태로 시작한다
- [ ]  스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
    - [x]  Main StoryBoard에서 First Scene옆에 ViewController를 드래그해서 새로운 Scene추가
    - [x]  Action Segue에서 show 항목선택
    - [x]  Segue 속성변경
- [x]  실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.
- Main 스토리보드에 ViewController를 드래그하여 새로운 Scene을 추가하였다.
- '다음' 버튼을 선택하고 연결하였다.
- Action Segue도 Show 항목으로 선택하였다.
- 새로 추가한 Scene 속성에 배경색상을 바꾸고 새로운 화면이 나타나는지 확인하였다.
  <img src="https://user-images.githubusercontent.com/92699723/154891103-2dd6bf80-e3a8-41c0-b4e2-88aa86230d8e.gif" width="300" height="600">
- Scene 하나를 더 추가하여 두 번째 Scene의 화면이 나오는 방식으로 기능 구현을 완료하였다.
  <img src="https://user-images.githubusercontent.com/92699723/154891867-56c86838-1f66-4dfe-a713-0bc031d173eb.gif" width="300" height="600">   

## 세그웨이(Segue)를 이용한 화면 전환   
- 세그웨이(Segue)역할: 스토리보드에서 뷰 컨트롤러 사이의 연결 관계 및 화면 전환을 관리   
  - 화면과 화면을 연결하기 위해 아무런 소스 코드도 필요로 하지 않는다는 것이 특징이다.   
  - **스토리보드상에서 Segue는 뷰 컨트롤러 사이에 연결된 화살표로 표시된다.**
  - 화살표는 한쪽 방향으로 향하는 모습을 하고있는데, 이는 출발점과 도착점이 있다는 뜻이다.
  - Segue는 한쪽으로만 통행할 수 있으니 One-Way Bridge라고한다. 즉, 한 쪽 방향으로만 흐르는 화면전환이다.   
  - 세그웨이(Segue) 종류
    - 메뉴얼 세그웨이(Manual Segue): 츨발점이 뷰 컨트롤러 자체인 경우
    - 액션 세그웨이(Action Segue) 또는 트리거 세그웨이(Trigger Segue): 버튼 등이 출발점인 경우

# STEP5
## ViewController 연결하기
- [x]  ViewController 역할에 대해 학습
- [x]  ViewController 서브클래스를 생성
  - [x] Cocoa Touch Class를 서브클래스로 생성하여 UIViewController에 상속받도록 입력
  - [x] 새로 추가한 Scene 클래스 지정
- [x]  ViewController 콜백 함수들 역할과 실행 순서를 이해한다
  - [x]  강의 자료에 있는 화면 관련된 콜백 함수들에 모두 print코드를 추가
- [x]  ViewController 와 Scene을 연결
  - [x] IBAction 연결하여 메서드 코드작성

<img src="https://user-images.githubusercontent.com/92699723/154985264-bf3aa7ca-8282-4a5e-bb82-009775743484.gif" width="300" height="600">

<img src="https://user-images.githubusercontent.com/92699723/154985600-52e2f246-2fdf-44d8-9a9f-52fb1f3c13e1.jpg" width="400" height="600">

<img src="https://user-images.githubusercontent.com/92699723/154985620-64eee45a-ba5b-4110-8b96-41e3cce64eac.jpg" width="400" height="600">

# STEP6
## Container ViewController 활용
- [x]  ViewController Container 역할에 대해 학습하고 이해한다
- [x]  ViewController Contatiner 종류에 대해 학습하고 활용한다
- [x]  ViewController Container를 구현하기 위해 필요한 내용을 학습한다.
  - [x]  Navigation Controller를 Embed시켜서 동작하도록 개선한다.
  - [x]  실행화면 readme에 포함한다.

<img src="https://user-images.githubusercontent.com/92699723/155069321-b2279ae4-bdf2-4fa4-bd88-b0a7a51cf9be.gif" width="300" height="600">

# STEP7
- [ ]  Step7 다른화면 연결하기
    - [ ]  탭바에 Second Scene을 설정할 수 있다.
    - [ ]  UImageView를 추가해서 원하는 이미지를 표시할 수 있다
      - [ ] 화면 상단 중앙에 배치하고, photoImageView Outlet으로 연결
      - [ ] [다음] 버튼을 추가하고 Action으로 연결
    - [ ]  Xcode 프로젝트에 앱 번들 리소스를 추가할 수 있다.
      - [ ]  이미지 다운로드받아 프로젝트에 추가한다.
      - [ ]  [다음] 버튼에 연결된 파일에 랜덤 숫자를 선택해서 이미지뷰에 표시한다.

# STEP8
- [ ]  Step8 사진 앨범 선택하기
    - [ ]  원하는 뷰를 앞-뒤로 배치할 수 있다.
      - [ ] 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 표시한다.
    - [ ]  ImagePickerController 역할을 학습하고, 원하는 사진을 불러올 수 있다.
      - [ ] [다음] 버튼 아래 [선택] 버튼을 추가하고 IBAction을 연결한다.