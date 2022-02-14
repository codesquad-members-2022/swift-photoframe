# swift-photoframe
피그백's iOS 포토프레임 프로젝트 저장소

### 프로그래밍 요구사항
- [X] TabBar Controller를 추가하고 Initial ViewController로 지정한다.
- [X] TabBarController에 Tab을 2개로 지정하고, Scene을 각각 연결한다
1. 기존의 UIViewController를 storyBoard와 파일에서 제거하고 TabBarController Class를 만들고 추가한다.
2. StoryBoard로 돌아와서 initial ViewController로 지정한다.
![스크린샷 2022-02-14 오전 11 55 03](https://user-images.githubusercontent.com/80263729/153792317-54b0e6da-e515-4666-af37-4ddbbe38e849.png)
![스크린샷 2022-02-14 오전 11 53 27](https://user-images.githubusercontent.com/80263729/153792134-068c35b5-44b9-4e15-9e9c-91df23eee6fd.png)
![스크린샷 2022-02-14 오전 11 53 35](https://user-images.githubusercontent.com/80263729/153792147-9ea65a44-15d0-490c-9f5b-74ee03238519.png)

- [X] 두 개 Scene 중에 첫 번째 Scene에 Custom Class를 ViewController로 지정한다
1. customViewController로 FirstViewController를 만들었다.
2. 첫번째 Scene에 만들어 놓았던 Custom Class를 지정했다.
![스크린샷 2022-02-14 오후 12 08 30](https://user-images.githubusercontent.com/80263729/153793633-15c56e85-3a68-4071-81a3-e5600799b771.png)
- [X] 자동 생성된 ViewController 클래스 viewDidLoad() 함수에서 print(#file, #line, #function, #column) 코드를 추가하고 실행하면 콘솔 영역에 무엇이 출력되는지 확인한다
- TabBarController의 viewDidLoad에 제시된 print문을 작성해보았다.
![스크린샷 2022-02-14 오후 12 26 22](https://user-images.githubusercontent.com/80263729/153795199-d3fa1ce9-e6c8-4935-94c5-68dc16bb1972.png)

