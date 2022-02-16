bbbb# swift-photoframe

## 1. 프로젝트 생성하기

### 과정

1. 기존의 ViewController 삭제
2. TabBar Controller 추가하고 Initial ViewController 지정
3. 생성된 두개의 scene 중에 첫번째 scene의 class -> viewController 지정
4. viewController의 viewDidLoad 함수에 코드 추가 및 실행

### 실행화면

<img src="https://user-images.githubusercontent.com/78553659/153794276-405277b2-8d1c-4a49-be92-91cded9a6614.png"  width="400" height="50"/>

---

<br></br>

## 2. IBOutlet

### 과정

1. 기존에 First View lable이 없어서 label 추가
2. Assistant 모드 변경후 viewcontroller에 IBOutlet 연결
3. viewDidLoad 함수 안에 label 값 변경
4. 시뮬레이터에서 변경사항 확인

### 검색 키워드

UIlabel property

### 실행화면

<img src="https://user-images.githubusercontent.com/78553659/153851665-5628b4dd-a609-4851-b999-2b7ea47f6d3f.png"  width="300" height="600"/>

---

<br></br>

## 3. IBAction

### 과정

1. UIButton 추가
2. IBAction 연결
3. nextButtonTouched 구현

### 실행화면

<img src="https://user-images.githubusercontent.com/78553659/153863324-4ee040b0-b9d1-4d11-ba9f-386feeee1e4a.png"  width="300" height="600"/>

---

<br></br>

## 4. Segue 연결하기

### 과정

1. scene2 추가 및 배경 색상 orange로 변경
2. scene1에 button 추가 및 '다음'으로 title 변경
3. scene1 -> scene2 segue 추가
4. scene3 추가 및 배경 색상 tint로 변경
5. scene2 에 button 추가 및 '다음'으로 title 변경
6. scene2 -> View Controller 2 segue 추가

### 실행화면

scene2

<img src="https://user-images.githubusercontent.com/78553659/153980850-b2a4cb08-c1f2-4bd6-be1e-57083a4c32f3.png"  width="300" height="600"/>
<br></br>
scene3

<img src="https://user-images.githubusercontent.com/78553659/153980855-affba82f-d64e-467f-ab33-f4797d577785.png"  width="300" height="600"/>

---

<br></br>

## 5. ViewController 연결하기

### 과정

1. GreyView Controller.swift 추가
2. scene2의 배경색상을 grey로 바꾸고 다음버튼 추가
3. scene2의 class 를 GreyView Controller로 변경
4. scene2의 다음버튼을 GreyView Controller에 IBAction으로 추가 후 dismiss구문 작성
5. scene3의 class 를 GreyView Controller로 변경
6. scene3의 다음버튼을 GreyView Controller의 IBAction과 연결
7. GreyView Controller 에 viewWillAppear, viewDidAppear,viewWillDisappear,viewDidDisappear 콜백함수 추가
8. scene2 -> scene3 segue 삭제

### 실행화면

scene2

<img src="https://user-images.githubusercontent.com/78553659/153984839-24ec3305-4609-4650-a349-178de624ac19.png"  width="300" height="600"/>
<br></br>
scene3

<img src="https://user-images.githubusercontent.com/78553659/153984845-cb88c314-a0ca-47a0-b59c-90dd3b084e85.png"  width="300" height="600"/>
<br></br>
콜백

<img src="https://user-images.githubusercontent.com/78553659/154001216-204bb3b5-6c71-4956-aca1-8a3a30effe8e.png"  width="600" height="600"/>

---

<br></br>

## 6. container ViewController 활용하기

### 과정

