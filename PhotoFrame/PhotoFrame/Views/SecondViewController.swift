//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/15.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    var imageNum = 1
    private let imagePickerController = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "\(String(format: "%02d", imageNum)).jpg")
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        if imageNum == 22 { imageNum = 0}
        self.photoImageView.image = UIImage(named: "\(String(format: "%02d", imageNum+1)).jpg")
        self.photoImageView.contentMode = .scaleAspectFill
        imageNum += 1
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        //카메라 사용가능한지 체크
        guard UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) else { return }
        imagePickerController.sourceType = .savedPhotosAlbum
            
            //imagePickerController.allowsEditing = true // 촬영 후 편집할 수 있는 부분이 나온다.
            
        present(imagePickerController, animated: true, completion: nil)
        
    }
}
