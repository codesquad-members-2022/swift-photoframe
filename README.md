# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## STEP8

## [기능 요구사항]
- [X] 이미지 테두리 액자 화면을 추가한다.
- [X] 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 표시한다.
- [X] 사진 앨범에서 사진을 가져와서 보여줄 수 있도록 개선한다.

## [작업내용]
### - zStack Storyboard 에서 설정하는법.  

![image](https://user-images.githubusercontent.com/36659877/154847991-0723cda0-ce97-42db-8bba-ab73dc43fd1d.png)

위 그림과 같이 photoFrame 이 위에 있으면 z-axis 상 Photo image view 아래에 있는것이다.  


## Communication Pattern 

Communication Pattern 은 두개의 뷰가 소통하는데 쓰이는 패턴이며 두가지 방식이 있다.  

1. Delegate Protocol 
2. Notification and Observers 

위 두가지 패턴의 차이점은 몇개의 뷰와 교류한다는것이다. 
- Delegate protocol →  1:1 소통 방식
- Notification and Observers → 1:M 소통 방식  

## Delegate Protocol

- What does it mean by delegation?

사전적 의미 : 권한/의사 결정 위임. 

어떤 기관이나 단체가 또 다른 단체, 혹은 개인 에게 수행해야할 특정한 과제를 주는것이다.  

임무를 준 기관 은 과제 의 결과에 대한 모든 책임을 지기 때문에 일종의 규율을 만들어 결과가 예상한 대로 나올수 있게 한다. 

1. 명확한 과제의 목적을 정의한다. 
2. 과제 와 함께 충분한 훈련과 리소스를 제공한다. 
3. 과제의 처리 과정을 모니터 한다. 

위 정의는 하나의 뷰가 다른 하나의 뷰에게 과제(task) 를 주고, 그 결과를 다시 과제를 보낸 뷰에게 전달 한다는 식으로 접근할수 있다.  여기서 과제를 준 뷰를 팀장, 과제를 받는 뷰를 사원이라고 가정해보자.

사원은 특정한 규율 에 의거하여 임무를 수행하고 팀장은 그 규율에 맞게 과제 의 중간과정이나 결과 를 받게 된다. 여기서 말하는 규율은 swift 의 procotol 에 목적에 맞는 함수를 작성한다 라고 할수 있고 사원 이 과제를 끝낼시, 이 해당 protocol 의 메소드를 팀장 이 받아서 정보를 덛붙히거나 어떠한 처리과정을 통해 결과를 과제를 파생시킨 곳 에게 마지막으로 전달할수 있게 된다.

## Delegation on UIImagePickerController

UIImagePickerController 의 인스턴스에 어떠한 task 를 위임 시키려면.. 

- 해당 View Controller 는 `UIImagePickerControllerDelegate`, `UINavigationControllerDelegate`를 따라야한다.
- `imagePickerController.delegate =**self` 에서 과제를 자신(`imagePickerController`) 에게 위임 하는 곳이 SecondViewController 이라는뜻이다.
- `UIImagePickerControllerDelegate` 프로토콜에 명시 되어있는 `imagePickerController` 를 사용하여 사용자에 의해 선택된이미지를 base View (SecondViewController) 의 UIImageView 에 나타내줄수있다.

## UIAlterController 
- 사용자에게 경고나 알림등 을 알려줄때 쓰이는 컨트롤러이다.
- 앱 또는 기기의 상태와 관련된 중요한 정보를 전달하며 종종 피드백을 요청한다.
- 경고는 제목, 선택적 메시지, 하나 이상의 단추 및 입력을 수집하기위한 선택적 텍스트 필드로 구성된다
- HIG 의 디자인 지침을 지키지 않으면 App 의 reject 사유가 될수있다.
- Alert 의 선택요소가 3가지 이상일시 Action sheet 를 사용한다.

![image](https://user-images.githubusercontent.com/36659877/154836842-a6ad4fce-cdb1-49d0-9fa9-76fe56a277ed.png)

- UIAlertController() 생성자 로 preferredStyle 에 Actionsheet / alert(defualt) 기입 가능
- UIAlertAction() 으로 Action 생성 및 style 로 취소 case 선택가능
- present 를 사용하여 alert controller 보여줌.


## [궁금증]
1. Info.plist 권한설정을 하지 않아도 photolibrary 접근이 가능했다. 왜?

→ 시뮬레이터에서는 접근 권한이 필요없다. 카메라 또한 시뮬레이터에서 돌릴수 없다. 하지만 실제 아이폰 은 연결하여 앱을 실행시키면 접근 권한을 설정해주어야함!  

1. `imagePickerController.delegate = **self**` 는 어디서 선언해주어야할까? 

→ 버튼이 눌려지면 갤러리에서 사진을 선택하는 작업을 위임 해줘야하기 때문에 개인적으로 alert 이 사용자에게 보여진 뒤에 할당하는게 맞는것같아서 @SecondViewController 37번째 라인에 배치했다.
