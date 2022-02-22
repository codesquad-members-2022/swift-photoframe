# swift-photoframe(1주차)
iOS 포토프레임 프로젝트 저장소

------

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

##### 22일(화)

###### 사진 앨범 선택하기

- [x] 화면 요소들을 겹쳐서 디자인 하는 경우 z축으로 위-아래를 구분해서 표시한다.
- [x] 이미지 테두리 액자 화면을 추가한다.
- [x] 사진 앨범에서 사진을 가져와서 보여줄 수 있도록 개선한다.

------

### 출력 확인

###### 1. 프로젝트 생성확인(2022.02.14)

<img width="521" alt="스크린샷 2022-02-14 오후 8 42 44" src="https://user-images.githubusercontent.com/84652513/153862683-524ed1f8-a8f5-448d-8991-f52700081b5a.png">

###### 2. IBOutlet 연결하기(2022.02.15)

<img width="330" alt="스크린샷 2022-02-15 오후 4 18 32" src="https://user-images.githubusercontent.com/84652513/154011809-e19d6959-6e5e-4a34-b4bb-f61542a0079e.png">



###### 3. IBAction 연결하기(2022.02.15)

|                       버튼 클릭 **전**                       |                       버튼 클릭 **후**                       |
| :----------------------------------------------------------: | :----------------------------------------------------------: |
| <img width="322" alt="스크린샷 2022-02-15 오후 4 25 52" src="https://user-images.githubusercontent.com/84652513/154013247-73936076-3896-48b7-ad4b-c388db8dc69d.png"> | <img width="319" alt="스크린샷 2022-02-15 오후 4 26 15" src="https://user-images.githubusercontent.com/84652513/154013286-88b53e25-2780-4c75-b6f4-7469705de876.png"> |



###### 4. Scene을 Segue로 연결하기(2022.02.15)

|                        1단계(첫화면)                         |                        2단계(주황색)                         |                        3단계(빨간색)                         |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 07](https://user-images.githubusercontent.com/84652513/154015437-09c6758d-5745-47d5-b602-8abb5f187f5e.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 12](https://user-images.githubusercontent.com/84652513/154015575-1b3a8a85-3e66-4c4a-97e0-68aa4221d024.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-15 at 16 41 15](https://user-images.githubusercontent.com/84652513/154015615-e242cdec-1931-4256-83f6-1d50ddcbea6e.png) |



###### 5. ViewController 연결하기(2022.02.17.)

|                        1단계(첫화면)                         |                        2단계(주황색)                         |                        3단계(빨간색)                         |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16 10 32](https://user-images.githubusercontent.com/84652513/154427482-ca6a5e82-993e-48c2-9194-40f9280c97f4.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16 10 36](https://user-images.githubusercontent.com/84652513/155093610-de9e4633-029f-4342-81b1-23f79d3939b1.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-17 at 16 10 42](https://user-images.githubusercontent.com/84652513/155093714-2b50878a-f119-4887-a134-fb354d1af8db.png) |

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



###### 7. 사진앨범 선택하기(20221.02.22)

|                            1단계                             |                            2단계                             |                            3단계                             |
| :----------------------------------------------------------: | :----------------------------------------------------------: | :----------------------------------------------------------: |
| ![Simulator Screen Shot - iPhone 13 mini - 2022-02-22 at 17 27 53](https://user-images.githubusercontent.com/84652513/155093172-19ffbc3a-21cf-4131-9bd7-e8e627117dd1.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-22 at 17 27 59](https://user-images.githubusercontent.com/84652513/155093270-9008889c-8d30-486d-8c98-7352241a2113.png) | ![Simulator Screen Shot - iPhone 13 mini - 2022-02-22 at 17 28 03](https://user-images.githubusercontent.com/84652513/155093353-2a8cc8d9-345f-4143-93df-5f5d7f851379.png) |



------

### 참조링크

- 깃학습(https://learngitbranching.js.org/?locale=ko)
- 뷰 상태변화(https://etst.tistory.com/90)
- UIImagePickerController(https://zeddios.tistory.com/125)

------

### 프로젝트 설명

