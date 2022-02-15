### 🧑🏼‍💻 작업 목록
- [x]  프로젝트 저장소를 본인 저장소로 fork하고 local에 clone한다.
- [x]  iOS App탬플릿으로 "PhotoFrame"프로젝트를 위 local 저장소 경로에 생성한다.
- [x]  스토리보드에서 TabBar Controller를 직접 추가하고 기존 ViewController는 지워서 사용한다.
- [x]  TabBarController에 Tab을 2개로 지정하고, Scene을 추가하여 연결한다.
- [x]  ViewController 클래스 viewDidLoad() 함수에서 print 코드를 추가하여 실행 후 콘솔영역을 확인한다.   
<img src="https://user-images.githubusercontent.com/92699723/153865152-59030565-c364-4c3b-93fa-058dc83b31cf.png" width="800" height="400"/>

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
- [ ] First Scene에 만들어져 있는 레이블 연결
- [ ] 연결한 Outlet 변수에 값을 변경
## 프로그래밍 요구사항
- [ ] Xcode 프로젝트에 Assistant Editor 모드로 변경한다.
- [ ] **control + Drag** 해서 ViewController 코드에 연결
- [ ] 

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