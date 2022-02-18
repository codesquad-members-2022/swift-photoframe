//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/18.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //선택 버튼 클릯.
    @IBAction func selectButtonTouched(_ sender: UIButton) {
    
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
    
}


