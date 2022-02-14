# PhotoFrame
https://github.com/shingha1124/swift-photoframe



# 작업내역

| 날짜       | 번호 | 내용               | 비고                                                         |
| ---------- | :--- | ------------------ | ------------------------------------------------------------ |
| 2022.02.14 | PF-1 | 프로젝트 생성      | Fork를 하고, 로컬에 Clone<br />iOS app 템플릿으로 생성       |
|            |      | 탭바 컨트롤러 추가 | 1. 기존 생성된 ViewController 대신 TabBarController로 변경<br />2. 새로운 뷰를 추가하여 메뉴 추가<br />3. 확인 로그 출력 |
|            |      |                    |                                                              |
|            |      |                    |                                                              |
|            |      |                    |                                                              |
|            |      |                    |                                                              |
|            |      |                    |                                                              |



## [PF-1] 작업 정리

### 기능요구사항

- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
- [x] 특정한 시뮬레이터를 하나 골라서 실행한다.
- [x] readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.
  - [x] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
  - [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

### 프로그래밍 요구사항

- [x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
  - [x] 기존에 스토리보드에 만들어졌던 ViewController는 지워도 된다.
- [x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다



### 학습 키워드

- storyBoard, TabBarController, ViewController, Entry Point, Segue

### 고민과 해결

- 기존에는 UI를 만들때 모두 코드로만 작성을 했었다. 
  처음으로 StroyBoard를 사용해보니 어느부분을 만져야 원하는 결과가 나오는지 헤멨다. 
- Main.stroyboard 를 TabBarController로 변경하는 부분에서 조금 헤멨다.
  - Editor -> Embed in -> Tab Bar Controller로 변경하는 과정
  - UIViewController가 사라지고 Scene의 메뉴가 변경되었다.
  - 1개의 메뉴는 자동으로 추가가 되었지만 두번째는 어떻게 추가하는지 몰랐다.
  - 구글링을 통해 제작방법을 찾아서 만들고, ViewController을 연결하여 마무리 했다



### 프로젝트 생성 및 Git 연결

1. Git Fork를 해서 내 레피지토리로 가져온다.

   ```
   git clone git@github.com:shingha1124/swift-photoframe.git
   ```

   ![스크린샷 2022-02-14 오전 11 39 42](https://user-images.githubusercontent.com/5019378/153790916-39091212-09fb-4bcf-923c-0679abaafa44.png)

2. 브랜치 생성

   ```
   git checkout -b PF-1
   ```

3. 프로젝트 생성 후 커밋



### TabBar 생성 및 Scene 추가

1. TabBarController 클래스 생성

   ```swift
   import UIKit
   
   class TabBarController: UITabBarController {
   
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
   }
   ```

2. 1.에서 만든 클래스를 Main.storyboard 에 연결

   ![스크린샷 2022-02-14 오전 11 47 35](https://user-images.githubusercontent.com/5019378/153791765-a3440a11-c243-4728-ae3d-436c1fe855b7.png)

   ![스크린샷 2022-02-14 오전 11 53 02](https://user-images.githubusercontent.com/5019378/153792096-f8155403-ab92-45f4-9496-d3aff52f11cf.png)

3. 새로운 Scene를 생성하여 TabBarController에 연결

   1. UIViewController 새로 생성하기

      1. Command + Shift + L -> viewController입력
      2. ViewController 선택 후 스토리보드 화면내로 드래그

      ![스크린샷 2022-02-14 오전 11 57 40](https://user-images.githubusercontent.com/5019378/153792642-e555daf7-3b32-47cd-b93c-555a93f87eb4.png)

   2. 새로 생성된 ViewController 연결

      1. TabBarController에서 새로생성된 ViewController로 우클릭 드래그
      2. 그 후 나오는 메뉴에서 viewControllers 클릭

      ![스크린샷 2022-02-14 오후 12 00 53](https://user-images.githubusercontent.com/5019378/153793002-2d4cda47-09c7-4551-8687-9238d5f24d93.png)

      ![스크린샷 2022-02-14 오전 11 37 25](https://user-images.githubusercontent.com/5019378/153793147-7cfd53c7-6cb4-455c-8b87-99773946e588.png)

   3. 각 ViewController에 Custom Class를 생성하여 연결

   4. 각 viewDidLoad() 함수내부에 출력구문 코드 작성

      ```swift
      import Foundation
      import UIKit
      
      class FirstViewController: UIViewController {
      
          override func viewDidLoad() {
              super.viewDidLoad()
              // Do any additional setup after loading the view.
              print(#file, #line, #function, #column)
          }
      }
      ```

   5. 결과물

      ```
      /Users/seonghashin/Desktop/CodeSquad/PhotoFrame/PhotoFrame/PhotoFrame/Sources/Presentation/SecondView/SecondViewController.swift 16 viewDidLoad() 40
      /Users/seonghashin/Desktop/CodeSquad/PhotoFrame/PhotoFrame/PhotoFrame/Sources/Presentation/FirstView/FirstViewController.swift 16 viewDidLoad() 40
      ```

      
