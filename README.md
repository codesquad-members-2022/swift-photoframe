bb# swift-photoframe

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

1. View Controller1 추가 및 배경 색상 orange로 변경
2. scene1에 button 추가 및 '다음'으로 title 변경
3. scene1 -> View Controller 1 segue 추가
4. View Controller2 추가 및 배경 색상 tint로 변경
5. View Controller1 에 button 추가 및 '다음'으로 title 변경
6. View Controller1 -> View Controller 2 segue 추가

### 실행화면

ViewContoller 1

<img src="https://user-images.githubusercontent.com/78553659/153980850-b2a4cb08-c1f2-4bd6-be1e-57083a4c32f3.png"  width="300" height="600"/>
<br></br>
ViewController 2

<img src="https://user-images.githubusercontent.com/78553659/153980855-affba82f-d64e-467f-ab33-f4797d577785.png"  width="300" height="600"/>

---

<br></br>

## 5. ViewController 연결하기

### 과정

1. GreyView Controller1.swift 추가
2. View Controller1의 배경색상을 grey로 바꾸고 다음버튼 추가
3. View Controller1의 class 를 GreyView Controller로 변경
4. View Controller1의 다음버튼을 GreyView Controller에 IBAction으로 추가 후 dismiss구문 작성
5. View Controller2의 class 를 GreyView Controller로 변경
6. View Controller2의 다음버튼을 GreyView Controller의 IBAction과 연결

### 실행화면

ViewContoller 1

<img src="https://user-images.githubusercontent.com/78553659/153984839-24ec3305-4609-4650-a349-178de624ac19.png"  width="300" height="600"/>
<br></br>
ViewController 2

<img src="https://user-images.githubusercontent.com/78553659/153984845-cb88c314-a0ca-47a0-b59c-90dd3b084e85.png"  width="300" height="600"/>
