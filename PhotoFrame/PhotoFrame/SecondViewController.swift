//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoFrameView: UIImageView!
    
    let picker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomInt = Int.random(in: 1...22)
        var jpgName = ""
        if randomInt < 10 {
            jpgName = "0" + String(randomInt) + ".jpg"
        } else {
            jpgName = String(randomInt) + ".jpg"
        }
        self.photoImageView.image = UIImage(named: jpgName)
        
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .alert)
        let album = UIAlertAction(title: "사진 앨범", style: .default) { (action) in
            self.openAlbum()
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(album)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    func openAlbum() {
        picker.sourceType = .photoLibrary
        present(picker, animated: true, completion: nil)
    }
}

extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) { // 미디어 선택이 끝나면 할 일 지정. info가 선택된 미디어임.
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            photoImageView.image = image
        }
        
        dismiss(animated: true, completion: nil)
    }
}
