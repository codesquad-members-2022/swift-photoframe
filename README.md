# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## STEP4 

### [요구 사항]
- [X] Main 스토리보드에서 First Scene 옆에 ViewController를 드래그해서 새로운 Scene을 추가한다.
- [X] 앞 단계에서 추가한 [다음]버튼을 선택하고 새로 추가한 Scene에 연결한다.
- [X] Action Segue 의 `Show` 를 선택한다. 
- [X] 새로 추가한 Scene 속성에서 배경 색상(Background Color)을 원하는 색상으로 변경하고, `다음` 버튼을 눌렀을때 다음 화면이 나타나는지 확인한다. 
- [X] 똑같은 방법으로 하나의 화면을 더 생성하고 다음버튼으로 연결해준다 
- [X] 화면의 배경색을 다르게한다. 

### [추가학습거리]
- 화면 전환 방법은 무었이 있나? 
- 1. ViewController 의 Content View 를 바꾼다. 
- 2. ViewController 가 다른 ViewController 를 호출한다. 
- 3. NavigationController 를 사용하여 화면전환. 
- 4. 화면전환용 객체 Segue 를 사용. 

- Seque에 액션에 있는 여러 항목들은 어떤 효과가있나? 
- 1. Show 
   - Container View Controlloer 의 Navigation Controller 가 설정되어 있을때는 목적지 뷰 컨트롤러를 내비게이션 스텍에 쌓는다. 쌓인 화면의 좌측 상단에는 뒤로가기 버튼이 생긴다. (만약 Navigation Controller 가 아니라면 modal)
   
   <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154502989-d311ad56-9cb3-4fc7-aa5a-02249337678b.png" width="350" height="250"> 
   </p>

- 2. Show detail 
   - UISplitViewController 일경우, 화면이 나누어진 뷰에서 보조 뷰의 컨트롤러를 다른 컨트롤러로 대체한다. (만약 Navigation Controller 가 아니라면 modal)
   
   <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154502686-1e217fd2-0c89-4639-aa94-d2d38472d30d.png" width="300" height="250"> 
   </p>
- 3. Modal 
   - 뷰 컨트롤러를 화면 하단에서 상단으로 끌어 올리며 모달을 만듦. (트렌지션기능도 있음)
   ![show](https://user-images.githubusercontent.com/36659877/154501797-fa01e4bc-8619-4eed-921f-371c3363cf05.gif)
   
- 4. Popover 
   <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154501550-1c301275-c41e-481a-944d-61ceed0b3a01.png" width="150" height="250"> 
   </p>


