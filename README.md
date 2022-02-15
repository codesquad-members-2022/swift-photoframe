# swift-photoframe
iOS 포토프레임 프로젝트 저장소

## 요구사항

- [x] 프로젝트 생성 및 TabBarController 추가
- [x] IBOutlet 연결하기
- [ ] IBAction 연결하기
- [ ] Scene을 Segue로 연결하기
- [ ] ViewController 연결하기
- [ ] Container ViewController 활용하기
- [ ] 다른 화면 연결하기
- [ ] 사진 앨범 선택하기
- [ ] 마무리

​    

## 작업 내용 정리

### 1. 프로젝트 생성 및 TabBarController 추가

- 스토리보드 메인에서 TabBarController 추가
- 이후 첫번째 Scene에 ViewController 클래스 연결(CustomClass)
- 시뮬레이터 실행 후 콘솔 출력 결과 확인

<img src="https://user-images.githubusercontent.com/68586291/153905653-4ec934d9-49f4-4548-85d7-d610341f6036.png" alt="image" style="zoom:80%"/>

![image](https://user-images.githubusercontent.com/68586291/153906104-97dd8f5a-1c1d-4498-949f-e149aec20e22.png)

​    

### 2. IBOutlet 연결하기

- 스토리보드에서 첫번째 Scene 내부에 UILabel 추가
- 추가한 UILabel을 ViewController클래스 내부로 IBOutlet으로 연결
- 연결 후 클래스 내에 아래와 같은 프로퍼티 변수 생성된 것 확인

```swift
@IBOutlet weak var firstLabel: UILabel!
```

- NSMutableAttributedString을 사용하여 라벨에 보여질 텍스트 및 텍스트 속성 설정

```swift
//라벨에 보여질 텍스트, 속성 설정
let attributedText = NSMutableAttributedString(string: "Jed의 사진 액자")
attributedText.addAttributes([.backgroundColor: UIColor.darkGray, .font: UIFont.systemFont(ofSize: 40)], range: NSRange(location: 0, length: 10))
firstLabel.attributedText = attributedText
```

- 시뮬레이터로 결과 확인

<img style="zoom:70%" width="481" alt="image" src="https://user-images.githubusercontent.com/68586291/153997054-75db2d6d-8ae9-4330-ab40-063a9e7a2b53.png">
