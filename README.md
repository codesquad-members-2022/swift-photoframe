# swift-photoframe
iOS 포토프레임 프로젝트 저장소

----

## 프로젝트 생성하기

### 기능 요구 사항

> [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
>
> [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
>
> [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
>
> [x] 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.

### 구현 과정
1. 프로젝트 fork 후 내 저장소로 clone하기.
<img width="556" alt="스크린샷 2022-02-14 오후 12 26 48" src="https://user-images.githubusercontent.com/62687919/153795164-ebf76977-4b4f-4051-a8b8-4230595b7fc2.png">

2. 해당 폴더에 iOS프로젝트 생성
3. ebony브랜치로 스위칭
4. 기존 스토리보드의 ViewController삭제 후 TabBarController 생성
5. 생성 후 초기ViewController 설정 해주기 ( 필수 )
6. ViewController 두개 생성 후 TabBarController에 ViewControllers 추가
<img width="466" alt="스크린샷 2022-02-14 오전 11 25 47" src="https://user-images.githubusercontent.com/62687919/153795522-6b0810e2-7a24-486d-aeae-6b2dc042dfd2.png">

### 실행결과
<img width="835" alt="스크린샷 2022-02-14 오전 11 29 08" src="https://user-images.githubusercontent.com/62687919/153795641-c85ae290-9cc7-4620-b38f-c17ddfa1903a.png">


### 추가문제
TabBarViewController, UITabBar의 차이점 : TabBarViewController는 UITabBar를 View에 추가한 ViewController로 알고 있습니다. (ViewController를 상속)\
이와 유사한 클래스 : 비슷한 클래스로 NavigationController가 있습니다. 코드로 VC를 추가 시 TabBarViewController에서는 addChild를 사용하고, NavigationController에서는 pushViewController를 사용하는걸로 알고 있습니다.

----

## IBOutlet

### 기능 요구 사항
> [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
>
> [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
>
> [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.
>

### 구현 과정
1. UILabel 스토리보드에 추가.
2. 스토리보드에서 label의 위치 조절
3. viewDidLoad에서 텍스트 지정, 폰트크기, 가운데정렬 설정

### 실행결과
<img width="336" alt="스크린샷 2022-02-14 오후 12 13 37" src="https://user-images.githubusercontent.com/62687919/153893792-4d519412-a0a3-4dec-9f61-956c1cfd48b1.png">

### 추가학습
UILabel 클래스 속성(Property)
 <img width="452" alt="스크린샷 2022-02-15 오전 12 33 08" src="https://user-images.githubusercontent.com/62687919/153894414-1cdb4d32-0550-41f9-a506-bcbb4ae2c535.png">
UIView를 상속받기에 이와 관련된 속성을 모두 사용할 수 있습니다. 속성은 .text(text값 설정(string)), .textAlignment(정렬방향 설정(NSTextAlignment)), .adjustsFontSizeToFitWidth(지정된 width에 맞춰 글자의 폰트사이즈 설정(Bool)) 등을 자주 사용했습니다.

### 궁금증 정리

코드로 View를 작성하는 것과 스토리보드로 View를 작성하는 것의 차이점은 무엇일까?

1. 스토리보드 : iOS5부터 도입되었습니다.
- 장점 : preview를 통해 작업하며 결과를 예측할 수 있습니다.
- 단점 : 링크가 끊어졌을 때 파악하기 힘듭니다. ( IBOutlet, IBAction )
#### 협업 문제 ( Diff 로 알기 힘들고, Conflict 나면 해결 어려움 ) - 여러 storyboard로 나눈다
- 데이터 흐름이 표시되지 않고 prepareSegue에 의존 (storyboard만으로 데이터를 전달하려 할 때)

2. 코드
- 장점 : 재사용이 용이합니다.
        #### 협업 시 Conflict 문제가 낮아집니다.
        storyboard로 가능한 건 모두 구현이 가능합니다.
- 단점 : 컴포넌트를 숙지하고 있어야한다.(AutoLayout, CGFrame, CGRect)
        실행 전 까지는 어떤 화면이 나올 지 예측하기 힘듭니다.
    
코드로 View관련 로직을 작성한 후 이를 잘 분리하여 유지보수하기 (협업 시 또한)편할 것 같습니다. 
스토리보드는 실행 전 UI를 직관적으로 확인할 수 있다는 점이 큰 장점이라 생각합니다. 

----

## IBAction

### 기능 요구 사항
> [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
>
> [x] 연결한 액션에 대한 메서드를 구현한다.
>
> [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다
>

### 구현 과정
1. UIButton을 첫ViewController에 추가.
2. IBAction으로 추가.
3. 추가한 함수에 로직 구현.

### 실행결과
<img width="341" alt="스크린샷 2022-02-15 오전 12 57 37" src="https://user-images.githubusercontent.com/62687919/153899060-3ceacd2d-2233-4748-8711-8714fe45f54c.png">

<img width="353" alt="스크린샷 2022-02-15 오전 1 00 51" src="https://user-images.githubusercontent.com/62687919/153899696-a6d35869-b1a5-4ad4-848b-a841de0eb0f5.png">

### 추가학습
- 버튼에 IBAction을 추가할 때 이벤트(Event) 종류에는 어떤 것들이 있는지 학습한다.
<img width="392" alt="스크린샷 2022-02-15 오전 1 05 06" src="https://user-images.githubusercontent.com/62687919/153900504-1dfe3875-822c-4db9-b91d-8edeb192f1bd.png">
이와 같은 이벤트가 있고 일반적으로 버튼터치 시 감지되는 이벤트는 touchUpInsdie로 알고 있습니다.

- 버튼에 액션을 여러개 추가할 수 있을까? : 네!
- 여러 버튼을 동시에 하나의 액션에 연결할 수 있을까? : 네!

### 궁금증 정리

버튼의 이벤트를 받아오는 방법은 어떤게 있을까?
- 검색결과 
1. IBAction
2. #selector
3. RxCocoa 등이 있었습니다.


----

