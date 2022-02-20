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
        imagePickerController.delegate = self
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        if imageNum == 22 { imageNum = 0}
        self.photoImageView.image = UIImage(named: "\(String(format: "%02d", imageNum+1)).jpg")
        self.photoImageView.contentMode = .scaleAspectFill
        imageNum += 1
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
//카메라 사용가능한지 체크
//        guard UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) else { return }
//
//        imagePickerController.sourceType = .savedPhotosAlbum
//
//        //imagePickerController.allowsEditing = true // 촬영 후 편집할 수 있는 부분이 나온다.
//
//        present(imagePickerController, animated: true, completion: nil)

        let alert =  UIAlertController(title: "사진선택", message: "원하는 사진을 선택해주세요", preferredStyle: .actionSheet)
        let openAlbum = UIAlertAction(title: "사진앨범", style: .default) {
            (action) in self.openAlbum()
        }
        alert.addAction(openAlbum)
        present(alert, animated: true, completion: nil)
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
            print(info)
        }
        dismiss(animated: true, completion: nil)
    }
}
