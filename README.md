# swift-photoframe
## iOS 포토프레임 프로젝트
---
## Step 1. 프로젝트 생성하기

- [x]  TabBar Controller를 추가, Initial ViewController로 지정 (기존에 스토리보드에 만들어졌던 ViewController 제거)
- [x]  TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결
- [x]  첫 번째 Scene에 Custom Class를 ViewController로 지정
- [x]  로그출력 코드 추가
<img width="700" alt="프로젝트 생성 콘솔" src="https://user-images.githubusercontent.com/92635121/154050381-2b9680db-8255-4351-8345-43ce78014753.png">

<br>
## Step 2. IBOutlet 연결하기

- [x]  레이블 2개 추가하고, IBOutlet 연결
- [x]  추가한 변수의 값 변경 (텍스트와 컬러, 배경 색)

### ✅ IBOutlet - 객체의 참조

* 주로 객체의 속성을 제어할 목적으로 클래스의 프로퍼티에 연결한다.
* `변화된 값`을 화면에 띄운다.
* 컨트롤러 헤더 파일에 선언한 객체를 인터페이스 빌더가 알아 볼 수 있도록 하는 역할
* 인터페이스 빌더의 객체와 클래스의 프로퍼티는 서로 타입이 일치해야한다.

<br>

## Step3. IBAction 연결하기

- [x]  UIButton을 추가하고, IBAction 연결
- [x]  Action에 대한 메서드 구현


### ✅ IBAction - 객체의 이벤트 제어

* 버튼을 눌렀을 때, 화면을 이동시키거나 메세지를 띄우는 등 특정 객체에서 지정된 이벤트가 발생했을 때 메서드를 실행시킴.
* 버튼을 예로,
    - 버튼의 디자인 요소를 변경 할 프로퍼티와, 클릭과 같은 액션을 처리할 메서드를 갖고있다.
    - 프로퍼티 값을 변경하려면 IBOutlet을, 액션이 발생했을 때 수행해야할 값은 IBAction을 사용한다.

| Event | 설명 |
| --- | --- |
| Did End On Exit | 편집 후 포커스 없어짐 |
| Editing changed | 편집 |
| Editing Did Begin | 편집을 시작할 떄 |
| Editing Did End | 편집을 종료할 때 |
| Touch Cancel | 터치 취소 시 |
| Touch Down | 터치 다운 시 |
| Touch Down Repeat | 여러번 터치 다운 시 |
| Touch Drag Enter | 드래그하여 객체에 들어갔을 때 |
| Touch Drag Exit | 드래그하여 객체를 벗어날 때 |
| Touch Drag Inside | 객체를 터치 후 드래그할 때 |
| Touch Drag Outside | 객체를 터치 후 드래그하여 객체 밖으로 나올 때 |
| Touch Up Inside | 컨트롤에서 터치 업할 때 |
| Touch Up Outside | 통제가 안되는 영역에서 터치 업할 때 |
| Value Changed | 값이 변경될 때 |

<img width="700" alt="IBOutlet 연결" src="https://user-images.githubusercontent.com/92635121/154050395-91b0a72a-d7ae-4caa-9b25-8a944fe6fa6e.png">

<br>

### IBOutlet / IBAction
* 접두어 IB는 `Interface Builder`의 약자이다.
* IBOutlet과 IBAction을 Interface Builder Annotation이라고 부른다.
* 위 프로퍼티와 메서드는 앱이 처음 빌드될 때, 컴파일러가 체크하고 연결 정보를 찾아 인터페이스 빌더 객체와 연결해준다.

---

### 🤔 궁금증해소
1. 하나의 버튼에 여러 액션을 연결할 수 있는가? `Yes`  
2. 하나의 액션이 여러 버튼을 가질 수 있는가? `Yes`  
3. 한 버튼에 IBOutlet과 IBAction을 연결할 수 있는가? `Yes`  

<img width="700" alt="다양한 액션 연결" src="https://user-images.githubusercontent.com/92635121/154049243-25cdd3f8-b7d0-4927-af04-87daa7f28b89.png"><img width="500" alt="스크린샷 2022-02-15 오후 8 07 39" src="https://user-images.githubusercontent.com/92635121/154050134-176bd5b0-a18d-43a2-8af0-668e7e02ac62.png">
---

<br>

## Step4. Scene을 Segue로 연결하기

- [x]  Scene 2개 추가 및  Segue로 연결
- [x]  새로 추가한 Scene 속성 변경
- [x]  새로 추가한 Scene끼리 Segue 연결


### Segue
* ViewController 사이의 화살표
* Segue를 통해 뷰 전환 간 이벤트를 관리  

