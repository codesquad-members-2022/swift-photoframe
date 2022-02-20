//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/15.
//

import UIKit

class SecondViewController: UIViewController{

    @IBOutlet weak var photoImageView: UIImageView!
    private let imagePickerController = UIImagePickerController()
    var imageNum = 1

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
        let alert =  UIAlertController(title: "PhotoFrame 이 사진앨범 에 접근하려합니다", message: nil, preferredStyle: .alert)
        let openAlbum = UIAlertAction(title: "거부", style: .cancel)
        let closeAlert = UIAlertAction(title: "허용", style: .default){
            (action) in self.openAlbum()
        }
        alert.addAction(openAlbum)
        alert.addAction(closeAlert)
        present(alert, animated: true, completion: nil)
        imagePickerController.delegate = self
    }
    
    func openAlbum() {
        imagePickerController.sourceType = .photoLibrary
        present(imagePickerController, animated: false, completion: nil)
   }
    
    
}

extension SecondViewController: UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
