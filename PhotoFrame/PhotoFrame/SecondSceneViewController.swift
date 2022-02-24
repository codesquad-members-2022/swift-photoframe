//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/23.
//

import UIKit

class SecondSceneViewController: UIViewController {
    
    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
//        self.show(imagePicker, sender: nil)
        self.present(imagePicker, animated: true, completion: nil)
    }
}

extension SecondSceneViewController: UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        self.photoImageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
    }
}

extension SecondSceneViewController: UINavigationControllerDelegate {
    
}
