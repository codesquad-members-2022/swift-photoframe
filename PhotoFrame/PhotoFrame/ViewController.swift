//
//  ViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/14.
//

import UIKit
class PrintViewContollerState :UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override  func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
}
class ViewController: PrintViewContollerState {
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoLabel: UILabel!
    
    let imagePickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePickerController.delegate = self
        self.photoLabel.text = "dale's Photo Album"
        self.photoLabel.textColor = .blue
        self.photoLabel.backgroundColor = .yellow
        self.photoLabel.font.withSize(30)
        self.photoLabel.textAlignment = .center
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.red
        self.photoLabel.alpha = 0.5
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        guard let randomInt = (1...22).randomElement() else {return}
        let randomString = String.init(format: "%02d", arguments: [randomInt])
        self.photoImageView.image = UIImage(named: "\(randomString).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let pickerAlert = UIAlertController(title: "사진 가져오기", message: "", preferredStyle: .actionSheet )
        let libraryOption = UIAlertAction(title: "앨범", style: .default){
            _ in self.present(self.imagePickerController, animated: true)
        }
        let cancelOption = UIAlertAction(title: "취소", style: .cancel)
        pickerAlert.addAction(libraryOption)
        pickerAlert.addAction(cancelOption)
        present(pickerAlert, animated: true)
    }
}

extension ViewController : UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = image
        }
        dismiss(animated: true)
    }
}

