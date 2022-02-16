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
