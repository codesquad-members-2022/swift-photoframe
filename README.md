# swift-photoframe
iOS 포토프레임 프로젝트 저장소

## 01. 프로젝트 생성하기 (2/14 13시 완)
### 프로그래밍 요구사항
- TabBar Controller를 추가하고 Initial ViewController로 지정한다.
    + 기존에 스토리보드에 만들어졌던 ViewController는 지워도 된다.

<img src = "https://user-images.githubusercontent.com/44107696/153793763-70de95fb-bdf1-41c3-85f3-acc2252f54f8.png" width="800" height="700">
    * TabBar Controller 추가 (단축키 cmd+shift+L)

<img src = "https://user-images.githubusercontent.com/44107696/153793771-fb111dac-faf1-4503-a9b3-738d0b618d08.png" width="800" height="700">
    * InitialView Controller 설정
    
- TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
- 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다

<img src = "https://user-images.githubusercontent.com/44107696/153793775-c6a09648-9402-417c-aafc-bf9286c50d80.png" width="800" height="700">
    * 첫번째 Scene을 ViewController에 지정

- 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다

<img src = "https://user-images.githubusercontent.com/44107696/153793781-5d422808-edb6-4c2e-9675-ad0856750888.png" width="800" height="700">
    * 실행 후 print 안의 내용 콘솔에 찍히는 것 확인


## 02. IBOutlet 연결하기 (2/14 23:00 완)
### 프로그래밍 요구사항
- Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다
- 레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.
- Outlet 이름으로 photoLabel을 입력한다.
- ViewController 클래스 viewDidLoad() 함수에서 위에 추가한 아웃렛 변수에 값을 변경하고 다시 실행한다.
- 위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.

<img src = "https://user-images.githubusercontent.com/44107696/153889464-eb30b555-e559-4343-b6c3-724a8eff2b10.png" width="800" height="700">
    * IBOutlet 연결 및 Outlet 이름 변경, 속성 변경 진행
    
- firstLabel 아래 있는 레이블도 firstDescription 아웃렛으로 연결한다.
    + 마찬가지 방식으로 값을 변경해서 꾸며본다.

<img src = "https://user-images.githubusercontent.com/44107696/153889477-d09134c6-de77-4bf7-8740-ff10e9d7d03e.png" width="800" height="700">
    * Description 라벨 구현
    
<img src = "https://user-images.githubusercontent.com/44107696/153890748-42c57282-6974-476d-9d3c-f9ddae960c88.png" width="800" height="700">
    * 추가 사항; AutoLayout 사용을 통해 기기별 정렬 통일성 부여


## 03. IBAction 연결하기 (2/15 00:00 완)
### 프로그래밍 요구사항
- Main.storyboard 에서 First Scene에 UIButton을 추가한다.
    + 우측 유틸리티 영역 하단 3번째 탭 - 객체 라이브러리(Object Library)에서 Button 을 찾아서 View로 드래그한다.
    + 방금 추가한 버튼을 선택하고 우측 유틸리티 영역 상단 4번째 탭 - 속성(Attributes)에서 Title을 다음으로 변경한다.

<img src = "https://user-images.githubusercontent.com/44107696/153891268-f736d20e-589c-4c17-b0ec-4e5bf9c0cea5.png" width="800" height="700">

- 버튼을 선택하고 Control + 드래그해서 ViewController 코드에 IBAction으로 연결한다.
- 다음과 팝업에서 Connection 항목에서 IBOutlet 대신 IBAction 으로 변경한다.
- 액션 이름을 nextButtonTouched 로 지정한다.

<img src = "https://user-images.githubusercontent.com/44107696/153891637-c6d2a915-97dc-40dd-9df8-794e0a5d918b.png" width="800" height="700">

- ViewController 클래스에 추가된 nextButtonTouched() 메서드에 아래처럼 구현을 추가한다.

<img src = "https://user-images.githubusercontent.com/44107696/153891832-24ef5d8a-20e5-4525-a31b-4b969a28fe6f.png" width="800" height="700">
    * Button 또한 AutoLayout 적용
