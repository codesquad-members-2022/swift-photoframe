- ViewController ~~p33~~,~~102~~
    - Object Library(오브젝트 라이브러리)에서 스토리보드에 연결할 수 있다.
    - iOS에서 가장 기본이 되는 컨트롤러로서 앱의 데이터와 표시될 외형을 연결해서 하나의 동적인 화면을 만들어내는 컨트롤러
    - 뷰 컨트롤러에 해당하는 UIKit 프레임워크의 클래스는 UIViewController이다.
- Navigation Container p103
    - 앱의 화면 이동에 관리와 그에 연관된 처리를 담당
    - 
- ViewController.swift
    - import 키워드 - 라이브러리나 프레임워크 등 사용하고자 하는 기능 관련 파일을 반입하라는 뜻
    - UIViewController 라는 클래스를 상속받아 ViewController라는 이름의 새로운 클래스를 정의하는 내용
        
        ```swift
        class ViewController: UIViewController {
        ```
        
    - viewDidLoad() - 부모 클래스인 UIViewController 클래스에 정의되어 있는 메서드로, ‘View의 로딩이 완료’되었을 때 시스템에 의해 자동으로 호출된다.
        - 리소스를 초기화하거나 초기화면을 구성하는 등, 처음 한 번만 실행해야 하는 초기화 코드는 대부분 이 메서드 내부에 작성하면된다.
    - super.viewDidLoad() - 부모 클래스에 정의된 viewDidLoad() 메서드의 내용도 모두 실행된다는 의미인데 이는 ViewController 클래스에서 부모 메서드에 정의된 이 메서드를 재정의(Override)하고 있어 override 키워드가 추가되어 있다.
- LaunchScreen.storyboard
    - 시작 화면 파일 → 앱을 제작하는 회사의 로고를 표시하거나 단말기에서 앱이 처음 실행될 때 주요 데이터를 초기화할 수 있는 시간을 벌어주는 역할
- AppDelegate.swift
    - AppDelegate 클래스가 정의되어 있는데, 이 클래스는 앱 전체의 흐름을 컨트롤하는 객체로서 앱이 처음 실행되거나 종료될 때, 혹은 백그라운드 상태로 들어가거나 포그라운드 상태로 활성화될 때 호출되는 메서드들로 구성되어 있다.
    - application(_:didFinishLaunchingWithOptions:)
        - 앱이 처음 실행될 때, 필요한 시스템적 처리를 모두 끝내고 메인 화면을 표시하기 직전에 호출된다.
        - 앱이 맨 처음 실행될 때 시작 화면이 모바일 기기의 스크린에 표시된 후 이 메서드가 호출되고, 이 메서드 내부에 작성된 내용이 모두 실행되고 나면 앞에서 구현한 Main.storyboard 파일의 화면이 스크린에 표시되는 것이다.
- View LifeCycle  p108
- Cocoa Touch Class
- Callback Function p113
- Segue(세그웨이) ~~p37~~,213
    - Segue를 이용한 화면 전환: 스토리보드를 통해 출발지와 목적지를 직접 지정하는 방식
    - Segue: 두 개의 View Controller 사이에 연결된 화면 전환 객체
- Cocoa Touch Framwork ~~p82 p88~~
    - 애플 개발 환경에서 클래스 앞에 공통으로 붙는 접두어는 대부분 소속을 나타냄.
    - UIApplication, UIButton 등은 스위프트 언어 자체에서 제공하는 클래스가 아닌 프레임워크를 통해 제공되는 클래스이다.
        - 프레임워크란 사전적 의미로 “어떤 것을 이루는 뼈대, 기본 구조"를 의미하며, 소프트웨어에서 사용하는 프레임워크는 App 제작을 빠르고 편리하게 할 수 있도록 미리 뼈대를 이루는 각종 코드를 제작하여 모아둔 것.
        - 아래의 프레임워크등의 계층을 거슬러 올라가면 코코아 터치 프레임워크라는 하나의 거대한 프레임워크가 나온다.
            - 파운데이션 프레임워크 - 네트워크나 날짜 연산등의 기능 처리
            - 코어 애니메이션 프레임워크 - 애니메이션 처리
            - 웹킷 - 웹과 관련된 기술 구현
            - AddressBookUI - 주소록 화면 관련 기능
    - 
