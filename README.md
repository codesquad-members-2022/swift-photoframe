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


<details>
	<summary>Step 3 IBAction 연결하기 - 2월 18일 오전 11시</summary>

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

</details>


<details>
	<summary>Step 4 Scene을 Segue로 연결하기 - 2월 18일 오전 11시 30분</summary>

### 작업 목록
- [x] view 추가하고 버튼 연결
- [x] 연속하는 view 하나 더 추가

<img height="400" src="https://user-images.githubusercontent.com/45891045/154606078-f6283b3d-b91e-4411-aed7-7e71623ab969.gif">

</details>


<details>
	<summary>Step 5 ViewController 연결하기 - 2월 18일 오후 4시 30분</summary>

### 작업 목록
- [x] green view에 닫기 버튼 추가하고 action 연결
- [x] black view에 닫기 버튼 추가하고 action 연결
- [x] segue 제거하고 코드로 scene 연결하기
	- green view에 storyboard ID를 부여해주고, black view controller에서 아이디로 해당 뷰를 찾음
	- present로 view를 연결해줌

<img height="400" src="https://user-images.githubusercontent.com/45891045/154609762-6af959e0-1c4d-4425-8029-dd08500396ca.gif">

</details>


<details>
	<summary>Step 6 Container ViewController 활용하기 - 2월 18일 오후 5시</summary>

### 작업 목록
- [x] navigation controller embed 시키기
- [x] green view를 연결해주는 방식을 present에서 navigation에 push 하는 것으로 변경

</details>


<details>
	<summary>Step 7 다른 화면 연결하기 - 2월 18일 오후 6시</summary>

### 작업 목록
- [x] tab bar의 두번째 scene에 image view와 버튼 추가
- [x] 프로젝트에 demo image 파일 추가
- [x] 버튼 클릭 시 랜덤한 이미지로 바뀌게 하기

<img height="400" src="https://user-images.githubusercontent.com/45891045/154652882-e84b97a0-c14a-46ac-88d4-80448f9f4dbe.gif">

</details>


## Step 8 사진 앨범 선택하기 - 2월 21일 오후 6시

### 작업 목록
- [x] 액자 이미지 뷰 추가
- [x] 선택 버튼 만들기
- [x] UIImagePickerController를 사용하여 사진 앱에서 사진을 가져오도록 구현
	- image picker의 delegate에 yellow view controller를 할당
	- 할당하기 위해서 extension으로 yellow view controller에 UIImagePickerControllerDelegate와 UINavigationControllerDelegate 프로토콜을 채택
- [x] Info.plist에서 사진 앨범 권한 설정
- [x] 앨범 외에 카메라에서 사진을 가져오는 기능 추가
	- 시뮬레이터에서는 카메라가 안되기 때문에 에러 처리

| z index 설정 | 앨범에서 사진 가져오기 | 카메라에서 가져오기 추가 |
|---|---|---|
|<img height="400" src="https://user-images.githubusercontent.com/45891045/154880178-cccb4a0a-5690-4d84-b60c-69e47e3d75ee.png">|<img height="400" src="https://user-images.githubusercontent.com/45891045/154880417-b0bcb965-2b8b-4cc1-af0d-4460ffdc702e.gif">|<img height="400" src="https://user-images.githubusercontent.com/45891045/154913099-148b9e1c-afd8-4ba3-82f8-a70613966853.gif">|

- [x] 사진 앨범 권한 얻기

| 권한을 준 경우 | 권한을 거절 했을 때 재요청 하는 경우 |
|---|---|
|<img height="400" src="https://user-images.githubusercontent.com/45891045/154920518-8ab9275e-6d38-4d41-86b1-12dfee19889e.gif">|<img height="400" src="https://user-images.githubusercontent.com/45891045/154920503-bfdc735c-aa32-4157-9562-d8d67538bf4c.gif">| 


