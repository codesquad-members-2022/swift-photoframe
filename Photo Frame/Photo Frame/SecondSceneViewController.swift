//
//  SecondSceneViewController.swift
//  Photo Frame
//
//  Created by Jihee hwang on 2022/02/20.
//

import UIKit

class SecondSceneViewController: UIViewController {
    let imagePicker = UIImagePickerController() // 선언해야 사용가능
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var secondDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondDescription.textColor = .darkGray
        self.secondDescription.text = "Jihee's Album"
        
        // 채택
        imagePicker.delegate = self
    }

    // 선택 버튼
    @IBAction func selectButtonTouched(_ sender: UIButton) {
        let alert = UIAlertController(title: "사진 선택", message: "사진을 가져올 방법을 선택해주세요", preferredStyle: .actionSheet)
        
        let album = UIAlertAction(title: "사진 앨범", style: .default) {
            (album) in self.openAlbum()
        }
        let camera = UIAlertAction(title: "카메라", style: .default) {
            (camera) in self.openCamera()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        
        // 액션 추가해줘야 함
        alert.addAction(album)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true)
        
    }
    // 앨범
    func openAlbum() {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    // 카메라
    func openCamera() {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true)
    }
    
    // 다음 버튼
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.image = UIImage(named: "20.jpg")
    }
    
}

extension SecondSceneViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  /// 선택한 이미지를 photoImageView에 나오도록 하는 함수
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage{
            photoImageView.image = image
            print(info)
        }
        // 메모리에서 해제 (dismiss를 구현하지 않으면 imagePickerController가 사라지지 않음)
        dismiss(animated: true, completion: nil)
    }
}
