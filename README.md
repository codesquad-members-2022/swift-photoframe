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


## 04. Scene을 Segue로 연결하기
### 프로그래밍 요구사항
- Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
- 팝업으로 표시되는 Action Segue에서 Show 항목을 선택한다.

<img src = "https://user-images.githubusercontent.com/44107696/153982970-8aa78f98-d4e8-40d9-ba3f-6d4d39bccae9.png" width="800" height="700">

- Scene과 Scene 사이에 화살표를 선택하면 Segue 속성을 변경할 수 있다.

<img src = "https://user-images.githubusercontent.com/44107696/153999629-87c3d0f9-bdbc-4e03-85d6-d634f3405eb6.png" width="800" height="700">
<img src = "https://user-images.githubusercontent.com/44107696/154000145-23076531-3fb3-4ef8-84e5-ab93290a202d.png" width="800" height="700">
    * 버튼과 직접 Segue 연결 / ViewController와 Segue 연결 후 Identifer를 설정하여 코드에서 performSegue / Storyboard ID설정을 하고 present 메서드를 통해 코드로 연결하는 세가지 방법 전부 활용
    * Controller 간의 데이터 전달을 좀 더 직관적으로 구현할 수 있는 Identifier 연결 방법을 개인적으로 선호
    
- 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다. 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.
- 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다. 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다. 위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.
    + 예를 들어 First Scene 다음에 추가한 화면이 Yellow 화면이었다면, First Scene에서 [다음] 버튼을 누르면 Yellow 화면이 표시되고, Yellow 화면에서 [다음] 버튼을 누르면 Blue 화면이 나오는 방식으로 두 단계 표시한다.

<img src = "https://user-images.githubusercontent.com/44107696/154005584-5e81a023-58f4-4d73-9239-50f5456f5fb0.png" width="800" height="700">
    * 화면전환(segue) 시, 대상 ViewController에 데이터를 전달하는 prepare 메서드 활용
    * 다음 화면에서 나올 레이블의 디폴트 값을 전달 ("슈슈슈슈슉")

<img src = "https://user-images.githubusercontent.com/44107696/154005593-179b4390-acfc-4542-816f-2431578291e1.png" width="800" height="700">
    * viewDidLoad에 기본값 할당
    * 아래의 버튼을 누르면 기본값과 다른 각각의 변경 요소를 보여줄 수 있도록 toggle 및 삼항 연산자 활용 (상태에 따른 뷰 변화)

- 결과 값
<img src = "https://user-images.githubusercontent.com/44107696/154007595-1977ba5f-da7f-4d0d-9a7a-2ea3c8a0f7cd.jpeg" width="960" height="540">


## 05. ViewController 연결하기
### 프로그래밍 요구사항
- 프로젝트에 새로운 ViewController 클래스를 추가한다. File > New... > File... 메뉴를 선택한다. 다음과 같은 화면에서 Cocoa Touch Class를 선택한다.
- 다음과 같이 UIViewController에서 상속받도록 입력하고, 원하는 클래스명을 입력한다. (예시 YellowViewController)
- 다음 화면에서는 프로젝트내 어떤 경로에 저장하며, 프로젝트 그룹/타깃에 저장할 것인지 선택한다.
    + 하위 디렉토리가 있거나 원하는 하위 그룹이 있으면 변경할 수 있다.
    + 빌드하는 타깃이 여러 개인 경우, 복수로 선택할 수도 있다.
- 스토리보드에서 새로 추가한 Scene을 선택하고, 우측 유틸리티 영역 3번째 Identity 탭을 선택한다.
    + Custom Class > Class 항목에 YellowViewController (자신이 생성한 클래스 이름)을 지정한다.
    + 자동완성이 되야 클래스가 제대로 생성된 것이다. 자동완성이 안된다면 앞 단계를 다시 확인해서 UIViewController에서 상속 받도록 만들었는지 확인하고 클래스를 다시 만든다.

<img src = "https://user-images.githubusercontent.com/44107696/154086263-bed3be2d-9c9d-4f1d-b57a-01240dd9e075.png" width="800" height="700">
    * 기존에 Swift File로 생성한 ViewController를 Cocoa Touch Class를 통해서 생성하는 방법으로 시도
    
