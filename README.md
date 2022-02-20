# STEP05. ViewController 연결하기

> 2022.02.20

### 요구사항

- [x] 사진액자 - Scene과 Segue 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

<br/>
<br/>

### 과정

1. First Scene 과 연결할 BlueViewController, PurpleViewController 파일 생성
2. 스토리보드에서 BlueViewController, PurpleViewController 클래스와 연결
3. 각각의 ViewController 에서 Close UIButton 생성
4. Close Button과 Action Method 연결, 구현
5. ViewController 의 라이프사이클 메서드 추가, 내부에서 print 찍어보기
6. 실행하여 결과 확인

### 실행화면

![step5-result](https://user-images.githubusercontent.com/12508578/154850623-6f40a431-8652-417d-a544-dfe1d5510b7c.png)

<br/>

## 🧁 추가 학습거리

### ViewController 라이프 사이클

> ViewController 는 Scene 의 전환에 따라 다음과 같은 생명 주기를 가진다.
> 특정 상태 변환을 일으킬때 호출하는 메서드들이 정해져 있으며
> 프로그래머는 필요시 메서드를 override 하여 이를 활용할 수 있다.

![5 viewcontroller-lifeCycle](https://user-images.githubusercontent.com/12508578/154850649-e5d4f06e-1239-408c-ba53-d8b7456815e8.png)

- viewDidLoad

  - 모든 view 가 load 되면 호출된다(생명주기에서 단 한번 호출)
  - 예) 네트워크 호출, 사용자 인터페이스, MVVM 에서 View-ViewModel 바인딩

- **Appearing**
  - ViewController 가 Screen 에 등장하기 시작한 순간부터 등장을 완료하기 직전까지의 상태
- **Appeared**
  - Screen 에 완전히 나타난 상태
- **Disappearing**
  - 가려지는 상태
- **Disappeared**
  - 완전히 사라진 상태
  - 이후에 메모리에서 deinit 될 수 있다

### Segue 대신 코드로 화면이동

```swift
@IBAction func nextButtonTouched(_ sender: Any) {
		// 1
    let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
		// 2
    guard let blueViewController = storyBoard.instantiateViewController(withIdentifier: "blueViewController") as? BlueViewController else {
        return
    }
		// 3
    self.present(blueViewController, animated: true, completion: nil)
}
```

1. UIStoryboard 에서 “Main” 에 해당하는 이름의 스토리보드 객체를 얻는다
   1. UIStoryboard 는 NSObject 를 상속받음
2. 해당 스토리보드상에서 Identifier 에 해당하는 ViewController 를 생성하고, 스토리보드의 data로 초기화한다
   1. 스토리보드에 해당 Identifier 가 없는 경우 메서드는 exception 을 발생시킨다
   2. 스토리보드 → 뷰컨트롤러 선택 → Identity Inspector - Storyboard ID 에 고유한 값을 설정해야 한다
   3. 다운캐스팅(as?) 를 통해 UIViewController 를 BlueViewController 로 변환한다 ⇒ 이를 통해 BlueViewController 내의 멤버변수나 메서드에 접근이 가능해 진다
3. 2에서 반환받은 ViewController 를 현재 뷰컨트롤러 위에 나타낸다.
   1. **`func** present(\_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)? = nil)`
   2. animation: 애니메이션을 실행할지 여부
   3. (옵셔널)completion: presentation 이 끝난 후 실행할 클로저

1,2 를 합쳐 다음과 같은 코드로 줄일 수 있다:

```swift
guard let blueViewController = self.storyboard?.instantiateViewController(withIdentifier: "blueViewController") as? BlueViewController else {
    return
}
self.present(blueViewController, animated: true, completion: nil)
```
