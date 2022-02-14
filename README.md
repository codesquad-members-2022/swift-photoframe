# PhotoFrame
https://github.com/shingha1124/swift-photoframe



# 작업내역

| 날짜       | 번호 | 내용                              | 비고                                                         |
| ---------- | :--- | --------------------------------- | ------------------------------------------------------------ |
| 2022.02.14 | PF-5 | Container ViewController 활용하기 |                                                              |
|            | PF-4 | ViewController 연결하기           | 뷰 컨트롤러 클래스를 생성하고, Scene에 연결하여 동작하도록 한다 |
|            | PF-3 | Scene을 Segue로 연결하기          | 스토리보드에 Scene을 생성하고, 버튼이벤트를 통해 연결해본다. |
|            | PF-2 | IBOutlet 연결하기                 | 스토리보드에서 IBOutlet을 연결해본다                         |
|            |      | IBAction 연결하기                 | 스토리보드에서 IBAction을 연결해본다                         |
|            | PF-1 | 프로젝트 생성                     | Fork를 하고, 로컬에 Clone<br />iOS app 템플릿으로 생성       |
|            |      | 탭바 컨트롤러 추가                | 1. 기존 생성된 ViewController 대신 TabBarController로 변경<br />2. 새로운 뷰를 추가하여 메뉴 추가<br />3. 확인 로그 출력 |
|            |      |                                   |                                                              |

------

## [PF-5] Container ViewController 활용하기

### 요구사항

- [x] First Scene의 Embed를 Navigation Controller 항목으로 변경한다
- [x] 기존 구현한 닫기버튼의 코드를 수정한다.

### 학습키워드

* ViewController, Navigation Bar



### 고민과 해결



### 구현과정

