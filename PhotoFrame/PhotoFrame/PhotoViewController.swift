//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by 최예주 on 2022/02/21.
//

import UIKit

class PhotoViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet var photoImageView: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.delegate = self
        
        photoImageView.contentMode = .scaleAspectFill
        if let image = UIImage(named: "Demo Images/01.jpg") {
            photoImageView.image = image
        }else{
            photoImageView.image = UIImage(systemName: "questionmark.square")
        }
        
        
    }
    

    @IBAction func nextImageButtonTouched(_ sender: Any) {

        let randomImageNumber = String.init(format: "%02d", Int.random(in: 1...22))
        
        if let image = UIImage(named: "Demo Images/\(randomImageNumber).jpg"){
            self.photoImageView.image = image
        }else{
            photoImageView.image = UIImage(systemName: "questionmark.square")
        }
        
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        
        picker.sourceType = .photoLibrary
        self.present(picker, animated: true, completion:  nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
