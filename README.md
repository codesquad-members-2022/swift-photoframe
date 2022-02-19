# swift-photoframe <iOS 포토프레임 프로젝트 저장소> 

## STEP7

## [요구 사항]
- [X] 탭바의 두 번째 화면 (Second Scene) 디자인을 변경하고 액자 앱을 동작을 구현한다.
- [X] 실행하고 새로운 화면을 캡처해서 readme.md 파일에 포함한다.
 
### Bounds and Frame

- Frame : its position relative to its superview 
- Bounds : Relative to its coordinate system
  <p align="center">
   <img src="https://user-images.githubusercontent.com/36659877/154794417-5164a125-2da3-4dab-8632-0ebdd70e8e85.png" width="550" height="350"> 
   </p>
   
- Storyboard 에서 x,y, 좌표와 subView 의 크기 설정을 해주면 Bounds 는 그 이 값을 현재 자신의 좌표값으로 설정한다. 따라서 bounds = (0,0,240,240) 일 때 처음 설정해주었던 좌표로 이미지위치를 설정함.
- Frame 은 superView 에 상대적인 좌표를 설정해주는데, 이 예제에서 중앙에 이미지를 놓고싶다면 frame = (87,192,240,240) 으로 설정해주어야한다.

### Scale 

  <p align="center">
     <img src="https://user-images.githubusercontent.com/36659877/154796103-26024a29-50e6-4a07-a29e-5426247e5bec.png" width="550" height="350"> 
   </p>

**Scale To Fill (기본값)** 

  - 원본 비율을 무시하고 Image View 의 Width, Height 의 크기에 맞춰서 이미지를 강제로 늘려 맞춘다. 

**Aspect To Fit**

  - 원본 비율을 유지하면서 선언된 ImageView 밖을 넘지 않는 선에서 최대크기. 

  - 만일 비율이 맞지 않을시 내부에 여백이 생긴다. 

**Aspect To Fill**

  - 원본 비율 유지, 여백없이 딱맞게 사이즈 조정됨. 

  - Attribute Inspector → Clip to Bounds 를 체크하면 이미지가 ImageView 영역에 맞게 짤리고, 체크 해제하면 ImageView 영역에 맞게 채워진 상태로 이미지가 짤리지 않도 출력된다. → 즉 이미지가 ImageView 를 벗어나게된다.
  
  
  
### [앱 실행]

![step7](https://user-images.githubusercontent.com/36659877/154800273-fef680ee-8597-4205-9e7c-d3a96ff8007f.gif)

  
  
## [추가학습거리]
**UIImage 와 UIImageView 의 차이점** 
- **`UIImage`** 오브젝트는 는 하나의 이미지에 대한 데이터를(JPEG,PNG..) 가지고 있고 Immutable 이다.
- **`UIImageView`** 는 UIImage 를 프로퍼티로 가지고 이를 보여주기위한 `custom view` 이다.

**UIImageView 의 속성** 

### [Image Scaling] 
- 이미지 뷰는 `contentMode` 프로퍼티 와 이미지 형태를 사용해서 이미지를 어떻게 보여줄지 결정한다. 
- 이미지의 사이즈는 지정된 이미지 뷰 사이즈에 딱 맞는게 좋지만 이미지 뷰는 이미지를 사이즈에 맞게끔 스케일 이 가능하다. 
- 만약 이미지 뷰사이즈 자체가 바뀌면 자동으로 안에 있는 이미지들도 같이 스케일이 된다. 
- cap insets 의 유무와 사이즈 변경 가능하고 불가능한 이미지에 따라 스케일링 방식이 달라진다. 


### [이미지 투명도]
- 이미지 의 투명도는 이미지 뷰의 투명도와 합쳐진 형태이다. 
- 이미지뷰의 **`isOpaque`** (불투명) 프로퍼티가 `true` 일시, 이미지 픽셀들이 이미지뷰의 배경색과 합쳐지면서 이미지 뷰의 `alpha` 프로퍼티는 무시된다. 
- 이미지뷰의 **`isOpaque`** (불투명) 프로퍼티가 `false` 일시, 픽셀 하나하나의 alpha 값이 이미지 뷰의 alpha 값과 곱해지고 그 결과값이 투명도 로 쓰인다. (Default alpha value is 1.0)
  
### [이미지 애니메이션]
- UIImage 배열을 만든후 `animationImages` 프로퍼티에 할당해주고, 이 프로퍼티 안에 있는 메소드를 사용하여 애니메이션의 시작과 멈춤 등 을 설정해줄수 있다.  

### [터치 반응] 
- Image View 는 기본적으로 유저 이벤트를 무시한다. 
- 만약 이미지를 통해서 사용자의 인풋을 받아 들이고 싶다면 `isUserInteractionEnabled` 프로퍼티를 `true` 로 놓아야한다. 
 
### [Interface Builder Atrributes]
- 아래 테이블 내용은 Interface Builder 로 Image View 의 속성을 관리할수 있는 리스트이다. 
|**Attribute**|**Discussion**|
|--|--|
|Image|The image to display. You can specify any image in your Xcode project, including standalone images and those in image assets. To set this attribute programmatically, use the image or animationImages property.|
|Highlighted|The image to display when the image view is highlighted. To set this attribute programmatically, use the highlightedImage or highlightedAnimationImages property.|
|State|The initial state of the image. Use this attribute to mark the image as highlighted. To set this attribute programmatically, use the isHighlighted property.|   
  
