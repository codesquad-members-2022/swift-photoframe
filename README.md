# swift-photoframe
iOS 포토프레임 프로젝트 저장소

<br>
<br>

# 1. 프로젝트 생성하기 
### 완성 날짜
- 02월 14일 11:30

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/153791775-ccf47187-182d-4244-bf04-e9062dc23f92.png" width="30%">
<img src="https://user-images.githubusercontent.com/57667738/153791790-8e5963c7-a073-4b7f-860f-2f6a6627b030.png" width="30%">
<img src="https://user-images.githubusercontent.com/57667738/153791808-e351244d-bfa9-4040-a94f-c2dd217f8e4b.png">

<br>
<br>


## **기능요구사항**
- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
- [x] 특정한 시뮬레이터를 하나 골라서 실행한다.
- [x] readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.
- [x] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

<br>


## **프로그래밍 요구사항**
- [x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
- [x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다
- [x] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다

<br>
<br>

# 2. IBOutlet 연결하기
### 완성 날짜
- 02월 14일 23:00

<br>

### 완성 화면 
<img src="https://user-images.githubusercontent.com/57667738/153876555-cd83442e-a6fa-4269-a5df-49789dfb6115.png" width="30%">

<br>
<br>

## **기능요구사항**
- [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
- [x] 연결한 아웃렛 변수에 값을 변경한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

## **프로그래밍 요구사항**
- [x] Xcode 프로젝트 내비게이터에서 Main.storyboard 파일을 선택하고 First Scene 에 있는 'First View' 레이블(Label)을 선택하고 Assistant Editor 모드로 변경한다.
- [x] 레이블을 선택하고 `Control + 드래그`해서 ViewController 코드에 IBOutlet으로 연결한다.
- [x] Outlet 이름으로 `photoLabel`을 입력한다.
- [x] ViewController 클래스 viewDidLoad() 함수에서 위에 추가한 아웃렛 변수에 값을 변경하고 다시 실행한다.

```
self.firstLabel.text = "Mase의 사진액자"
```

- [x] 위와 같이 코드로 firstLabel의 속성을 변경해본다. 글자색, 배경색, 투명도, 글자 크기를 바꿔본다.
- [x] firstLabel 아래 있는 레이블도 `firstDescription` 아웃렛으로 연결한다.
    - [x] 마찬가지 방식으로 값을 변경해서 꾸며본다.
