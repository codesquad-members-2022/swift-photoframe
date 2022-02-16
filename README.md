# swift-photoframe
피그백's iOS 포토프레임 프로젝트 저장소

- - -

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

- - -

`Step2`  
Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.  
레이블을 선택하고 Control + 드래그해서 ViewController 코드에 IBOutlet으로 연결한다.  
Outlet 이름으로 photoLabel을 입력한다.  

위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.
firstLabel 아래 있는 레이블도 firstDescription 아웃렛으로 연결한다.
마찬가지 방식으로 값을 변경해서 꾸며본다.

- - -

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
    한 버튼에 여러가지 액션을 추가하는 것은 가능하다! 심지어 여러개의 이벤트도 넣는게 가능하다.  
    EX)  
    여러개의 액션: 레이블의 색을 바꾸면서 화면을 넘긴다.   
    여러개의 이벤트: 터치시 레이블의 색을 검정으로 바꾸기, 드래그 아웃하면 색을 녹색으로 바꾸기
    
    `그렇다면 하나의 버튼에 똑같은 이벤트를 다른 액션으로 주면 무엇이 실행이 될까?`  
    그림처럼 같은 버튼에 NexctButtonTouched 액션을 두개 만들었고 둘다 Touchup inside 이벤트에 TextColor를 바꾸는 액션이지만  
    하나는 글자를 까만색 하나는 하얀색으로 바꾸는 액션이다.  
   ![스크린샷 2022-02-16 오후 4 45 29](https://user-images.githubusercontent.com/80263729/154218996-33fdad94-f91f-49f6-beac-92e5bed3c679.png)

    실행결과 
    후에 추가한 Touched2의 TextColor가 적용이됬다.  
    Touched1의 TextColor를 제외한 액션들은 적용이 되었다.  
    함수의 실행 문제인것 같아 코드를 위로 올려보기도 했지만 똑같이 글자는 하얀색으로 나왔다.  
    
    결론.
    똑같은 이벤트에 대한 겹치는 액션은 후에 추가한 액션을 따르는 것처럼 보인다.
    이런 코드는 textColor를 바꾸는 첫번째 코드가 필요가 없는 코드가 되어 버리기 때문에 액션을 추가하지말고 수정하는 쪽이 나아보인다 
    
    ![스크린샷 2022-02-16 오후 4 27 15](https://user-images.githubusercontent.com/80263729/154216363-f855b760-51a4-4511-9910-f9110742bb7a.png)
    
    - 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까?
    가능하다! 
    똑같이 드래그 인 하면 하나의 액션에 여러가지 버튼을 추가할 수 있었다.
    
- - -

`Step 04`
- [X] Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
- [X] 앞 단계에서 추가한 [다음]버튼을 선택하고 Control + 드래그를 해서 새로 추가한 Scene에 연결한다.
- [X] 팝업으로 표시되는 Action Segue에서 Show 항목을 선택한다.
- [X] 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경한다. 새로 앱을 실행해보고 [다음] 버튼을 누르면 새로운 화면이 나타나는지 확인한다.
- [X] 다시 스토리보드에서 위에 추가한 Scene (혹은 ViewController)에 [다음] 버튼을 추가한다. 우측 옆에 한 단계 더 표현하기 위한 ViewController를 추가하고 배경 색상을 다른 색상으로 변경한다. 위와 마찬가지로 [다음]버튼에서 새 Scene으로 Segue를 연결한다.
- [X] 예를 들어 First Scene 다음에 추가한 화면이 Yellow 화면이었다면, First Scene에서 [다음] 버튼을 누르면 Yellow 화면이 표시되고, Yellow 화면에서 [다음] 버튼을 누르면 Blue 화면이 나오는 방식으로 두 단계 표시한다.

- 추가학습거리
    - Segue에 액션에 있는 여러 항목들은 어떤 효과가 있는지 값을 바꿔보며 실행해서 학습한다.
    - Action segue의 종류:![스크린샷 2022-02-16 오후 8 10 23](https://user-images.githubusercontent.com/80263729/154252791-2d4a2d09-d016-4762-b99e-697d82d1c889.png)
    - Action segue에 맞게 뷰컨트롤러를 여러개 생성하여 실행해보았다.

- 동작

![Simulator Screen Recording - iPhone 13 - 2022-02-16 at 20 07 07](https://user-images.githubusercontent.com/80263729/154252268-64c48f48-2d7b-403c-9d69-0dc79fae7e5b.gif)

- `동작을 확인하니 다 똑같아 보인다.. 무슨차이가 있나?`
1. Show
- Show는 스택으로 뷰컨트롤러를 밀어넣는다고 한다.(NavigationViewController와 같은 방식)
- Stack형식이기 때문에 뒤로 돌아가기 버튼이 존재한다.
- 단 NavigationViewController에 포함되지 않은 경우 Present modally로 표시한다.

2. Show Detail
- 화면이 나누어진 Split뷰에서 사용된다
- 아이패드등를 가로로 눕히면 DetailView가 생기는데 여기에 ViewController를 밀어 넣게 된다.
- SplitView가 아니라면 Present modally로 표시한다.

3. Present Modally
- ViewController를 Presentation옵션에 정의한 다양한 애니메이션으로 보여준다
- 가장 흔한 것(아마도 기본값인듯)은 ViewController가 밑에서 올라오면서 뒷 배경을 살짝 안가리는 애니메이션이다.

4. Pop Over
- iPad에서 실행하면 대상이 popOver되고 외부의 아무곳이나 탭하면 해제된다
- iPhone도 지원은 되지만 기본값으로 Present modally로 표시한다.

[Action Segue의 차이](https://stackoverflow.com/questions/25966215/whats-the-difference-between-all-the-selection-segues)

- Segue가 다 똑같은 모양으로 실행되는것 처럼 보인 이유.
    - 대부분 쓰임새가 어느정도 정해진 Segue들인데 그 쓰임새에 만약 맞지 않을 경우 default값으로 Present Modally방식을 사용하는 것 같다.  


