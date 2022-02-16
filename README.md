# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## Step 3 - IBAction

## 기능 요구사항

- [X] 사진액자 - IBOutlet 요구사항을 구현한 상태로 시작한다.
- [X] First Scene에 버튼(UIButton)을 추가하고 IBAction으로 연결한다.
- [X] 연결한 액션에 대한 메서드를 구현한다.
- [X] 실행하고 버튼을 터치하기 이전/이후 화면을 캡처해서 readme.md 파일에 포함한다.

- `다음` 버튼 터치전

![image](https://user-images.githubusercontent.com/36659877/154191709-08e53c4d-c04b-408f-8438-131f3cb49d6e.png)

- `다음` 버튼 터치후

![image](https://user-images.githubusercontent.com/36659877/154191760-ac213261-a30e-4042-815e-885d5be6b646.png)

- UIControl 
  사용자와 어플 간의 상호작용을 도와주는 클래스로써 UIButton, UISilder 등 의 컴포넌트를 사용하여 각종의 이벤트를 처리한다. 이벤트의 종류는 크게 touch, motion, press, remote control 등이 있고, target-action 이라는 매커니즘을 활용하여 사용자와 어플간의 소통을 돕는다. 
  
  어떠한 이벤트의 처리를 일일히 코드로 트래킹 하는것대신 action 메소드를 작성하여 이벤트를 처리해주는식으로   Target-action 매커니즘은 앱의 control 코드를 간소화시켜준다 
 
 - UIButton 
   - UIButton -> UIControl -> UIView -> UIResponder -> NSobject 와 같은 클래스 하이라키를 가지고 있다. 
   - 스토리보드를 이용해서 Control 컴포넌트를 만들면 IB 를 통하여 이 버튼이 사용자의 어떠한 이벤트에 반응할것인지 선택을 해줄수있다.
   - 사용자가 control 를 설정해준 이벤트 로 trigger 하면, control 은 그에 맞는 Action 을 실행시키는데 이 액션을 IBAction 키워드를 통해서 설정해줄수 있다.       
  
  
  
  
   


- IBOutlet 과 IBAction 는 어떤 관계가 있는지 찾아보았습니다. 
- IBAction 은 사용자에 의해서 어떠한 event (터치 나 음성 등 으로인한 input) 가 IBAction 과 연결된 컴포넌트를 통해서 들어올때 IBAction 의 메소드를 통해 이벤트를 처리해준다 라고 이해를 했습니다. 
- Event 의 종류는 크게 터치, 프레스, 모션, 리모트 컨트롤 등이 있습니다.
- IBAction 메소드안에 쓰여진 처리과정들중 사용자에게 입력에대한 결과를 나타내주고 싶을때 IBOutlet 에 연결된 컴포넌트들을 통해서 화면상 결과 를 나타내줄수 있다고 이해 했습니다. 
