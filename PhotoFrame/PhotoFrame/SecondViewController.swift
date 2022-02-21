//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var testLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        let randomNumber = Int.random(in: 0...22)
        if randomNumber < 10 {
            self.photoImageView.image = UIImage(named: "0\(randomNumber).jpg")
        } else {
            self.photoImageView.image = UIImage(named: "\(randomNumber).jpg")
        }
    }
    
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
//        vc.allowsEditing = true
        present(vc, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.contentMode = .scaleAspectFit
        
        imagePicker.delegate = self
    }
}



extension SecondViewController: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = selectedImage
            self.dismiss(animated: true, completion: nil)
        }
    }
}