- 이제 스토리보드에서 YellowViewController 화면에 [닫기] 버튼을 추가한다.
- Assistant Editor를 선택하고 [닫기] 버튼에 대한 IBAction 액션을 연결한다.
    + 만약 방금 추가한 YellowViewController (혹은 자신이 생성한 클래스)가 우측에 자동으로 연결되지 않으면 Custom Class가 정상적으로 연결되지 않았거나
    + 우측 Assistant 편집기 상단에 점프바(JumpBar)에 Automatic 이라고 선택되어 있는지 확인한다. 다른 상태인 경우 Automatic으로 변경한다.
- IBAction 이름은 closeButtonTouched로 지정하고 다음과 같이 코드를 작성한다.
- 위와 동일하게 세 번째 추가한 화면에 대해 ViewController 클래스를 지정하고, [닫기]버튼을 추가하고, 액션을 연결해서 화면을 닫는 동작이 동작하도록 구현한다.

<img src = "https://user-images.githubusercontent.com/44107696/154086285-0320ad1f-197b-4d11-8dfd-73672c79ea03.png" width="800" height="700">
    * dismiss 사용법 연습 후, 첫번째 segue를 dismiss로 구현
    
<img src = "https://user-images.githubusercontent.com/44107696/154086289-956c71af-74ed-4118-8eff-ea8c906e98c0.png" width="800" height="700">
    * 두번째 segue 연결 Scene은 dismiss가 아닌, unwind를 활용하여 바로 첫번째 Scene 화면으로 돌아갈 수 있도록 구현

- 뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 print(#file, #line, #function, #column) 코드를 추가한다.

<img src = "https://user-images.githubusercontent.com/44107696/154093169-11378efb-a5c3-4ae6-bdf2-5e393018842b.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154093183-bd14c4e0-91b1-40c1-9d37-0220e6230fb6.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154093189-d02d6af1-f9d6-4b5e-95e0-d0496cdcabe2.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154093194-a7b3b9fd-b65b-4d97-8d1b-1f61707d53ca.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154093196-b9cec488-71a8-4206-a555-767ef8f0af18.jpeg" width="960" height="540">


## 06. Container ViewController 활용하기
### 프로그래밍 요구사항
- 스토리보드에서 First Scene을 선택하고, Editor > Embed In > Navigation Controller 항목을 선택한다.
- 실행해보면 화면 상단에 내비게이션바(Navigation Bar)가 추가되고 [다음]버튼을 누르면 다음 화면이 우측에서 좌측으로 애니메이션되면서 표시된다.

<img src = "https://user-images.githubusercontent.com/44107696/154216824-f5bc31bf-d17f-4eb8-9659-9234448185c4.png" width="800" height="700">
    * rootView로 연결
    
- [닫기]버튼에 연결된 closeButtonTouched 코드를 다음과 같이 수정한다.
- 위와 동일하게 세 번째 추가한 화면에 [닫기]버튼도 코드를 수정한다.

<img src = "https://user-images.githubusercontent.com/44107696/154216836-73ed4ce5-d993-431d-a668-514a62b40c7d.png" width="800" height="700">
    * 기존에 Segue로 연결한 요소를 유지하고 네비게이션 바 버튼을 새로 추가 후, 해당 버튼의 액션은 pushViewController를 호출하는 방식으로 구현
    
<img src = "https://user-images.githubusercontent.com/44107696/154216842-7db2c8fe-9985-415f-bbf3-24eb7ac0d2f4.png" width="800" height="700">
    * 앞과 동일하게 push 구현과 함께 아래의 버튼 클릭시 popViewController를 호출하며 이전 뷰로 돌아갈 수 있도록 구현
    
<img src = "https://user-images.githubusercontent.com/44107696/154216847-d1ed3286-c9cc-461f-85d8-bbe362801d70.png" width="800" height="700">
    * 기본적으로 Back 버튼이 구현되어 있으므로 상단의 버튼 클릭 시, 이전에 dismiss로 구현했던 rootView로 돌아가는 동작을 popToRootViewController를 호출하는 방식으로 재구현
    * push / pop과 segue를 통한 화면 전환 정상 작동 확인

- 뷰 컨트롤러 콜백 함수들 동작도 동일한지 확인한다.
<img src = "https://user-images.githubusercontent.com/44107696/154220313-1d469a4f-5a84-45d1-88d8-965fb60472a5.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154220331-bd38b47a-2fa0-4d08-8dba-9c7d2a9c77dd.jpeg" width="960" height="540">
<img src = "https://user-images.githubusercontent.com/44107696/154220334-f1eedad6-d667-4843-85e3-d353d37416d0.jpeg" width="960" height="540">
