# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## STEP5 

### [요구 사항]
- [X] 새로운 ViewController 를 YellowViewController 라는 이름으로 생성한다.
- [X] YellowViewController 화면에 [닫기] 버튼을 추가한다.
- [X] [닫기] 버튼에 IBAction 을 추가한다.
- [X] 같은 작업을 GreenViewController 에도 해준다. 
- [X] 뷰의 상태변화 공부. 

### 뷰의 상태변화 
- `viewDidLoad` : 메모리에 초기화 될때 호출되는 메소드 화면상에 나타나는 것과 아무 상괸없음.  
스토리 보드에서 불리거나 메모리에 초기화 될때 해당 뷰의 viewDidLoad 가 불려지고 초기화작업을 진행한다. IBOutlet 들이 force unwrapped 된이유 도 스토리보드에서 해당 뷰의 viewDidLoad 가 호출되기때문이다. 

- `viewWillAppear` : Content View 가 hierarchy (화면계층) 에 더해지기 전에 불려진다. 

- `viewDidAppear` : 뷰가 화면에 나타난 직후 실행됨. (뷰를 보여줄 때 필요한 추가적인 작업을 담당)

- `viewWillDisappear` : 뷰가 화면에서 사라지기전에 실행됨. (뷰를 생성하고나서 했던 행동들을 되돌리는 작업을 하거나 작성 또는 선택된 정보들을 삭제되기 전에 저장해주는 작업 수행)

- `viewDidDisappear` : 뷰가 화면에서 사라지면 실행됨. (뷰를 숨기는 작업 수행)


### [추가학습거리]

- 1.0 화면 전환이 이루어지는 사이에 뷰컨트롤러 라이프사이클이 어떻게 변화하는지 학습한다.
 - `다음` 버튼을 누르면 viewDidLoad -> viewWillAppear -> viewDidAppear 순으로 노란배경의 화면이 보여진다. 
 - 노란화면을 아래로 끌면 viewWillDisappear -> viewDidDisappear 순으로 화면이 사라진다. 
 
![viewLifecycle](https://user-images.githubusercontent.com/36659877/154622229-acae5a4c-87bc-41b8-8b90-fc6894bbf71e.gif)

- 2.0 YellowViewController에서 Segue를 제거하고 다음 화면을 보여줄 때 코드로 보여주는 방법을 찾아보고 적용해본다.
 
 접근방식 은 버튼에 IBAction 을 주고 그안에 다음 화면을 호출할수 있는 방법을 생각해봤다. 
 이때 불러올 화면의 클래스를 인스턴스화 시켜주어야하는데 처음에는 그냥 디폴트 생성자로 인스턴스를 만들고 테스트를 해보았다. 
 `다음` 버튼을 누르자 현재 화면이 어두워지고 콘솔에 GreenView 가 나타났다는것을 볼수 있다. 하지만 화면상 아무것도 보여주지 않기때문에 틀린 접근이라고 생각하여 뷰를 어떻게 인스턴화 시키는지 알아보았다. 
 
 ![without Instantiate](https://user-images.githubusercontent.com/36659877/154630549-eedd1205-64fb-438b-adfb-34abfd5f7859.gif)

찾아보던중 `instantiateViewController` 라는 메소드를 사용하여 뷰를 인스턴스화 시켜주면 지정된 식별자를 가지고 스토리보드의 데이터를 초기회해 뷰컨트롤러를 만들수 있었다. 
`GreenViewController` 의 identify 의 StoryboardID 를 설정해주어 위 메소드를 사용해 뷰컨트롤러를 코드상으로 만들어주고 present 를 사용하여 다음 뷰를 띄울수 있게 된다. 

![with instantiate](https://user-images.githubusercontent.com/36659877/154631612-e642f184-fd0f-42e6-8a4c-1bfd2fe15ae5.gif)
