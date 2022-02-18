//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImgaeView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //다음 버튼 클릭시.
    @IBAction func nextImgaeButtonTouched(_ sender: UIButton) {
        guard let randomPhotoID = PhotoID.allCases.randomElement()?.rawValue else { return } //random 메서드가 옵셔널이기 때문에 옵셔널 바인딩을 해주었다.
        let imageExtension = "jpg"
        self.photoImgaeView.image = UIImage(named: "\(randomPhotoID).\(imageExtension)")
    }
    
}