1. scene1에 navigation controller 추가
2. 닫기버튼 코드 수정
3. 기존에 scene3 도 scene2와 동일하게 greyViewController를 상속받고있었지만, tintViewController 생성
4. scene2 -> scene 3 이동 segue추가, 5단계에서 IBAction 으로 구현한 화면이동 삭제
   - 닫기버튼 코드 변경후 기존처럼 닫기버튼으로 modal이 닫히지 않아 scene2 -> scene3에 segue 추가
   - segue 추가하니 navigation bar 의 back 버튼 활성화
   - scene2 -> scene3 이동시 scene3 (modal) 생성후 navigation 을 이동한 scene3 stack
   - 콜백함수도 2번씩 실행

<br></br>

### IBAction 삭제전 실행화면

Modal 뒤에 navigation stack 이 보이는 화면

<img src="https://user-images.githubusercontent.com/78553659/154016362-ca94fdbd-9ab6-430a-8c1f-cd847455e9bb.png"  width="300" height="600"/>

Modal 닫은 화면

<img src="https://user-images.githubusercontent.com/78553659/154016381-830dfc64-6938-405e-b8c2-8f2cac526671.png"  width="300" height="600"/>

scene2 -> scene3 이동시 콜백
<img src="https://user-images.githubusercontent.com/78553659/154017026-6da68639-48f2-4cef-93a9-344d18e2f50a.png"  width="600" height="300"/>

<br></br>

### IBAction 삭제후 실행화면

scene2

<img src="https://user-images.githubusercontent.com/78553659/154017208-1ea79c81-414b-4c12-8096-12d8a42f002f.png"  width="300" height="600"/>
<br></br>
scene3

<img src="https://user-images.githubusercontent.com/78553659/154017256-dc84363e-a202-43f4-9868-1054558b808d.png"  width="300" height="600"/>
<br></br>



## 7. 다른 화면 연결하기

### 과정

1. Scene2에 ImageView 및 라벨 추가
2. CallBackMethod class 명 FlowOfViewController로 변경
3. Scene2의 ImageView 를 ViewController 에 photoImageView outlet으로 연결
4. 프로젝트에 Demo Images 추가
5. ViewController의 nextImageButtonTouched IBAction에 랜덤으로 숫자를 선택하는 로직 추가
6. scene1, scene2 label 글꼴, 위치 조정
7. UIImageView 의 content mode를 여러가지로 바꿔보며 확인

#### 학습내용

- UIImageView 와 UIImage에 대해서 Apple 공식문서로 학습을 진행 

- 문서에 크기조절 관련하여 ``contetMode`` 와 ``scaleAspectFit``, ``scaleAspectFill`` 이 많이 언급되어  xcode에서 직업 content를 바꿔보면서 학습
- 원본과 비율이 비슷한 형식은 Aspect fit 이었고, UIImageView 의 크기에 맞게 리사이징되는 형식은 Scale To Fill 이였다.
- 그외에 Redraw, bottom, right, left 등등 여러가지가 있지만, 원본이미지를 어떤 기준으로 리사이징을 진행하는지 머리속에 그려지지 않아 추가로 학습을 할 예정이다.

### 실행화면

원본

<img src="https://user-images.githubusercontent.com/78553659/154233233-5f1a753e-5e09-4836-9470-1c7c6798af31.jpg"/>





Aspect Fit

<img src="https://user-images.githubusercontent.com/78553659/154231372-b8c934d5-48bb-4b21-8f35-7ea467956dcf.png"  width="300" height="600"/>



Scale To Fill

<img src="https://user-images.githubusercontent.com/78553659/154232150-823919dc-53e5-4500-9400-2558fa877ba7.png"  width="300" height="600"/>



Aspect Fill

<img src="https://user-images.githubusercontent.com/78553659/154232705-9660354e-8249-4765-ada8-acd59130f01c.png"  width="300" height="600"/>

Redraw 

<img src="https://user-images.githubusercontent.com/78553659/154232866-add07063-4844-4774-ab01-f6ae6e88669f.png"  width="300" height="600"/>



Left

<img src="https://user-images.githubusercontent.com/78553659/154232502-a40f1c3e-67c0-45d4-a092-39bfdf105508.png"  width="300" height="600"/>
