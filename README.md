# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## STEP6 

### [요구 사항]
- [X] First Scene 에서  Editor > Embed In > Navigation Controller 항목을 선택. 
- [X] Edit close button 

### [추가학습거리]
### 1. view Controller
- 앱의 인터페이스 와 어플의 전체적인 진행흐름 을 관리하고 여러개의 view controller 를 만들어서 어플에서 필요한 작업을 분할 해서 화면을 관리할수 있다. 

### Container view Controller

- 앱의 여러 view controller 중, 작업의 시작점을  continer view controller 의 root view 로 만든다.
- Custom view 와 그에 연결된 하위 화면들과 섞어서 화면 흐름 관리 와 유니크한 인터페이스를  만들수 있다.
- Contianer View Controller 의 종류는 크게 4가지로 나뉜다.
1. UISplitViewController 

    - 화면을 둘로 쪼개서 나타낼수 있게 해준다. 

    - 한화면에 여러개의 child view controller 를 관리하며, 하나의 뷰의 상태가 바뀜에 따라 다른 뷰에 영향을 미침. 

1. NavigationController

     - 순서대로 정리된 배열을 사용하여 child view controller 들을 관리하는데 이것을 navigation stack 이라 부른다.  (Stack based 의 방식으로 계층구조의 내용을  조종한다 → 선택된 새로운 뷰가 위로 쌓여서 사용자에게 보여줌)

    - PUSH 와 POP 으로 화면의 스택을 위로 더 쌓거나 이전의 화면으로 돌아갈수 있다. 

    - 첫번째 배열안에 있는 view controller 가 root view controller 로 지정되고, 스택의 제일 아래 를 나타낸다. 그 반대로 배열 제일 마지막 에 있는 view controller 는 스택의 제일 위에 위치하게 되고 이는 현재 화면에 나타난다.

    - root view 를 제외한 child view controllers 에 사용자가 이전 화면으로 돌아가기 하기 위한 뒤로가기 버튼이 생긴다. 

    - root view controller (시작점) 부터 뷰 상단에 네이게이션바를 생성하고 각각 title 이주어진다. 이 네비게이션 바는 항상 존재하며 navigation controller 에 의해 관리된다

    -  navigation controller 는`Delegate` 오브젝트를 사용하여 동작한다. 

1. TabBarController 

      - 여러선택 을 할수 인테페이스 이고, 선택에 따라 어떤 child view 로 이동할지 결정한다. 

1. UIPageViewContoller  

      -  Page 로 되어있는 내용의 흐름을 관리한다. (Child view controller 가 각각의 페이지를 관리한다)
        
<p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154732681-94b6040b-e0ef-4e1f-84e6-566edbc562e5.png" width="350" height="250"> 
</p>
