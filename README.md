# STEP01. 프로젝트 생성하기

> 2022.02.14

### 요구사항

- [x] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [x] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
- [x] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다
- [x] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 `print(#file, #line, #function, #column)` 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다

<br/>
<br/>

### 과정

1. 스토리 보드의 Initial ViewController 선택
2. Editor → Embed In → Tab Bar Controller
3. 2번째 ViewController 생성
4. Tab Bar Controller 에서 마우스 우클릭+ 드래그
5. Relationship Segue-view controllers 선택
6. ViewController 파일의 `viewDidLoad()` 에 Literal Expression 코드 추가

### 실행화면

<img src="https://user-images.githubusercontent.com/12508578/153888099-e528bbfe-f71e-4bf6-a61e-29410b179e79.png" width="100%" height="859px"/>

<br/>

## 배경 지식 학습

### Primary Expressions(으뜸 표현식)

기본 종류의 표현식. 그 자체로 표현식으로 사용할 수 있으며 다른 ‘낱말 (tokens)’ 과 조합하여 ‘접두사 표현식’, ‘이항 표현식’, ‘접미사 표현식’ 을 만들 수도 있다.

더 자세한 내용은 [SWIFT PROGRAMMING LANGUAGE(문서)](https://docs.swift.org/swift-book/ReferenceManual/Expressions.html#ID389) 에서 확인 가능

**Literal Expression:**

| Literal   | Type   | Value                          |
| --------- | ------ | ------------------------------ |
| #file     | String | 파일의 경로                    |
| #fileID   | String | 파일과 파일이 속한 모듈의 이름 |
| #filePath | String | 파일의 경로                    |
| #line     | Int    | 줄의 번호                      |
| #column   | Int    | 열의 번호                      |
| #function | String | 선언의 이름                    |

<br/>

## 🧁 추가 학습거리

> iOS 는 디바이스를 가득 채우는 하나의 화면만을 표시할 수 있으며, window 와 view 객체가 이를 위해 사용된다.

- window:
  - 디바이스를 가득 채우기 위해 사용하는 객체
  - 유저 인터페이스 표현 계층의 최상위에 위치
  - 뷰의 일종이지만 컨텐츠를 가지지 않는다.

### ViewControllers

> ViewControllers 를 사용하여 UIKit 앱의 인터페이스를 관리하고
>
> 앱의 content 를 쉽게 탐색할 수 있도록 도와준다
>
> [👉 문서에서 보기](https://developer.apple.com/documentation/uikit/view_controllers)

- 모든 앱에는 main window 컨텐츠가 있는 View Controller 가 적어도 1개 이상 존재한다.
- 컨텐츠를 한 화면에 담아낼 수 없다면, 여러개의 View Controller 를 이용해 관리한다.
- **container view controller** 는 다른 view controller 를 root view 에 내장(embed)한다.대표적으로 UITabBarController, UINavigationController 가 있다.

### UITabBarController

> 다중선택 인터페이스를 관리하는 container view controller

- Array 기반
  - index 로 뷰컨트롤러 이동
- UIViewController 를 상속받음
- root view controller 를 custom view controller 나 navigation controller 로 사용할 수 있다.
  - navigation controller 인 경우 tabbar controller 는 tabbar 와 겹치지 않도록 화면의 navigation content 의 크기를 조정한다.

### UINavigationController

> stack 을 베이스로 하는 계층구조를 가지는 container view controller

navigation bar 와 child view controller들을 관리하는 기능을 제공한다. child view controller 를 stack 으로 관리하며 child view controller 를 stack에서 add, remove 할 수 있는 API 를 제공한다.

- navigation stack 이라는 정렬된 배열을 사용해 하위 뷰컨트롤러를 관리
  - push, pop 로 뷰컨트롤러 이동
- UIViewController 를 상속받음

### UIViewController

UIKit 앱의 view 계층을 관리하는 객체

- UIResponder 를 상속받음
- 데이터 변화에 따른 view 컨텐츠 업데이트
- view 에 대한 유저의 상호작용(interaction) 에 응답
- view 크기 조정 및 전체 인터페이스의 레이아웃 관리
- 앱 내의 다른 객체(다른 view controller 를 포함)와의 조정

### UIResponder

이벤트에 응답하고 처리하기 위한 추상 인터페이스

- UIApplication, UIViewController, UIView, UIWindow 등 많은 객체들도 responder 이다.
- 이벤트가 발생하면 UIKit 이 처리를 위해 responder 객체에게 해당 이벤트를 발송한다.
- event에는 터치, 모션, remote-control, press 등이 있으며 이 이벤트를 처리하려면 responder 가 해당 메서드를 재정의 해야한다.
