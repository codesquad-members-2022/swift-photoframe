# swift-photoframe
피그백's iOS 포토프레임 프로젝트 저장소

### 프로그래밍 요구사항
`Step1`
- [X] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [X] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
1. 기존의 UIViewController를 storyBoard와 파일에서 제거하고 TabBarController Class를 만들고 추가한다.
2. StoryBoard로 돌아와서 initial ViewController로 지정한다.
![스크린샷 2022-02-14 오전 11 55 03](https://user-images.githubusercontent.com/80263729/153792317-54b0e6da-e515-4666-af37-4ddbbe38e849.png)
![스크린샷 2022-02-14 오전 11 53 27](https://user-images.githubusercontent.com/80263729/153792134-068c35b5-44b9-4e15-9e9c-91df23eee6fd.png)
![스크린샷 2022-02-14 오전 11 53 35](https://user-images.githubusercontent.com/80263729/153792147-9ea65a44-15d0-490c-9f5b-74ee03238519.png)

- [X] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다
1. customViewController로 FirstViewController를 만들었다.
2. 첫번째 Scene에 만들어 놓았던 Custom Class를 지정했다.
![스크린샷 2022-02-14 오후 12 08 30](https://user-images.githubusercontent.com/80263729/153793633-15c56e85-3a68-4071-81a3-e5600799b771.png)
- [X] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다
- TabBarController의 viewDidLoad에 제시된 print문을 작성해보았다.
![스크린샷 2022-02-14 오후 12 26 22](https://user-images.githubusercontent.com/80263729/153795199-d3fa1ce9-e6c8-4935-94c5-68dc16bb1972.png)

`Step2`
Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.
Outlet 이름으로 photoLabel을 입력한다.

위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.
firstLabel 아래 있는 레이블도 firstDescription 아웃렛으로 연결한다.
마찬가지 방식으로 값을 변경해서 꾸며본다.

`Step3`
- [X] Main.storyboard 에서 First Scene에 UIButton을 추가한다.
- [X] 우측 유틸리티 영역 하단 3번째 탭 - 객체 라이브러리(Object Library)에서 Button 을 찾아서 View로 드래그한다.
- [X] 방금 추가한 버튼을 선택하고 우측 유틸리티 영역 상단 4번째 탭 - 속성(Attributes)에서 Title을 다음으로 변경한다.
- [X] 버튼을 선택하고 Control + 드래그해서 ViewController 코드에 IBAction으로 연결한다.
- [X] 다음과 팝업에서 Connection 항목에서 IBOutlet 대신 IBAction 으로 변경한다.
- [X] 액션 이름을 nextButtonTouched 로 지정한다.
![스크린샷 2022-02-16 오후 2 32 27](https://user-images.githubusercontent.com/80263729/154202479-9a328d36-f34f-4fe7-8bf7-920d1498607e.png)
- [X] ViewController 클래스에 추가된 nextButtonTouched() 메서드에 아래처럼 구현을 추가한다.
~~~swift
@IBAction func nextButtonTouched(_ sender: Any) {
    self.firstLabel.textColor = UIColor.blue
    self.firstLabel.backgroundColor = UIColor.yellow
    self.firstLabel.alpha = 0.5
}
~~~
![스크린샷 2022-02-16 오후 2 38 18](https://user-images.githubusercontent.com/80263729/154203100-14b0677a-684d-4677-adc7-1f021a9c4616.png)
- 추가학습거리
    - IBOutlet vs IBAction
    IB란 Interface Builder의 약자로 뭔가 인터페이스를 만드는데 사용되는 것들이라는 것을 유추 할 수 있다.  
    IBOutlet은 스토리보드라는 view와 상호작용하기위해 만들어지는 변수와 같은 것이다.
    예를 들어 view에 label이 하나 있다고 하면 이 label에 대한 속성을 변경하고 싶을때 선택할 수 있게 해주는 것이다.  
    IBAction은 View에서의 액션을 처리하기 위한 함수와 같은 것이다.
    예를들어 View에서 만약 유저가 label을 클릭을 한다면 이에대한 반응을 보여줘야할 것이다.
    이때 IBOutlet변수에 IBAction으로 정의한 함수가 실행됨으로써 사용자에게 보여주는 것이다.
    
    - IBAction의 event의 종류?
    IBAction을 추가할때 밑과같이 사용가능한 이벤트를 확인 할 수 있었다.
    각각의 해석은 밑 블로그를 많이 참고했다.
    [ActionEvent종류](https://roeldowney.tistory.com/65)
    ![스크린샷 2022-02-16 오후 2 48 10](https://user-images.githubusercontent.com/80263729/154204154-0304f4a1-8aa9-474a-bb25-4d27d6499952.png)
    - 버튼에 액션을 여러개 추가할 수 있을까?
    한 버튼에 여러가지 액션을 추가하는 것은 불가능하다!
    생각해보면 버튼은 하난데 누를때마다 다른 액션이 보여지면 유저는 매우 당황할 것이다.
    단, 어떤 특정 상황마다 다른 반응을 보고 싶다면 하나의 액션안에 상황에 따른 다른 액션을 구현해 놓으면 다른 액션이 보여지는 것 처럼 보여질수는 있을 것 같다. 
    
    - 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?
    가능하다!
