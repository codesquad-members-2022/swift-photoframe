# Photo Frame
> sally

<details>
	<summary>Step 1 프로젝트 생성하기 - 2월 14일 오후 2시</summary>

### 작업 목록
- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone 하기
- [x] iOS app 프로젝트 생성하기
- [x] 스토리보드에서 TabBar Controller 추가하기
- [x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정하기
- [x] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인하기
```
/Users/seeunlee/Dev/CodeSquad_2022/iOS class/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 7 viewDidLoad() 40
```

### 학습 키워드
- UITabBarController
- UITabBar

</details>


<details>
	<summary>Step 2 IBOutlet 연결하기 - 2월 14일 오후 3시30분</summary>

### 작업 목록
- [x] First Scene에 레이블 만들기
- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결하기
- [x] 연결한 아웃렛 변수에 값을 변경하기
<img height="400" src="https://user-images.githubusercontent.com/45891045/153809410-648cbe24-7da1-4735-90fc-20a5c8cde6dd.png">

### 학습 키워드
- UILabel 클래스 속성(Property)

</details>


## Step 3 IBAction 연결하기 - 2월 18일 오전 11시

### 작업 목록
- [x] next button 만들고 IBAction 연결하기
- [x] next button의 액션으로 텍스트 속성 변경해보기
- [x] color change button과 새로운 color change 액션 만들기

### 추가 학습거리 
- [x] next button과 color change button 모두에 color change action을 연결해보기 
	- next button 하나에 두 개의 액션 연결
	- color change action 하나에 두 개의 버튼 연결
<img height="400" src="https://user-images.githubusercontent.com/45891045/154604509-ba2025ce-d527-4fc2-b07a-5f0c94350da0.gif">

### 질문거리
- next button에 두 개의 액션을 달고 두 액션의 순서를 지정해주고 싶었는데 실패했습니다. 
	- 먼저 생성된 순서로 지정되나 싶어서 하나를 지우고 순서를 바꿔서 작성해보기도 해봤지만 이상하게 순서가 바뀌지 않았습니다..!
	- 혹시 스토리보드만 사용해서는 불가능한 것일까요? 
	- 따로 코드로 액션을 연결해주고 순서를 지정해주는? 방법을 알아보는게 좋을까요?