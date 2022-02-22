//
//  SecondViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePickerController = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrame: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView?.layer.zPosition = 999
        imagePickerController.delegate = self
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let photoRandomNumber = arc4random_uniform(22)+1
        let tempNumber = String(format: "%02d", photoRandomNumber)+".jpg"
        self.photoImageView.image = UIImage(named: tempNumber)
    }

    @IBAction func selectButtonTouched(_ sender: Any) {
        let type = UIImagePickerController.SourceType.photoLibrary
        guard UIImagePickerController.isSourceTypeAvailable(type) else { return }
        
        imagePickerController.sourceType = type
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}
