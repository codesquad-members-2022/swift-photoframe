# swift-photoframe
iOS 포토프레임 프로젝트 저장소 by. Damagucci-Juice

![Screen Shot 2022-02-14 at 11 11 20 PM](https://user-images.githubusercontent.com/50472122/153894051-db31f659-56e1-4a55-89b2-e558facd2757.png)

# Monday Session
> HIG(Human Interface Guideline)에 대해서 알아보고 앱을 구성하는 다양한 인터페이스들이 어떠한 방식으로 디자인되는지에 대해 실제 앱을 조사해보며 학습

## 프로젝트 생성 with git
> 미션 해결 저장소를 fork 하고, 자신의 로컬에 프로젝트로 만든 후 간단한 PR을 하는 것까지가 이번 미션

* git 사용법
* 스토리 보드 방식으로 ios-app(story board) 프로젝트 생성

![Screen Shot 2022-02-15 at 12 32 26 AM](https://user-images.githubusercontent.com/50472122/153894337-99662081-2a56-46dd-a8b3-a47758605ae0.png)

[HIG](https://developer.apple.com/design/human-interface-guidelines/ios/overview/themes/)

## View controller

> 뷰 컨트롤러를 이용해 scene을 만들어보고 이를 custom view 컨트롤러와 매칭 시켜보자

![image](https://user-images.githubusercontent.com/50472122/153894528-56ee0f58-f507-4930-a7ab-ff134846b291.png)

* view controller와 view가 1:1로 매칭 되는 것이 특징
* entry point 지정

![Screen Shot 2022-02-15 at 12 12 07 AM](https://user-images.githubusercontent.com/50472122/153894599-ed5776a7-dddc-4c25-81ec-7b87b201c449.png)

* 새로운 object를 만드는 방법을 조사 --> `cmd + shift + l`

## TabBar Controller

> 탭 바 컨트롤러는 주로 화면의 하단에 위치하며 앱 내부에서 어느 화면으로의 이동이든 가능하게 해주는 컨트롤러이다. 마찬가지로 처음에 생성하면 컨트롤러 하나와 뷰 두개가 연결된체 나오는데 이 장면들마다 직접 정의한 컨트롤러에 연결시켜주어야 한다. 
구성이 탭바 컨트롤러가 일종의 컨테이너이고 장면(Scene)들을 담고 있다. 

<img width="1440" alt="image" src="https://user-images.githubusercontent.com/50472122/153895548-987b3e4c-a352-4b50-8d46-b820cfbb6c13.png">

```
1. `cmd + shift + l` -> TabBarController 
2. entry point 지정 
3. 각 Scene 마다 Custom Class 선언
```

## Navigation Controller
> 타고 타고 들어가는 화면 구성인데 이를 설명하면, 뷰 컨트롤러가 스택처럼 쌓이는 구조를 생각해 볼 수 있다. 주로 화면의 상단부에 위치하며, 사용자 이동과 관련한 모션을 담고 있다. 예를 들면 뒤로가기 표시(<)나 아이템 생성(+) 등이 대표적이다.

![Screen Shot 2022-02-15 at 12 25 03 AM (2)](https://user-images.githubusercontent.com/50472122/153895601-4e72228c-c1cf-47cd-8bf8-958bb2302867.png)


```
1. `cmd + shift + l` -> Navigation Controller
2. entry point 지정 
3. test를 위해 View Controller 2개 생성(기본 1개 제공, 추가로 하나 더 생성)
4. 같은 방식으로 가운데 scene에 버튼 생성(마지막 scene엔 안해도됨)
5. 버튼에서 ctrl + 클릭으로 드래그하면서 남은 view Controller에 연결, 이 때 show로 설정

* 주의 *
네비게이션 컨트롤러와 루트 뷰 컨트롤러 사이에는 Relationship seque - root view controller 가 설정되어 있어야함.
```

## TabBar & Navigation 차이점
> 탭바가 배열과 비슷한 자료구조라면 네비게이션 컨트롤러는 스택과 유사한 성질을 갖는다.

![image](https://user-images.githubusercontent.com/50472122/153896087-18473f1b-35cc-4045-856d-513405c55cd3.png)

![image](https://user-images.githubusercontent.com/50472122/153896405-40e9b5e6-9596-4391-a75d-ae5efcba7142.png)

## Label을 생성하고 code와 연결
```
1. 스토리 보드 영역을 클릭한 채로 cmd + shift + l 을 눌러  객체 추가 창을 연다
2. label을 검색해 원하는 scene에 드래그한다.
3. 파일 탭 네비게이션 바 부분에서 "=" 코드처럼 생긴 기호룰 누른다. Assist mode
4. 해당 Label을 ctrl 키를 누른 상태에서 클래스 내부에 프로퍼티로 선언하게끔 댕겨온다.
5. viewDidLoad() 메서드 안에서 각종 설정을 수행한다.
```

## label의 property를 변경
```
class ViewController1 : UIViewController {
 
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var detailDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.photoLabel.text = "Damagucci-Juice의 포토 프레임"    			// 글자 선언
        self.photoLabel.font = UIFont.systemFont(ofSize: CGFloat(15))			// 폰트 사이즈
        self.photoLabel.textColor = UIColor.blue					// 글자 색
        self.photoLabel.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)	// 배경 색.투명도
        
    }
}

```
# Wednesday Session
> 화요일 세션이 날라가서 수요일부분 부터 작성합니다.

## Merged 된 PR이 로컬에 적용되기 전에 작업한 브랜치를 어떻게 정리할까?

![브랜치병합](https://user-images.githubusercontent.com/50472122/154191810-ebf66d4f-c9cb-4719-99ed-3d5258801ba2.png)

![현재_커밋_로그](https://user-images.githubusercontent.com/50472122/154200244-d74a55a0-b3b9-4b6c-9777-8dfcf711dd7b.png)

* 일단은 문제가 없이 진행은 되는데 앞으로의 작업에 있어서 더 조심스러워질거같다.
* Human-Insight에 맞춰 다음번 오류가 나면 다시 고민해보자.

