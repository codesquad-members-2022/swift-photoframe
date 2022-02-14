# swift-photoframe
iOS 포토프레임 프로젝트 저장소 by. Damagucci-Juice


# Monday Session
> HIG(Human Interface Guideline)에 대해서 알아보고 앱을 구성하는 다양한 인터페이스들이 어떠한 방식으로 디자인되는지에 대해 실제 앱을 조사해보며 학습

## 프로젝트 생성 with git
> 미션 해결 저장소를 fork 하고, 자신의 로컬에 프로젝트로 만든 후 간단한 PR을 하는 것까지가 이번 미션

* git 사용법
* 스토리 보드 방식으로 ios-app(story board) 프로젝트 생성

[HIG](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)

## View controller
> 뷰 컨트롤러를 이용해 scene을 만들어보고 이를 custom view 컨트롤러와 매칭 시켜보자
* view controller와 view가 1:1로 매칭 되는 것이 특징
* entry point 지정
* 새로운 object를 만드는 방법을 조사

## TabBar Controller
> 탭 바 컨트롤러는 주로 화면의 하단에 위치하며 앱 내부에서 어느 화면으로의 이동이든 가능하게 해주는 컨트롤러이다. 마찬가지로 처음에 생성하면 컨트롤러 하나와 뷰 두개가 연결된체 나오는데 이 장면들마다 직접 정의한 컨트롤러에 연결시켜주어야 한다. 

구성이 탭바 컨트롤러가 일종의 컨테이너이고 장면(Scene)들을 담고 있다. 

## Navigation Controller
> 타고 타고 들어가는 화면 구성인데 이를 설명하면, 뷰 컨트롤러가 스택처럼 쌓이는 구조를 생각해 볼 수 있다. 주로 화면의 상단부에 위치하며, 사용자 이동과 관련한 모션을 담고 있다. 예를 들면 뒤로가기 표시(<)나 아이템 생성(+) 등이 대표적이다.
## TabBar & Navigation 차이점
탭바가 배열과 비슷한 자료구조라면 네비게이션 컨트롤러는 스택과 유사한 성질을 띈다.