| Segue | 설명 |
| --- | --- |
| Show | 새 화면으로 이동. Stack 구조로서 새 화면이 원래 화면 위를 덮는 구조 |
| Show Detail | SplitView 구조에서 원래 화면은 Master, 새 화면은 Detail로 표시하는 구조. 아이폰에서는 똑같아 보이지만 아이패드로 보면 화면이 둘로 분할되서 보이게 된다. |
| Present Modally | 새 화면이 모달처럼 원래 화면 위 전체를 덮는 구조. 원래 화면은 새 화면 뒤에 그대로 존재하게 된다. |
| Present As Popover | 아이패드에서 팝업창을 띄운다. 아이폰에서는 큰 의미가 없다. |
| Custom | 사용자 정의 Segue를 만든다. |

![Simulator Screen Recording - iPhone 11 - 2022-02-16 at 14 29 36](https://user-images.githubusercontent.com/92635121/154202571-55e77c2c-3313-4100-9975-6f5f453af018.gif)


<br>

## Step5. ViewController 연결하기  
- [x]  View Controller 추가
- [x]  추가된 View Controller를 Scene과 연결
- [x]  `닫기` 버튼 추가
- [x]  콜백함수에 코드 추가
- [x]  Segue 대신 Modal을 이용해 화면전환

<br>

### UIViewController

<br>

**역할**
* View 계층을 관리
* View를 관리하면서, View와 Data 사이의 매개체
* View의 리소스를 메모리에 로딩할지, 언로딩할지 결정
* 화면 사이즈, 회전에 대한 대응

<br>

**의미**
* MVC 패턴에서 C (Model / View / Controller)
* 화면 전체 콘텐츠

<br>

### iOS의 MVC
* View Controller가 중심이 되어, View를 만들고 View에서 필요한 데이터를 갖고있는 Model을 처리한다.
* View Controller는 내부 프로퍼티로 Model 객체를 포함하기도 한다.

<br>

### UIViewController 주요 콜백 메서드

<br>

**✅ 화면 관련**  

| 메서드 | 설명 |
| --- | --- |
| viewDidLoad() | View가 로딩이 된 다음에 |
| viewWillAppear(Bool) | View가 보여지기 직전에 |
| viewDidAppear(Bool) | View가 보여지고 난 후에 |
| viewWillDisappear(Bool) | View가 사라지기 직전에 |
| viewDidDisappear(Bool) | View가 사라지고 난 후에 |

<br>

**✅ 회전 관련**  
화면이 회전할때, 화면이 회전이 됐는지, 가로모드인지 세로모드인지 등등  

| 메서드 |
| --- |
| var shouldAutorotate: Bool |
| var supportedInterfaceOrientation: UIInterfaceOrientationMask |
| var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation |

<br>

**Did / Will / Should가 콜백함수에 자주 붙는데,**

☑️ `Did` : 어떤 이벤트가 발생한 이후에  
☑️ `Will` : 어떤 이벤트가 발생하기 직전에  
☑️ `should` : return타입이 있어서, 꼭 Yes or No 즉 Bool으로 return한다.

![Step5](https://user-images.githubusercontent.com/92635121/154445711-f58b0277-5519-4c4e-b45f-855381114304.gif)


<br>

## Step6. Container ViewController 활용하기
- [x]  ViewController Container 역할 학습
- [x]  ViewController Container 종류 학습
- [x]  기존 `닫기` 버튼 코드 수정
- [x]  ViewController Class 학습
- [x]  NavigationController 존재 여부에 따른 화면 동작 차이 및 포함관계 학습
- [x]  NavigationController 관련 메서드가 왜 push와 pop인지 학습

<br>

### ViewController Container

<br>

ViewController는 크게 두 가지 역할이 있다.

- **Contents View Controller**  
    →  앱의 데이터를 화면에 보여주는 등 기본적인 View Controller의 역할
    
- **Container View Controller**  
    →  보통 직접 보여주는 역할은 아니며, View Controller 간의 부모-자식 관계를 형성, 자신만의 방식으로 자식을 관리
    
<br>

    Container View Controller가 필요한 이유?
    
- 위와 같이 Container View Controller를 사용하면 하위 뷰가 생기고, 각자 자체 ViewController를 갖게 됨으로써 유지보수를 용이하게 한다. (뷰 자체의 구역 분리)
- 분리하지 않으면, 하나의 뷰 컨트롤러가 너무 많은 역할을 하게되고 유지보수와 테스트가 힘들어짐 (구역별로 특성에 맞게 각각의 뷰 컨트롤러를 두고 따로 관리)
- 구역별로 특성에 맞게 각각의 뷰 컨트롤러를 두고 따로 관리


<br>

    Container View Controller 종류
    
- Navigation Bar : 이 화면이 어떤 화면인지 보여주는 영역 (최 상단에 위치)
- TabBar
- rootViewController 의 Master/Detail ViewController
- spiltViewController
- pageViewController

<br>

### Navigation Controller

<aside>
💡 계층적인 콘텐츠를 관리하는 컨트롤러로, 앱의 내비를 표시할 내비게이션 바가 내장되어있음.

</aside>

- VC들의 전환을 직접 컨트롤하고, 앱의 내비게이션 정보를 표시 함
- 화면 전환이 발생하는 VC들의 포인터를 Stack으로 관리 → 화면 접근이 용이하게 함
- 계층 구조를 관리하는 역할이라, 직접 컨텐츠를 담고 구성하지 않음
- 대신, 다른 VC를 포함 → 제어하는 모든 VC에 내비게이션 바를 생성함
- 가장 아래에 있는 첫 번째 VC : rootViewController
- 가장 위에 있는 마지막 VC : 현재 화면에 표시되고 있는 view

| 설명 | 메서드 |
| --- | --- |
| Stack의 최상위 VC 추가 | pushViewController(_: animated) |
| Stack의 최상위 제거 | popViewController(animated: ) |

<br>

### **Container 제작시 고려해야 할 사항**
    - 어떤 View Controller가 부모(Container)이 될건지, 어떤 VC가 Child 역할을 할건지
    - 꽉 채우는 VC가 Parent, 작은 영역을 차지하는 VC가 Child
    - TabBar를 사용하는 경우 → 형제 계층(동등한 레벨)이 있는지 등 VC간의 관계
    - Child VC를 어떻게 추가하고 삭제하나?
    - Child VC가 변할 수 있나? 있다면, 변화의 조건은 무엇인가?
    - Child VC가 변화(회전, 화면크기 등)하면, 그 변화는 누가 담당할 것인가?
    - 내비게이션을 위해 제공하는 뷰가 있나? 아님 컨테이너가 직접 꾸미는 뷰가 있나?
    - Parent-Child 사이의 어떤 통신이 필요한가?
    
    
![Step6](https://user-images.githubusercontent.com/92635121/154720866-88173a65-cc10-446d-bd12-4e9bbd77b856.gif)

<br>

## Step7. 다른 화면 연결하기
- [x]  `Second Scene`에 ImageView 추가 및 Outlet 연결
- [x]  다음 버튼 생성 및 Action 연결
- [x]  이미지 파일 추가
- [x]  UIImageView 와 UIImage 학습
- [x]  UIImageView 속성 학습

<br>

### UIImageView
    
* UIImage를 보여주기 위한 custom view
* Interface에 단일 이미지 또는 일련의 애니메이션 이미지를 표시하는 객체, 애니메이션 이미지의 경우 이 클래스의 메소드를 사용해서 애니메이션을 시작 및 중지할 수 있다.
* UIImage를 사용해 이미지를 나타냄
* 이미지를 보여주는 건 UIImageView지만, UIImage의 속성을 기반으로 나타 냄

✔️ Content Mode
| 속성 | 설명 |
| --- | --- |
| Aspect Fit | 이미지 비율을 유지한체로, Image View 영역 밖으로 나가지 않는 선에서 최대치로 키움 |
| Aspect Fill | 비율을 유지한체로, Image View 영역 밖까지 이미지를 확장 (영역에 여백이 생기지 않게 함) |
| Scale To Fill | 비율을 무시한체, Image view 영역에 맞게 늘림 |
| Redraw | 결과만 보면 Scale To Fill 과 동일하지만, 내부적으로 drawRect() 을 반복 호출해 성능저하 (진짜 필요하지 않다면 사용하지 말 것) |

✔️ UIImageView 속성
| 속성 | 설명 |
| --- | --- |
| Image | 표시할 이미지. 독립 실행형 이미지 및 asstes 이미지를 포함하여 Xcode Project에 원하는 이미지를 지정할 수 있다. 이 속성을 프로그래밍 방식으로 설정하려면 Image나 animationImages 속성을 사용하면 된다. |
| Highlighted | 이미지 보기가 강조 표시될 때 표시할 이미지. 이 특성을 프로그래밍 방식으로 설정하려면 hilightedImage나 highlightedAnimationImages 속성을 사용하면 된다. |
| State | 이미지의 초기 상태. 이 특성을 사용하여 이미지를 강조 표시한다. 이 속성을 프로그래밍 방식으로 설정하려면 isHighlighted 속성을 사용하면 된다. |


<br>

### UIImage

* 앱의 이미지 데이터를 관리하는 클래스
* 다양한 이미지 포맷을 지원하지만, 일반적으로 PNG 혹은 JPGE파일을 권장 및 최적화 되어있다.
* Image객체는 Immutable 하여 한번 생성된 이후에는 수정할 수 없다. 처음 생성시 이미지의 속성들을 명시해야한다.
* 대부분의 이미지 속성은 함께 제공되는 이미지 파일 또는 이미지 데이터의 메타 데이터를 사용하여 자동으로 설정된다.
* 또한 이미지 개체의 불변성은 어떤 스레드에서도 안전하게 생성하고 사용할 수 있다는 것을 의미한다.
    
![Step7](https://user-images.githubusercontent.com/92635121/154830180-8bab3c63-816c-498c-b044-d0111519ab87.gif)
