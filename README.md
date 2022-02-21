# swift-photoframe
iOS 포토프레임 프로젝트 저장소

# 사진액자 앱(1주차)

## 기능요구사항

- 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- 스토리보드에서 TabBar Controller를 직접 추가한다.
- 특정한 시뮬레이터를 하나 골라서 실행한다.
- readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.
  - 단계별로 미션을 해결하고 리뷰를 받고나면 readme.md 파일에 주요 작업 내용(바뀐 화면 이미지, 핵심 기능 설명)과 완성 날짜시간을 기록한다.
  - 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

### 데일리 체크

##### 14일(월)

###### 프로젝트 생성하기

- [x] 포토프레임 프로젝트 저장소를 본인 저장소로 fork하고 로컬에 clone한다.
- [x] iOS 프로젝트 중에 App 템플릿을 만들고, 프로젝트 이름을 "PhotoFrame"으로 지정하고, 위에 만든 로컬 저장소 경로에 생성한다.
- [x] 스토리보드에서 TabBar Controller를 직접 추가한다.
- [x] 특정한 시뮬레이터를 하나 골라서 실행한다.
- [x] readme.md 파일을 자신의 프로젝트에 대한 설명으로 변경한다.

##### 15일(화)

###### IBOutlet 연결하기

- [x] 사진액자 앱 - 시작하기 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 만들어져 있는 레이블을 IBOutlet으로 연결한다.
- [x] 연결한 아웃렛 변수에 값을 변경한다.
- [x] 실행한 화면을 캡처해서 readme.md 파일에 포함한다.

###### IBAction 연결하기

- [x] 사진액자 - IBOutlet 요구사항을 구현한 상태로 시작한다.
- [x] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- [x] 연결한 액션에 대한 메서드를 구현한다.
- [x] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.

###### Scene을 Segue로 연결하기

- [x] 사진액자 - IBAction 요구사항을 구현한 상태로 시작한다.
- [x] 스토리보드 구성 요소에 대해 학습하고 새로운 Scene과 Segue를 추가한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

##### 17일(목)

###### ViewController 연결하기

- [x] 스토리보드 구성 요소와 클래스 코드와 연결해서 동작을 확장한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

##### 18일(금)

###### Container ViewController 활용하기

- [x] 내비게이션 컨트롤러(Navigation Controller)를 Embed 시켜서 동작하도록 개선한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.
- [x] 용어별 학습 - TIL 정리

##### 21일(월)

###### 다른화면 연결하기

- [x] 탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
- [x] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.

### 출력 확인

###### 1. 프로젝트 생성확인(2022.02.14)

<img width="521" alt="스크린샷 2022-02-14 오후 8 42 44" src="https://user-images.githubusercontent.com/84652513/153862683-524ed1f8-a8f5-448d-8991-f52700081b5a.png">

###### 2. IBOutlet 연결하기(2022.02.15)

<img width="330" alt="스크린샷 2022-02-15 오후 4 18 32" src="https://user-images.githubusercontent.com/84652513/154011809-e19d6959-6e5e-4a34-b4bb-f61542a0079e.png">

###### 3. IBAction 연결하기(20220215)

|                       버튼 클릭 **전**                       |                       버튼 클릭 **후**                       |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img width="322" alt="스크린샷 2022-02-15 오후 4 25 52" src="https://user-images.githubusercontent.com/84652513/154013247-73936076-3896-48b7-ad4b-c388db8dc69d.png"> | <img width="319" alt="스크린샷 2022-02-15 오후 4 26 15" src="https://user-images.githubusercontent.com/84652513/154013286-88b53e25-2780-4c75-b6f4-7469705de876.png"> |



###### 4. Scene을 Segue로 연결하기(20220215)

|                        1단계(첫화면)                         |                        2단계(주황색)                         |                        3단계(빨간색)                         |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 07](https://user-images.githubusercontent.com/84652513/154015437-09c6758d-5745-47d5-b602-8abb5f187f5e.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 12](https://user-images.githubusercontent.com/84652513/154015575-1b3a8a85-3e66-4c4a-97e0-68aa4221d024.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 15](https://user-images.githubusercontent.com/84652513/154015615-e242cdec-1931-4256-83f6-1d50ddcbea6e.png) |



###### 5. ViewController 연결하기(2022.02.17.)

|                        1단계(첫화면)                         |                        2단계(주황색)                         |                        3단계(빨간색)                         |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16 10 32](https://user-images.githubusercontent.com/84652513/154427482-ca6a5e82-993e-48c2-9194-40f9280c97f4.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16.10.36](/Users/joobanglee/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/스크린샷/1. 사진액자앱/20220217_5_ViewController연결하기/Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16.10.36.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16.10.42](/Users/joobanglee/Desktop/01_LeeJoobang/002_0 코드스쿼드/002_2코드스쿼드 마스터즈/0002 iOS 클래스/스크린샷/1. 사진액자앱/20220217_5_ViewController연결하기/Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16.10.42.png) |

|                   상태메세지(터미널 표시)                    |
| :----------------------------------------------------------: |
| <img width="500" alt="스크린샷 2022-02-17 오후 4 29 55" src="https://user-images.githubusercontent.com/84652513/154427773-6f3152ac-4739-4c8e-87aa-cd5678f39825.png"> |



###### 6. Container ViewController 활용하기(2022.02.18.)

|                        1단계(첫화면)                         |                        2단계(주황색)                         |                        3단계(빨간색)                         |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16 10 32](https://user-images.githubusercontent.com/84652513/154427482-ca6a5e82-993e-48c2-9194-40f9280c97f4.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-18 at 16 50 28](https://user-images.githubusercontent.com/84652513/154656195-433ce95f-a9c1-49cc-b350-743bd76182c2.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-18 at 16 50 32](https://user-images.githubusercontent.com/84652513/154656252-1bad39f0-f23e-480d-aac2-6eea0cb28512.png) |



###### 7. 다른화면 연결하기(2022.02.21)

|                            1단계                             |                            2단계                             |                            3단계                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-21 at 18 56 11](https://user-images.githubusercontent.com/84652513/154931814-c01a00dc-bc5b-4886-bb3d-9f0c03973b94.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-21 at 18 56 14](https://user-images.githubusercontent.com/84652513/154931968-4211de4f-bdc4-4ad8-ad8e-069f3149b22e.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-21 at 18 56 17](https://user-images.githubusercontent.com/84652513/154932017-06a8dc96-9f86-4a49-9128-c2d14d263b9f.png) |



### 참조링크

- 깃학습(https://learngitbranching.js.org/?locale=ko)
- 뷰 상태변화(https://etst.tistory.com/90)

### 프로젝트 설명