1. First Scene을 선택하고 메뉴에서 editor > Embed In > Navigation Controller항목을 선택한다

   ![스크린샷 2022-02-14 오후 10 39 08](https://user-images.githubusercontent.com/5019378/153874674-2db83e26-5caa-40bb-97a8-416d3cf04bf4.png)

2. 기존에 구현한 닫기버튼의 코드를 수정한다

   ```swift
   @IBAction func closeButtonTouched(_ sender: Any) {
     self.navigationController?.popViewController(animated: true)
   }
   ```

   

3. 동작을 확인한다

   ![Simulator Screen Recording - iPhone 12 - 2022-02-14 at 22 41 16](https://user-images.githubusercontent.com/5019378/153875150-6849b13f-6bb9-46ea-8b68-c73636c5a858.gif)

### 추가학습거리

- 뷰컨트롤러 컨테이너는 또 어떤 클래스가 있는지 찾아보고 학습한다.
- 내비게이션 컨트롤러가 있을 경우와 없을 경우 화면 전환 동작이 어떻게 다른지, 화면들 포함관계가 있는지 학습한다.
- 내비게이션 컨트롤러 관련 메서드가 왜 push / pop 인지 학습한다.



------

## [PF-4] ViewController 연결하기

### 요구사항

- [x] 스토리보드 구성요소와 클래스 코드를 연결해서 동작을 확장한다.
  - [x] ColorView1, 2 클래스 생성
  - [x] 기존에 생성한 컬러뷰 두개를 연결한다

- [x] 닫기버튼 구현
  - [x] 닫기버튼 추가
  - [x] 닫기버튼 이벤트 연결
  - [x] 닫기 버튼 기능 구현

- [x] 뷰 컨트롤러 콜백함수를 생성하고 로그 출력

### 학습키워드

* ViewController



### 고민과 해결



### 구현과정

1. 컬러뷰에 사용할 클래스 2개 제작한다.

2. 생성한 클래스를 각각 뷰에 연결시킨다

   ![스크린샷 2022-02-14 오후 10 07 18](https://user-images.githubusercontent.com/5019378/153869913-676d0698-95d8-4117-bc38-e4fe6c31fa40.png)

3. 컬러뷰에 닫기버튼을 생성한다

   1. 버튼생성은 아래에서 많이 해봤으므로 설명은 생략한다!

4. 버튼에 이벤트를 연결한다

   1. 버튼 이벤트도 많이 해봤으므로 설명은 생략한다!

5. 생성한 이벤트가 발생하면 해당 뷰를 닫는 코드를 작성한다

   ```swift
   @IBAction func closeButtonTouched(_ sender: Any) {
     self.dismiss(animated: true, completion: nil)
   }
   ```

6. ViewController의 콜백함수를 등록하고 로그를 찍어 어떤 순서로 호출되는지 파악한다

   ```swift
   class ColorView1: UIViewController {
       
       override func viewDidLoad() {
           print(#file, #line, #function, #column)
       }
       
       override func viewWillAppear(_ animated: Bool) {
           print(#file, #line, #function, #column)
       }
       
       override func viewDidAppear(_ animated: Bool) {
           print(#file, #line, #function, #column)
       }
       
       override func viewWillDisappear(_ animated: Bool) {
           print(#file, #line, #function, #column)
       }
       
       override func viewDidDisappear(_ animated: Bool) {
           print(#file, #line, #function, #column)
       }
   
       @IBAction func closeButtonTouched(_ sender: Any) {
           self.dismiss(animated: true, completion: nil)
       }
   }
   ```

7. 결과화면

   ![Simulator Screen Recording - iPhone 12 - 2022-02-14 at 22 10 53](https://user-images.githubusercontent.com/5019378/153870679-f8191796-4411-4834-b6a6-8fe86afcde97.gif)

   ```
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView1/ColorView1.swift 13 viewDidLoad() 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView1/ColorView1.swift 17 viewWillAppear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView1/ColorView1.swift 21 viewDidAppear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView2/ColorView2.swift 14 viewDidLoad() 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView2/ColorView2.swift 18 viewWillAppear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView2/ColorView2.swift 22 viewDidAppear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView2/ColorView2.swift 26 viewWillDisappear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView2/ColorView2.swift 30 viewDidDisappear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView1/ColorView1.swift 25 viewWillDisappear(_:) 40
   PhotoFrame/PhotoFrame/Sources/Presentation/ColorView1/ColorView1.swift 29 viewDidDisappear(_:) 40
   ```

   

------

## [PF-3] Scene을 Segue로 연결하기

### 요구사항

- [x] 스토리보드에 새로운 Scene을 추가하고 Segue로 연결한다
  - [x] 새로운 Scene 추가하기
  - [x] 배경색 변경하기
  - [x] 버튼 이벤트 연결하기

### 학습키워드

* Segue Actions



### 고민과 해결



### Scene을 Segue로 연결하기

1. 스토리보드에 새로운 Scene을 추가한다

   1. Command + shift + L 을 눌러 ViewController를 찾아서 드래그 앤 드롭으로 해당 뷰에 추가한다

   2. 배경색을 변경한다

      ![스크린샷 2022-02-14 오후 9 22 00](https://user-images.githubusercontent.com/5019378/153863505-d30eb2ec-46a1-4a2a-888f-f73dd09cd958.png)

2. 기존에 생성한 버튼에서 ctrl + 우클릭 드래그로 위에서 생성한 Scene와 연결한다

   1. Action Segue에서 Show를 선택한다.

   ![스크린샷 2022-02-14 오후 9 22 45](https://user-images.githubusercontent.com/5019378/153863756-f435305c-e825-4cb8-aa55-f86a819f44ce.png)

3. 위 과정을 한번 더 진행하여 Scene과 Button을 만들고 연결해준다

   ![스크린샷 2022-02-14 오후 9 25 48](https://user-images.githubusercontent.com/5019378/153864078-4a7681e5-93fd-4769-bbb3-c0b9ee8caeda.png)

   

4. 결과

   ![Simulator Screen Recording - iPhone 12 - 2022-02-14 at 21 29 22](https://user-images.githubusercontent.com/5019378/153865521-707ba0e0-5d12-4047-83cc-7eb4a3650bce.gif)

   



------

## [PF-2] IBOutlet 연결하기

### 요구사항

- [x] IBOutlet 연결하기
  - [x] 스토리 보드에 Label 추가
  - [x] viewDidLoad() 함수에 텍스트 변경 코드 추가
- [x] IBAction 연결하기
  - [x] 스토리 보드에 Button 추가
  - [x] Button Event 연결
  - [x] Button Event 발생 시 라벨 속성변경 코드 추가

### 학습 키워드

- IBOutlet, IBAction, action, outlet

### 고민과 해결

* StoryBoard에서 UI만드는 과정이 아직까진 어색하다
  * 드래그 앤 드롭으로 UI 변수 등록 및 이벤트 연결하는 과정이 아직까진 어색하다.
  * 속성값들도 UI로 보니 어떤값들인지 잘 모르겠어서 이것저것 눌러보며 찾아가고 있다.



### IBOutlet 연결하기

1. Label을 넣을 뷰를 선택 후 Label을 추가한다

   1. Command + shift + L 을 눌러 Label을 찾아서 드래그 앤 드롭으로 해당 뷰에 추가한다

   ![스크린샷 2022-02-14 오후 7 38 16](https://user-images.githubusercontent.com/5019378/153848531-65904506-38a9-4879-9058-821627958cd1.png)

   

2. 생성한 라벨을 선택 후 ctrl + 드래그 후 원하는 위치에 드롭, 후에 나오는 메뉴에서 이름을 적어 프로퍼티를 생성한다

   ![스크린샷 2022-02-14 오후 7 39 53](https://user-images.githubusercontent.com/5019378/153848801-5d6f4445-1a10-4a61-a055-f6a8fb719361.png)

   

3. viewDidLoad() 함수에서 firstLabel의 텍스트를 변경하는 코드를 넣어준다

   ```swift
   override func viewDidLoad() {
     super.viewDidLoad()
     // Do any additional setup after loading the view.
     print(#file, #line, #function, #column)
     firstLabel.text = "Shingha의 사진액자"      
   }
   ```

   



### IBAction 연결하기

1. Button을 넣을 뷰를 선택 후 Button을 추가한다

   1. Command + shift + L 을 눌러 Label을 찾아서 드래그 앤 드롭으로 해당 뷰에 추가한다

   ![스크린샷 2022-02-14 오후 8 26 58](https://user-images.githubusercontent.com/5019378/153855864-b8d491ad-a54f-4ec7-9ad4-d06178630de9.png)

   

2. 생성한 버튼을 선택 후 ctrl + 드래그 후 원하는 위치에 드롭

   1.  나오는 메뉴에서 Connection메뉴에서 Outlet를 선택 후 이름을 적어 프로퍼티 생성
   2.  나오는 메뉴에서 Connection메뉴에서 Actioni를 선택 후 함수이름을 적어 프로퍼티 생성

   ![스크린샷 2022-02-14 오후 8 27 48](https://user-images.githubusercontent.com/5019378/153856053-1650bf26-2a58-48d1-bec3-e3c1693bce7f.png)

   

3. 생성한 이벤트 함수에 라벨의 옵션을 변경하는 코드를 넣어 완성

   ```swift
   @IBAction func onTappedButton(_ sender: Any) {
     self.firstLabel.textColor = UIColor.blue
     self.firstLabel.backgroundColor = UIColor.yellow
     self.firstLabel.alpha = 0.5
   }
   ```

4. 결과 스크린샷

   ![스크린샷 2022-02-14 오후 8 40 39](https://user-images.githubusercontent.com/5019378/153857896-58e339dc-283b-4617-8668-f24fd4cb0938.png)





------

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
