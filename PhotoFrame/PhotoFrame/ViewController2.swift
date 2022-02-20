//
//  ViewController2.swift
//  PhotoFrame
//
//  Created by YEONGJIN JANG on 2022/02/14.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nextButtonTouched(self.nextButton)
        picker.delegate = self
    }
    
    let picker = UIImagePickerController()

    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let random_number: Int = Int.random(in: 1...22)
        if random_number < 10 {
            self.photoImageView.image = UIImage(named: "0\(random_number).jpg")
        } else {
            self.photoImageView.image = UIImage(named: "\(random_number).jpg")
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = image
            print(info)
        }
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let type = UIImagePickerController.SourceType.photoLibrary
        guard UIImagePickerController.isSourceTypeAvailable(type) else { return } // 현재 기기에서 가능한지 확인하는 부분
        
        picker.sourceType = type
        present(picker, animated: true, completion: nil)
    }
}

extension ViewController2 : UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
}
