//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {

    let imagePicker = UIImagePickerController()
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrameImageView: UIImageView!
    @IBOutlet weak var nextImageButton: UIButton!
    @IBOutlet weak var selectButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        
        setPhotoImageView()
        setPhotoFrameImageView()
        setNextImageButton()
        setSelectButton()
    }
    
    let photoImageViewHeight: CGFloat = 240.0
    let photoImageViewWidth: CGFloat = 240.0
    let photoFrameImageViewHeight: CGFloat = 300.0
    let photoFrameImageViewWidth: CGFloat = 300.0
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        guard let randomNumber = (1...22).randomElement() else { return }
        let randomImage = String(format: "%02d.jpg", randomNumber)
        photoImageView.image = UIImage(named: randomImage)
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController()
        let library = UIAlertAction(title: "사진첩", style: .default) { (action) in self.openLibrary() }
        let camera = UIAlertAction(title: "카메라", style: .default) { (action) in self.openCamera() }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
    }
    
    func setPhotoImageView() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.contentMode = .scaleToFill
        
        photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true

        photoImageView.heightAnchor.constraint(equalToConstant: photoImageViewHeight).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: photoImageViewWidth).isActive = true
    }
    
    func setPhotoFrameImageView() {
        photoFrameImageView.translatesAutoresizingMaskIntoConstraints = false
        photoFrameImageView.image = UIImage(named: "photoframe-border.png")
        photoFrameImageView.contentMode = .scaleToFill
        
        photoFrameImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoFrameImageView.topAnchor.constraint(equalTo: photoImageView.topAnchor, constant: (photoImageViewHeight - photoFrameImageViewHeight) / 2).isActive = true
        
        photoFrameImageView.heightAnchor.constraint(equalToConstant: photoFrameImageViewHeight).isActive = true
        photoFrameImageView.widthAnchor.constraint(equalToConstant: photoFrameImageViewWidth).isActive = true
    }
    
    func setNextImageButton() {
        nextImageButton.translatesAutoresizingMaskIntoConstraints = false
        nextImageButton.setTitle("다음 이미지", for: .normal)
        nextImageButton.backgroundColor = .systemGray6
        nextImageButton.layer.cornerRadius = 10
        
        nextImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextImageButton.topAnchor.constraint(equalTo: photoFrameImageView.bottomAnchor, constant: 50).isActive = true
    }
    
    func setSelectButton() {
        selectButton.translatesAutoresizingMaskIntoConstraints = false
        selectButton.setTitle("선택", for: .normal)
        selectButton.backgroundColor = .systemGray6
        selectButton.layer.cornerRadius = 10
        
        selectButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        selectButton.topAnchor.constraint(equalTo: nextImageButton.bottomAnchor, constant: 50).isActive = true
    }
    
    func openLibrary() {
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func openCamera() {
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = true
        imagePicker.cameraDevice = .front
        self.present(imagePicker, animated: true, completion: nil)
    }
}



extension SecondViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage else { return }
        photoImageView.image = selectedImage
        imagePicker.dismiss(animated: true, completion: nil)
    }
}
