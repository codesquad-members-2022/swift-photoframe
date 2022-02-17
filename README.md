# swift-photoframe

## 1. 프로젝트 생성하기

- iOS App 프로젝트를 생성한다. 
- TabBar Controller를 추가한다. 
- Initial ViewController로 지정한다.
- 첫번째 Scene을 `ViewController`와 연결한다.
- viewDidLoad() 함수에 `print(#file, #line, #function, #column)`를 추가, 실행한다. 

![Tab bar](/PhotoFrame/PhotoFrame/Assets.xcassets/Screenshot1.imageset/Screenshot2.png)

![Console](/PhotoFrame/PhotoFrame/Assets.xcassets/Screenshot2.imageset/Screen Shot 2022-02-15 at 2.50.11 PM.png)

## 2. Label에 IBOutlet 연결 

-  첫번째 View controller에 label 생성
-  text, fontSize, color, backgroundColor 변경
-RGB 값으로 편하게 UIColor를 만들기 위한 extension 생성
- Description Label 생성 후 fontSize, color, backgroundColor 변경


## 3. Button에 IBAction 연결

- '다음' 버튼을 만들고 IBAction 연결
- IBAction에 Label 변경 코드 추가
- 2개 버튼에 1 액션 / 1개 버튼에 2 액션 어떻게 되는지 테스트
- Code Review가 끝나지 않은 상태에서 새로운 Branch 생성하여 2연속 PR 연습.
- 지난 PR에서 피드백 받은 UIColor 코드 줄바꿈 통일

## 4. Scene 생성 & (Unwind) Segue 연결

 -  새로운 Scene (gray)을 만들고 Segue 연결
 - 또 다른 Scene (yellow)를 만들고 Segue 연결
 - First View controller로 이동하는 Unwind Segue 연결
 - 지난 PR에서 피드백 받은 UIColor 인자(Int) 값 예외처리
 
 ## 5. ViewController 연결 & 화면 전환
  
 - GrayViewController와 YellowViewController를 추가하고 Storyboard와 연결
 - Gray, Yellow에 각각 Close Button을 구현
 - ViewController의 Lifecycle 마다 print를 찍어서 각 함수 호출 시점 확인
 - 코드를 사용해 YellowViewController를 보여주는 Action 추가

## 6. Navigation Controller 사용

 
