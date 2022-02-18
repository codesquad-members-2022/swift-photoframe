//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/18.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrameView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoFrameView.layer.zPosition = 1.0 //z의 기본값은 0
    }
    
    //선택 버튼 클릭.
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        let alertViewController = UIAlertController(
            title: "원하는 방법을 골라주세요",
            message: "골라골라",
            preferredStyle: .actionSheet
        )
        //앨범 선택시
        let photoLibary = UIAlertAction(title: "앨범", style: .default) { _ in
            self.makeImagePickerController()
        }
        
        //카메라 선택시
        let camera = UIAlertAction(title: "카메라", style: .default) { _ in
            print("카메라는 아직..")
        }
        
        //alertViewController에 Action들 Add
        alertViewController.addAction(photoLibary)
        alertViewController.addAction(camera)
        
        present(alertViewController,animated: true)
    }
    
    
    //다음 버튼 클릭시.
    @IBAction func nextImgaeButtonTouched(_ sender: UIButton) {
        let randomPhotoID = PhotoID.randomID //Static으로 PhotoID타입 자체에 randomID라는 associated Value를 추가함으로써 코드의 가독성을 높여보았다.
        let imageExtension = "jpg"
        self.photoImageView.contentMode = .scaleAspectFill //비율을 유지하면서 꽉채우게.
        
        //현재 이미지. 값이 없으면 nil값을 배출함. nil값을 검사해야하기 때문에 옵셔널 바인딩을 해주지 않음.
        let currentImage = self.photoImageView.image
        
        self.photoImageView.image = UIImage(named: "\(randomPhotoID).\(imageExtension)") //이미지를 바꾼다.
        
        //버튼을 탭했는데도 이미지가 바뀌지 않고 nil이라면 사용가능한 Photo가 없는 것.
        if currentImage == nil {
            print("사용가능한 Photo가 없습니다.")
        }
        
        //바뀔 이미지
        guard let nextImage = UIImage(named: "\(randomPhotoID).\(imageExtension)") else { return  } //UIImage옵셔널 값을 리턴하기 때문에 바인딩 해준다.
        
        //버튼을 탭했는데 이미지가 바뀌지 않을때
        if currentImage != nil && currentImage!.isEqual(nextImage) { //캐시된 동일한 데이터를 이용해 이미지를 만들어도 다를 수 있기때문에 이렇게 사용한다. Ex) currentImage == nextImage (X)
            print("이전 사진과 똑같은 이미지입니다.")
        }
    }
    
    
    //actionSheet에서 앨범 선택시, ImagePickeController를 만들어서 보여준다
    func makeImagePickerController() {
        let imagePickerController = UIImagePickerController() //ImagePicker생성
        
        //delgate를 선언해준다.
        //이를 하기 위해서 UIImagePickerControllerDelegate , UINavigationControllerDelegate를 프로토콜로 채택해야한다. - extenstion으로 빼줌.
        imagePickerController.delegate = self
        guard UIImagePickerController.isSourceTypeAvailable(.photoLibrary) else { return } // 기기호환성을 체크한다.
        imagePickerController.sourceType = .photoLibrary //카메라와 앨범타입이 있다.

        imagePickerController.allowsEditing = true //선택한 사진 편집 가능여부
        self.present(imagePickerController, animated: true, completion: nil)
    }
    
    
}

//ImagePicker를 다루기 위한 Delegate
extension PhotoViewController: UIImagePickerControllerDelegate , UINavigationControllerDelegate  {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(info)
        let pickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage //가져온 이미지
        self.photoImageView.contentMode = .scaleAspectFill //비율을 유지하면 꽉차게 만든다.
        self.photoImageView.image = pickedImage //image를 넣는다
        dismiss(animated: true, completion: nil) //화면이 내려가지 않기 때문에 추가해준다.
    }
}
