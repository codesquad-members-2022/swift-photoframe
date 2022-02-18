//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //다음 버튼 클릭시.
    @IBAction func nextImgaeButtonTouched(_ sender: UIButton) {
        let randomPhotoID = PhotoID.randomID //Static으로 PhotoID타입 자체에 randomID라는 associated Value를 추가함으로써 코드의 가독성을 높여보았다.
        let imageExtension = "jpg"
        self.photoImageView.contentMode = .scaleAspectFill //비율을 유지하면서 꽉채우게.
        self.photoImageView.image = UIImage(named: "\(randomPhotoID).\(imageExtension)")
    }
    
}


