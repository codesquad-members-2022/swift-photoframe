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

- - - 

`Step05`
- [X] 프로젝트에 새로운 ViewController 클래스를 추가한다. File > New... > File... 메뉴를 선택한다. 다음과 같은 화면에서 Cocoa Touch Class를 선택한다.
- [X] 다음과 같이 UIViewController에서 상속받도록 입력하고, 원하는 클래스명을 입력한다. (예시 YellowViewController)
- [X] 원하는 디렉토리에 추가한다.
- [X] 스토리보드에서 새로 추가한 Scene을 선택하고, 우측 유틸리티 영역 3번째 Identity 탭을 선택한다.
- [X] Custom Class > Class 항목에 YellowViewController (자신이 생성한 클래스 이름)을 지정한다.
- [X] 이제 스토리보드에서 YellowViewController 화면에 [닫기] 버튼을 추가한다.
- [X] Assistant Editor를 선택하고 [닫기] 버튼에 대한 IBAction 액션을 연결한다.
- [X] IBAction 이름은 closeButtonTouched로 지정하고 다음과 같이 코드를 작성한다.

~~~swift
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
~~~

- [X] 위와 동일하게 세 번째 추가한 화면에 대해 ViewController 클래스를 지정하고, [닫기]버튼을 추가하고, 액션을 연결해서 화면을 닫는 동작이 동작하도록 구현한다.
- [X] 뷰 컨트롤러 강의 자료에 있는 화면 관련 콜백 함수들에 모두 print(#file, #line, #function, #column) 코드를 추가한다.
- [X] 각 뷰컨트롤러마다 라이프 사이클함수를 추가하고 콘솔에 시행된 라이프 사이클과 뷰컨트롤러를 print하는 구문을 추가했다.
```
viewWillAppear()
viewDidAppear()
viewWillDisappear()
viewDidDisappear()
```
스크린샷.

- 배운점
    - 콘솔창 확인 결과 ViewDidLoad -> ViewWillAppear -> ViewDidAppear 순으로 시행이되었고 창을 닫을 때에는 ViewWillDisappear -> ViewDidDDisAppear 순으로 시행됬다.
    - 주목할만한 점은 현재 제일 상단에서 보이는 뷰까지 Stack형식으로 쌓이기 때문에 다음화면으로 넘어간다고 해서 뒤에있는 ViewController가 DisAppear가 되지 않는다는 것이다.
    - TabBarViewController와 같이 ContainerViewController는 가장 처음에 시작되는 RootViewController와 라이프 사이클을 함꼐한다.
    - RootViewController에 Dismiss를 하는 버튼을 추가해도 Dissmiss되지 않는다.

- 추가학습거리
- [X] Segue를 제거하고 다음화면을 보여주는 코드를 작성해서 시도해보기.

1. 각 StoryBoard에 연결된 Segue를 제거한다
2. StoryBoard들을 구별할 수 있게 StoryBoard에 ID값을 준다.(구분하기 편하게 ViewController와 같은 값을 줌.)

3. 밑과 같은 코드를 함수에 
<img width="1107" alt="스크린샷 2022-02-17 오후 5 54 57" src="https://user-images.githubusercontent.com/80263729/154440188-3ac001bd-6399-44f9-8668-a65e97ac91e2.png">
 
- 어려웠던점
    - segue와 View가 많아지니까 button들과 View들을 1대1매칭시키다가 오류가 자주 발생했다.
    - 위와같은 오류로 버튼이 Exit Object라고 자꾸 떳는데 이유를 찾는데 시간이 많이 소요됬다.
    - 일부러 잘못된 StoryBoardID를 사용해서 Error를 내보았는데 앱이 바로죽는 모습을 확인할수 있었고 이를 해결하기 위해 Action함수에 error를 처리하려 했으나 실패..(IBAction함수는 리턴값이 없어야한다.)

<img width="361" alt="스크린샷 2022-02-17 오후 5 51 19" src="https://user-images.githubusercontent.com/80263729/154439545-f42cbe1b-4eb1-4787-b292-0c624a93f79c.png">
    - 모달들이 겹쳐있길래 한번에 없애는 메소드를 만들고 싶었다. 한번에 n을 없애는 메소드까지는 만들었지만 현재 올라와있는 모달만큼의 dismiss를 구현하는데 실패했다 더 공부를 해봐야겠다.

`Step06`
- [X] 스토리보드에서 First Scene을 선택하고, Editor > Embed In > Navigation Controller 항목을 선택한다.
- [X] 실행해보면 화면 상단에 내비게이션바(Navigation Bar)가 추가되고 [다음]버튼을 누르면 다음 화면이 우측에서 좌측으로 애니메이션되면서 표시된다.
- [X] [닫기]버튼에 연결된 closeButtonTouched 코드를 다음과 같이 수정한다.
~~~swift
    @IBAction func closeButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
~~~
- [X] 위와 동일하게 세 번째 추가한 화면에 [닫기]버튼도 코드를 수정한다.
- [X] 뷰 컨트롤러 콜백 함수들 동작도 동일한지 확인한다.

- 다양한 Segue실험
    - 각 Segue의 종류마다 Navigation이 적용이 되는지 안되는지 확인을 해봤다.
    - Show빼고는 모두다 modal형식으로 적용이 되었으며 네비게이션이 적용이 되지않았다(back버튼이 생기지 않았다)
    - dismiss하는 코드는 전 Step그대로인데 modal형식으로 보여진 view만 dismiss되고 네비게이션이 적용된 뷰는 dismiss가 되지 않았다.
![Simulator Screen Recording - iPhone 13 - 2022-02-17 at 22 35 13](https://user-images.githubusercontent.com/80263729/154492552-93a49ab1-3d2b-43fa-84af-4a9e1c7262d1.gif)

- show vs push
    - View를 Navigation Stack에 push하는 와중에 중간에 show를 비밀스럽게 끼워봤다.
    - 동작이 완전 일치한다?
    - show 와 push의 공식문서 설명을 살펴보자.
    - show: 메서드를 재정의하는 뷰 컨트롤러 계층에서 개체를 찾기 위해 defualt값으로 targetViewController(forAction:sender:) 메서드를 호출하고 override하는 뷰컨트롤러 계층은 spilt과   navigation이다. 적절한 뷰 컨트롤러 계층을 찾으면 재정의 되서 호출되기 떄문에 이번에는 navigation의 push처럼 작동된것.
   

- 헤맸던점
    - NavigationViewController는 ContainerViewController라 UIViewController보다 상위의 개념인줄 알고 있었지만 NavigationViewController가 조금 더 큰 개념이었다.
    - 위의 개념이 헷갈리는 바람에 UIViewController class에서 self.navigationController? 로 가는 흐름을 찾는데 시간이 많이 걸림.

- 추가학습거리
- 뷰컨트롤러 컨테이너는 또 어떤 클래스가 있는지 찾아보고 학습한다.
    - UISplitViewController , UIPageViewController, UINavigationController, UITabBarController 

- 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지 학습한다.
    - 있을경우에는 순서대로 뒤로갈수 있는 버튼이 생긴다.
    - 화면들은 Stack처럼 쌓여있기 때문에 3번쨰에서 1번쨰 1번째에서 3번쨰로 가지못한다.
     
- 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.
    - 내비게이션 컨트롤러은 childViewController들을 Stack으로 관리하기 떄문

- 그렇다면 push를 써야하나 show를 써야하나?
    - 그냥 둘다 쓰면된다. 사실 show는 다른 의미로 만들어 진 것이었으나 navigationViewController가 없을때 에러를 내면서 죽어버리는 현상을 막기위해 추가적인 조치를 하여 push와 같은 효과를 보여준다,

- - -

`Step07`
- [X] 스토리보드의 Second Scene을 선택하고 imageView, 레이블을 추가한다.
- [X] 기존에 있던 두 번째 레이블은 삭제한다.
- [X] UIImageView를 화면 상단 중앙에 240 x 240 크기로 배치하고, photoImageView 아웃렛으로 연결한다.
- [X] 화면 하단에 [다음] 버튼을 추가하고 nextImageButtonTouched 액션으로 연결한다.

![스크린샷 2022-02-18 오전 11 11 13](https://user-images.githubusercontent.com/80263729/154604401-2b5e102a-8da7-413f-9e1e-23efbe7efc31.png)

- [X] 앱에 포함할 사진 리소스를 이미지 다운로드 링크에서 다운로드한다. 압축을 풀고 이미지 파일들을 Xcode 프로젝트로 드래그해서 추가한다.
- [X] 리소스 파일을 추가할 때는 Copy 옵션을 꼭 지정하고 Target을 체크되어 있는지 확인한다.
- [X] [다음]버튼에 연결된 nextImageButtonTouched에서는 01부터 22까지 랜덤으로 숫자를 선택해서 해당하는 이미지 파일을 photoImageView에 표시한다. 이미지뷰에 표시하는 방법은 다음과 같다.
    - 랜덤으로 이미지를 보여주는 과정에서 처음에는 Int.random메서드를 사용하려 했으나 일의자리 숫자의 경우 앞에 0이 붙어있음을 발견.
    - 다음 방법으로 배열에 모든 photoID를 넣고 random으로 뽑아보려 했지만 만약 사진이 엄청나게 많아진다면 필요없는 메모리 낭비가 심할 것으로 예상됬음(고해상도 이미지는 많은 메모리를 쓰는것으로 앎)
    - enum을 통해서 각 케이스를 정의 하고 CaseIterable 프로토콜을 채택해 random함수를 구현햿음
    - 옵셔널 바인딩 해주는 과정이 조금 늘었지만 직접 String값을 넣지 않아도 되서 안전하고 배열에 소모되는 메모리 소모를 줄일수 있을것으로 생각이 된다.

~~~swift
        self.photoImageView.image = UIImage(named: "01.jpg")
이미지뷰의 속성을 조정해서 이미지가 비율에 맞춰서 표시되도록 조정한다.
~~~

실행 모습
![Simulator Screen Recording - iPhone 13 - 2022-02-18 at 11 58 23](https://user-images.githubusercontent.com/80263729/154609187-deebad66-0b41-483b-951a-34ef303cdec8.gif)


- 예외처리하기
    - 만약 사진변경이 정상적으로 되지 않았을 경우를 예외처리해보자.
    1. 분명 버튼을 눌렀는데 사진이 안바뀌고 아무것도 없는 상태 그대로일때
    2. 사진이 바뀌어야하는데 이전사진과 똑같을때(물론 랜덤함수라 똑같을 확률이 있긴 있다.)
    ~~~swift
        //다음 버튼 클릭시.
    @IBAction func nextImgaeButtonTouched(_ sender: UIButton) {
        let randomPhotoID = PhotoID.randomID //Static으로 PhotoID타입 자체에 randomID라는 associated Value를 추가함으로써 코드의 가독성을 높여보았다.
        let imageExtension = "jpg"
        self.photoImageView.contentMode = .scaleAspectFill //비율을 유지하면서 꽉채우게.
        
        //현재 이미지. 값이 없으면 nil값을 배출함. nil값을 검사해야하기 때문에 옵셔널 바인딩을 해주지 않음.
        let currentImage = self.photoImageView.image
        
        self.photoImageView.image = UIImage(named: "\(randomPhotoID).\(imageExtension)") //이미지를 바꾼다.
        
        //버튼을 탭했는데도 이미지가 바뀌지 않고 nil이라면 사용가능한 Photo가 없는 것.
        if currentImage == nil {
            print("사용가능한 Photo가 없습니다.")
        }
        
        //바뀔 이미지
        guard let nextImage = UIImage(named: "\(randomPhotoID).\(imageExtension)") else { return  } //UIImage옵셔널 값을 리턴하기 때문에 바인딩 해준다.
        
        //버튼을 탭했는데 이미지가 바뀌지 않을때
        if currentImage != nil && currentImage!.isEqual(nextImage) { //캐시된 동일한 데이터를 이용해 이미지를 만들어도 다를 수 있기때문에 이렇게 사용한다. Ex) currentImage == nextImage (X)
            print("이전 사진과 똑같은 이미지입니다.")
        }
        
    }
    ~~~
   


- 추가학습거리
    - UIImageView 와 UIImage 클래스는 각각 어떤 역할을 담당하는지 학습한다.
    정의
    ~~~swift
    class UIImage: NSObject
    ~~~
    
    UIImage는 이미지 개체를 사용하여 모든 종류의 이미지 데이터를 나타내고 기본 플랫폼에서 지원하는 모든 이미지 형식에 대한 데이터를 관리 할 수 있다.
    여러가지 방법으로 이미지 개체를 활용할 수 있다.
    image 객체는 한번 생성된 뒤에 변경이 불가능하다(immutable)
    따라서, 처음 생성시에 이미지의 속성들을 명시해야한다.
    대부분의 이미지속성은 함께 제공되는 이미지 파일 또는 이미지 데이터의 메타데이터를 사용하여 자동으로 설정된다.
    이로인해 어떤 스레드에서든 생성하고 사용하는 것이 안전해 진다는 것을 의미한다.
    그리고 image 개체는 변경할 수 없으므로 항상 디스크의 이미지 파일과 같은 기존 imgae 데이터로 생성한다.
    
    1. 이미지를 개체에 할당해서 인터페이스에 이미지를 표시한다 (UIImageView를 활용하는 방법)
    2. 이미지를 사용하여 버튼, 슬라이더 및 분할된 컨트롤과 같은 시스템 컨트롤을 custom 할 수있다.
    3. 뷰또는 다른 그래픽 context에 직접 이미지를 그린다
    4. 이미지 데이터가 필요할 수 있는 다른 API에 이미지를 전달한다.
    
    image 개체는 모든 플랫폼 기본 이미지 형식을 지원하지만 PNG JPEG 파일을 사용하는 것이 좋다.
    특히 PNG 형식은 무손실 이므로 앱 인터페이스에서 사용하는 이미지에 특히 권장된다!(JPG는 압축하는 과정에서 손실이 발생할 수 있다.)
    
    이 클래스의 메서드를 사용하여 이미지 개체를 만들떄는 파일 또는 데이터 구조에 있는 기존 이미지 데이터가 있어야한다.
    즉, 빈 이미지를 만들고 그 안에 내용을 그릴 수 없다.
    
    생성 메서드
    `init(named:in:compatibleWith:)init(named:)`
    앱의 기본 번들(또는 다른 알려진 번들)에 있는 imgae데이터를 가지고 와서 imgae를 만든다.
    이 방법은 imgae데이터를 자동 캐싷하므로 자주 사용하는 imgae에 권장됨.
    
    `.imageWithContentsOfFile:init(contentsOfFile:)`
    초기 데이터가 번들에 없는 이미지 객체를 생성함
    이 방법은 매번 디스크에서 image 데이터를 로드하므로 동일한 이미지를 반복적으로 로드하는데 사용해서는 안된다.
    
    `animatedImage(with:duration:)animatedImageNamed(_:duration:)UIImageUIImageView`
    여러개의 순차적인 이미지로 구성된 단일 개체를 생성함.
    이를 이용해서 인터페이스에서 애니메이션을 만들 수 있음.
    
    UIImage 클래스의 다른방법을 사용하면 코어 그래픽 이미지 또는 사용자가 직접 생성한 이미지 같은 특정 유형의 데이터로 애니메이션을 생성할수 있다. 
    또한,UIKit은 사용자가 직접 그린 콘텐츠에서 이미지를 만들수 있는      `UIGraphicsGetImageFromCurrentImageContext()`  기능을 제공함.
   
    생성한 이미지 객체는 캐시된 동일한 이미지 데이터로 초기화 하더라도 서로 다들 수 있다.
    두 이미지를 비교할 유일한 옳은 방법은 애플 문서에서 찾았다.
    ~~~swift
    let image1 = UIImage(named: "MyImage")
    let image2 = UIImage(named: "MyImage") 
    if image1 != nil && image1!.isEqual(image2) {
       // Correct. This technique compares the image data correctly.
    } 
    if image1 == image2 {
    // Incorrect! Direct object comparisons may not work.
    }
    ~~~
   
   imageView정의
   ~~~swift
   @MainActor class UIImageView : UIView
   ~~~
   imageView를 사용하면 image 객체를 이용해 이미지를 효율적으로 보여줄 수 있다.
   런타임 시간에 이미지를 바꾸거나 스토리보드 파일에서 이미지를 형성 할 수도 있다.
   단, 이미지를 효과적으로 보여주는게 imageView지만 이는 UIImage의 속성을 기반으로 보여주게 된다.
   
    - 이미지 뷰의 속성은 어떤 것들이 있는지 애플 개발자 문서를 참고한다채

    size 조절
    imageView는 이미지의 사이즈에 맞게 변경할 수 있다.
    
    1. scaleAspectFit: 원본 이미지의 비율을 유지한채로 이미지를 보여줌(imageView가 화면에 꽉 안차는 경우발생)
    2. ScaleToFit: 원본 이미지의 비율을 무시하고 일단 가득차게 넣음(이미지가 잘릴일은 없으나 이상한 비율이 생성될 가능성 있음)
    3. AspectFill: 비율을 맞추고 ImageView에 가득차게함 (비율을 맞추다 보니 화면이 잘릴 수 있음)
        - default로 myView.layer.masksToBounds = true값이 설정되어 있어 이미지가 잘리게 되는데
        - 만약 이값을 false로 두면 UIImageView보다 커져서 밖으로 삐져나올 가능성 있음.
    
    성능 향상을 위한 팁
    이미지 scaling과 alpha blending작업(이미지위에 또다른 이미지를 덧씌울때 마치 투명하게 비치는 효과를 내기위해 컴퓨터의 색상값에 A라는 새로운 값을 할당하여 RGB와 혼합하여 표시하는 방법)
    은 상대적으로 비용이 많이 드는 작업이다. 이를 해결하기 위한 몇가지 팁이 있다.
    
    1.자주 사용하는 이미지 크기 조정 버전을 캐시하자. 특정 대형이미지가 축소되서 자주 표시될거 같으면 축소된 이미지를 미리 만들어 이미지 캐시에 저장하는게 좋다.
    2.크기가 imageView의 크기에 가까운 이미지를 사용하자. imageView에 큰 이미지를 지정하는 대신 imageView에 현재 크기에 맞는 크기 조정버전을 만들자.
    3.가능하면 imageView를 불투명하게 만들자. 투명도가 필요한 이미지작업이 아니라면 isOpaque속성을 true로 두자.

- iamgeView의 Attribute
    Image: 표시할 이미지
    Highlighted: imageView가 강조 표시될때 표시할 이미지
    State:이미지의 상태 isHighlighted속성을 사용해서 강조가 됬는지 안됬는지 확인가능.

- 궁금한점
    - instantiateViewController(withIdentifirer:)메소드가 StoryBoard의 ID를 가지고 ViewController를 만들어낸다는 것은 알겠는데.. 앞의 self는 왜 붙이는 걸까?
    - self를 붙이면 현재 클래스가 참조하고 있는 StoryBoard를 가지고온다.
    - 결국 여기서는 self.storyboard나 storyboard나 같다. 
![스크린샷 2022-02-18 오전 11 05 34](https://user-images.githubusercontent.com/80263729/154603848-ef0bb071-9c14-4270-9b42-2d61dccdac04.png)

- - -

`Step08`

- [X] 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 표시한다.

![스크린샷 2022-02-18 오후 3 53 10](https://user-images.githubusercontent.com/80263729/154632857-440f276c-7da2-476b-a7d4-1e21c9f1a658.png)

- [X] 이미지 테두리 액자 화면을 추가한다.

![스크린샷 2022-02-18 오후 3 46 24](https://user-images.githubusercontent.com/80263729/154632003-39defcd1-b2c5-444e-9179-f313f57f0199.png)

- [X] 사진 앨범에서 사진을 가져와서 보여줄 수 있도록 개선한다.
- [X] selectButtonTouched에서는 UIImagePickerController로 사진 앱 - 카메라롤에서 사진을 가져오도록 구현한다.

- 실행은 됬지만 선택한 이미지를 imageView로 가지고오기를 실패했다.
![Simulator Screen Recording - iPhone 13 - 2022-02-18 at 16 48 01](https://user-images.githubusercontent.com/80263729/154640214-2851c917-4609-409f-b2cf-da1c079b7d9a.gif)


- [X] 권한 설정이 필요하면 Info.plist에 추가한다.
- [X] 선택한 사진을 받기 위해서 구현해야 하는 메서드는 어떤게 있는지 찾아 구현한다.
![스크린샷 2022-02-18 오후 4 02 48](https://user-images.githubusercontent.com/80263729/154634032-4d97a069-0398-4e1c-ba0c-bc721388ba94.png)

- [X] 카메라롤에서 사진을 가져오기 위해 해줘야 하는 동작들을 찾아서 구현한다.
미리 선언한 delegate함수중 밑의 함수를 이용한다
이름 그대로 이미지 선택하기가 끝나면 정보를 가지고온다.
선택한 이미지의 info를 print해본다.


~~~swift 
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {   
    }
~~~


Dictionary 형태로 값이 출력됨을 알수 있고 이를 통해 image데이터를 가져 올 수 있었다.

![스크린샷 2022-02-18 오후 4 52 39](https://user-images.githubusercontent.com/80263729/154640904-098759f7-63ae-49c6-a123-dfe7d231d422.png)

~~~swift
//ImagePicker를 다루기 위한 Delegate
extension PhotoViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate  {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage //가져온 이미지
        self.photoImageView.contentMode = .scaleAspectFill //비율을 유지하면 꽉차게 만든다.
        self.photoImageView.image = pickedImage //image를 넣는다
        dismiss(animated: true, completion: nil) //화면이 내려가지 않기 때문에 추가해준다.
    }
}
~~~

성공!
![Simulator Screen Recording - iPhone 13 - 2022-02-18 at 16 59 20](https://user-images.githubusercontent.com/80263729/154641911-ca3171f8-7e7c-4269-a0ea-b12344b489b3.gif)



- 추가학습거리
UIImagePickerController처럼 이미 만들어놓은 시스템 컨트롤러들에 대해 학습하기.
- 시스템 컨트롤러들은 이름에서부터 UIImagePickerController처럼 어떤 일을 하는지 대충 알 수 있게 지어졌다.
- 이미 만들어놓은 시스템 컨트롤러들은 너무나 많다 UIImagePickerController처럼 처럼 FontPicker,ColorPicker 심지어는 iCouldSharingController도 있었다
- 모든 시스템 컨트롤러를 다 사용해보면 좋겠지만 이번 미션에서는 AlertViewController를 사용하여 더 자연스러운 느낌을 낼 수 있었다.


델리게이트(Delegate)와 프로토콜(Protocol) 상관 관계에 대해 학습한다.
-  델리게이트란 객체지향 프로그래밍에서 객체가 처리해야 할 일중 일부를 다른 객체에 넘기는 것을 의미한다.
-  델리게이트를 저정해서 이벤트가 발생했을 때의 처리를 넘기고 실제로 이벤트가 발생하면 대리자가 미리 선언된 메서드등을 이용해 처리한다.
-  델리게이트를 이용하면 massive ViewController가 됨을 막을 수 있겠다고 생각했다.


