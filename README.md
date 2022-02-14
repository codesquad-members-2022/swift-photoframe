# swift-photoframe
iOS 포토프레임 프로젝트 저장소

## Step1. 프로젝트 생성하기

1. 스토리보드에서 TabBar Controller 추가 후, 첫번째 Scene의 Custom Class를 ViewController로 지정
2. 기존의 ViewController는 삭제
<img width="457" alt="스크린샷 2022-02-14 오후 10 53 56" src="https://user-images.githubusercontent.com/95578975/153877063-8179b860-3ee8-4036-8ae8-8188c19cab59.png">

3. viewDidLoad() 함수 내에서 아래 코드 입력

```swift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // print 출력 결과
        // 15 /Users/ansanghee/CodeSquad/iOS-Class/swift-photoframe/PhotoFrame/PhotoFrame/ViewController.swift 16 viewDidLoad() 49
        print(#column, #file, #line, #function, #column)
    }
}
```

- file: 현재 파일의 경로 / The name of the file in which it appears.
- line: print문의 라인 위치 / The line number on which it appears.
- function: 현재 실행 중인 함수 이름 / The name of the declaration in which it appears.
- column: 제일 왼쪽에서부터 커서의 수. 예를 들면 위의 viewDidLoad() 내에서 첫번째 column은 15, 두번째 columndms 49를 출력한다. / The column number in which it begins.


### 학습 키워드
- [UITabBar](https://developer.apple.com/documentation/uikit/uitabbar)
- [UITabBarController](https://developer.apple.com/documentation/uikit/uitabbarcontroller)