- MVC Pattern ~~p77~~
    - 소스 코드 설계 기법
    - 모델(Model) - 뷰(View) - 컨트롤러(Controller)
    - 모델(Model) - 데이터 담당
    뷰(View) - 데이터에 대한 화면 표현 담당
    컨트롤러(Controller) - 모델과 뷰 사이에 위치하여 데이터를 가공하여 뷰로 전달하고, 뷰에서 발생하는 이벤트를 입력받아 처리하는 역할을 담당
    - 장점: 데이터와 비즈니스 로직을 시각적인 표현으로부터 분리해 줌으로써 화면을 신경 쓰지 않고도 데이터나 비즈니스 로직을 작성할 수 있다는 점
    - 프로그램을 특성에 따라 서로 영향을 미치지 않을 수 있는 범위로 분리해 놓았고 화면을 표현하는 코드를 수정하더라도 비즈니스 로직이나 데이터 관리 부분에 영향을 미치지 않으므로 훨씬 더 프로그램이 유연해지는 결과를 얻을 수 있다.
- Window Scene ~~p97~~
    - Window(윈도우) - iOS에서 디바이스의 스크린을 빈틈없이 채우기 위한 객체
    항상 유저 인터페이스 표현 계층의 최상위에 위치
    뷰의 일종이지만 직접 콘텐츠를 가지지는 않으며 콘텐츠를 가진 뷰를 내부에 배치하여 화면에 출력하는 역할을 담당
    - View(뷰) - 콘텐츠를 담아 이를 스크린상에 표시하고, 사용자의 입력에 반응한다.
        - 윈도우의 일부를 자신의 영역으로 정의하고, 여기에 필요한 콘텐츠를 채워 넣어 스크린에 나타내는 ⌜동시⌟에, 윈도우로부터 전달된 사용자의 입력에 반응하여 그에 맞는 결과를 처리한다.
        - 이미지나 텍스트, 각종 도형, Navigation Bar, Tab Bar, 또는 이들이 결합한 다양한 형태의 뷰를 화면에 나타낸다.
    - Window 와 View 사이는 ViewController를 통해 연결된다.
    - ViewController(뷰 컨트롤러) - View(뷰)의 계층을 관리하여 윈도우에 전달하고, 모바일 디바이스에서 감지된 터치 이벤트를 윈도우로부터 전달받아 처리하는 역할을 담당
        - Window가 View를 직접 참조하지 않고 ViewController가 그 사이를 중계하는 구조 덕분에 Window는 ViewController를 통해 제공되는 뷰를 읽어 들여 표현할 뿐, 직접 관리하지 않아도 된다.
- present & presenting p158
- ViewController Container p99, 155
- TabBar Controller p744
- Split View Controller p105
- Master/Detail ViewController p105
- VC(ViewController) 계층과 View 계층 구조
- Scene(씬) : 스토리보드를 통해 편집하는 대부분의 뷰 컨트롤러들은 각갖가 하나씩의 화면을 담당하여 콘텐츠를 표현하고 뷰를 관리한다.
    - 일반적으로 각각의 Scene은 자신만의 뷰 계층 구조를 가지고 있으며, 뷰 계층 구조 최상위에는 하나의 뷰가 존재한다. → 루트 뷰(Root View) 또는 콘텐츠 뷰(Contents View)
    - 콘텐츠 컨트롤러(Contents View Controller) : Scene을 담당하고 콘텐츠를 표시하는 뷰 컨트롤러
    - 컨테이너 뷰 컨트롤러(Container View Controller) : 일부 특별한 뷰 컨트롤러는 Scene을 표현하는 역할 대신, 다른 뷰 컨트롤러의 연결 관계를 관리하기도한다. 
    내부에 콘텐츠를 배치하는 대신, 다른 뷰 컨트롤러를 배치하고, 이들을 서로 유기적인 관계로 엮이도록 만들어준다.
        - Navigation Controller
        - Tab Bar Controller
        - Page Controller

포그라운드 상태??

엔트리포인트와 앱의 초기화 과정 p72

앱의 라이프 사이클 p80

AppDelegate 객체의 다양한 메서드 P81