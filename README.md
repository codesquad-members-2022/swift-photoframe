# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## Git new commite test

## Step 2 - IBOutlet 연결하기
## 기능 요구사항
- [X] 사진액자 앱 시작하기 요구사항을 구현한 상태로 시작한다.
- [X] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.

- [X] 연결한 아웃렛 변수에 값을 변경한다.
- [X] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.


Figure 1 : First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154011812-4b23e761-0a37-4d33-8b8b-c8142cc47585.png" width="400" height="250"> 
  </p>
   
Figure 2 : 연결한 아웃렛 변수에 값을 변경한다 (코드로 설정하는법)
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154011965-1d40974b-4566-46d1-8f6a-df1b5e806d8e.png" width="350" height="250"> 
  </p>
  
Figure 3 : 연결한 아웃렛 변수에 값을 변경한다 (Interface Builder 로 설정하는법)
  <p align="center">
      <img src="https://user-images.githubusercontent.com/36659877/154013982-08a3c2fa-d94d-4c2e-a340-a3253c8b8bb9.png" width="550" height="350">
  </p>

Figure 3 : 실행한 화면을 캡처해서 readme.md 파일에 포함한다.
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154011654-002c62ae-db89-4c9e-9f4f-a88ba16765ae.png" width="250" height="550"> 
  </p>








### IBOutlet 생성방법 및 사용법.
- 생성된 view 안에서 Library 에 있는 요소들중 원하는 오브젝트를 골라 원하는 위치에 놓고 오른쪽 클릭 + 해당하는 클래스에 로 드래그하여 IBOutlet 키워드를 사용하여 변수 생성가능
- 거꾸로 View 안에 지정된 custom class 에서 IBOulet 생성후, 매칭해줄수도 있음.
- 오브젝트 속성 값은 Interface builder 를 통해서도 바꿀수 있지만, View 의 Custom class 안에서도 속성변경가능 


### UILabel 의 사용처 
- [UILabel 사용처 와 사용방법](https://sodocumentation.net/ios/topic/246/uilabel) 
- Read-Only Text view 이고, 여러 라인의 정적인 텍스트를 쓸때 주로 사용된다. 
- text 의 styling 을 관리해준다. 


### IBoutlet 을 사용할때의 Storage 영역 - Strong or weak  
- Auto Reference Count 와 관련있음. 
- ARC : Swift 에서 앱의 메모리 사용관리를 위해 ARC 를 사용한다. 
- 자동으로 참조 횟수를 관리 하기 떄문에 메모리 관리에 신경쓸필요가 없도 ARC 가 알아서 더이상 사용하지 않는 
인스턴스를 메모리에서 해지한다. (ARC 가 0 이 되면 메모리에서 해제됨)
- IBOutlet 을 변수화 시킬때 Storage Strong 과 Weak 참조가 가 있는데 두가지의 차이점을 알바보고 싶었다.  
   - Strong 참조 
       - 어떠한 한 객체가 인스턴스화 되면 ARC 가 +1 이 되고, 이 인스턴스화 된 변수를 다른 변수에 할당하면 ARC 는 +1 씩 더해진다. 
       - 여기서 문제는 만약 두 객체(Class) 가 서로를 참조하고 있고, 할당된 변수가 nil 이 될시, 메모리상에는 서로를 참조 한 인스턴스들의 ARC 는 0 이 아니기 때문에 해지 되지 않고 메모리 누수가 생긴다. 
   - Weak 참조
       - 위와 같은 문제를 해결하기 위해 weak 참조가 쓰이는데, 이는 ARC 에 영향을 주지 않는다. (카운트가 안됨).
       - 만약 서로의 객체가 weak 하게 참조하고 있다면 둘중 하나의 인스턴스화된 변수가 nill 이 될시, ARC 는 0 이 되어 인스턴스가 해지되며 메모리 누수가 일어나지 않게 된다. 
- 만일 복잡한 뷰 Hierarchy 를 가지고 모든 connection이 weak 이라고 설정했고 만일 그중 하나의 view 가 deallocate 한다면 그 하위 뷰들도 함께 deallocate 된다. [참조](http://monibu1548.github.io/2018/05/03/iboutlet-strong-weak/) 





- Figure 1.0 : `다음` 버튼 터치전
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154191709-08e53c4d-c04b-408f-8438-131f3cb49d6e.png" width="200" height="450"> 
  </p>

- Figure 2.0 : `다음` 버튼 터치후
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154191760-ac213261-a30e-4042-815e-885d5be6b646.png" width="200" height="450"> 
  </p>


### - UIControl 
- 사용자와 어플 간의 상호작용을 도와주는 클래스로써 UIButton, UISilder 등 의 컴포넌트를 사용하여 각종의 이벤트를 처리한다. 이벤트의 종류는 크게 touch, motion, press, remote control 등이 있고, target-action 이라는 매커니즘을 활용하여 사용자와 어플간의 소통을 돕는다. 
- 어떠한 이벤트의 처리를 일일히 코드로 트래킹 하는것대신 action 메소드를 작성하여 이벤트를 처리해주는식으로   Target-action 매커니즘은 앱의 control 코드를 간소화시켜준다 
 
### - UIButton 
   - UIButton -> UIControl -> UIView -> UIResponder -> NSobject 와 같은 클래스 하이라키를 가지고 있다. 
   - 스토리보드를 이용해서 Control 컴포넌트를 만들면 IB 를 통하여 이 버튼이 사용자의 어떠한 이벤트에 반응할것인지 선택을 해줄수있다.
   - 사용자가 control 를 설정해준 이벤트 로 trigger 하면, control 은 그에 맞는 Action 을 실행시키는데 이 액션을 IBAction 키워드를 통해서 설정해줄수 있다.       
     - Figure 3.0 : Button control 의 이벤트는 현재 `touchUpinside` 로 설정되어 있고, 한개의 Item (Action) 이 연결되어있는것을 볼수 있다. 
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154211673-5b6ac363-3c15-4f0a-b790-201e0e78bdbb.png" width="650" height="450"> 
  </p>

   - Figure 4.0 : 하나의 버튼으로 여러가지의 Action 연결 하기
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154219762-d7c3e4b8-c6ff-4ed0-b636-024398303286.png" width="650" height="450"> 
  </p>


   


