//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Jason on 2022/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextImageButtonTouched: UIButton!
    @IBOutlet weak var selectButtonTouched: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        guard let randomNum = (1...22).randomElement() else { return }
        let showRandomImage = String(format: "%0.2d.jpg", randomNum)
        photoImageView.image = UIImage(named: showRandomImage)
        
    }
    
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        let myPicker = UIImagePickerController()
        myPicker.sourceType = .photoLibrary
        myPicker.allowsEditing = true
        myPicker.delegate = self
        self.present(myPicker, animated: true)
    }
    
}
extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        self.dismiss(animated: true)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        self.photoImageView.image = selectedImage
        picker.dismiss(animated: true, completion: nil)
    }
}

