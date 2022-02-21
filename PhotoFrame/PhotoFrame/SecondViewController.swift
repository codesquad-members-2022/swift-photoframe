//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    let imagePickerController = UIImagePickerController()

    // MARK: - Properties
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    var nickName = "Cat"
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
        self.nextButton.addTarget(self, action: #selector(self.presentScene), for: .touchUpInside)
        self.configureImagePickerController()
        
        print("Secnd Tab View")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Secnd Tab View", #function)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Secnd Tab View", #function)
    }
    
    // MARK: - Methods
    func configureImagePickerController() {
        self.imagePickerController.delegate = self
        self.imagePickerController.allowsEditing = true
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let number = Int.random(in: 0...22)
        self.photoImageView.image = UIImage(named: String(format: "%.2d.jpg", number))
    }
    
    @IBAction func selectPhoto(_ sender: Any) {
        self.presentActionSheet()
    }
    
    func createAction(for type: UIImagePickerController.SourceType, title: String, style: UIAlertAction.Style? = .default) -> UIAlertAction? {
        guard UIImagePickerController.isSourceTypeAvailable(type) else {
            return nil
        }
        
        let action = UIAlertAction(title: title, style: .default) { action in
            self.imagePickerController.sourceType = type
            self.present(self.imagePickerController, animated: true, completion: nil)
        }
        
        return action
    }
    
    func presentActionSheet() {
        let alertController = UIAlertController(title: "옵션을 선택해주세요", message: "사진을 촬영하거나 불러올 수 있습니다.", preferredStyle: .actionSheet)
        
        if let action = self.createAction(for: .camera, title: "카메라") {
            alertController.addAction(action)
        }
        
        if let action = self.createAction(for: .photoLibrary, title: "앨범") {
            alertController.addAction(action)
        }
        
        alertController.addAction(UIAlertAction(title: "취소", style: .cancel, handler: { action in
            self.dismiss(animated: true, completion: nil)
        }))

        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwind(segue : UIStoryboardSegue) {
        print("Unwind Action")
        self.view.backgroundColor = (segue.source as! GreenViewController).backgroundColor
    }
    
    @objc func presentScene() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "BlueViewController") else { return }
        self.present(vc, animated: true, completion: nil)
    }
}

extension SecondViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else {
            self.dismiss(animated: true, completion: nil)
            return
        }
        
        self.photoImageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("Cancel")
        self.dismiss(animated: true, completion: nil)
    }
}
