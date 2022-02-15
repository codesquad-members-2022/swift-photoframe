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
