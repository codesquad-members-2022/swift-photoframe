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
    
    // MARK: - Configurations
    func configureImagePickerController() {
        self.imagePickerController.delegate = self
        self.imagePickerController.allowsEditing = true
    }
    
    // MARK: - Segue
    @objc func presentScene() {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "BlueViewController") else { return }
        self.present(vc, animated: true, completion: nil)
    }
    
    // MARK: - IBActions
    @IBAction func unwind(segue : UIStoryboardSegue) {
        self.view.backgroundColor = (segue.source as! GreenViewController).backgroundColor
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let number = Int.random(in: 0...22)
        self.photoImageView.image = UIImage(named: String(format: "%.2d.jpg", number))
    }
    
    @IBAction func selectPhoto(_ sender: Any) {
        self.presentActionSheet()
    }
    
    // MARK: - Permision related methods
    func requestPermission(for type: AVMediaType) {
        switch AVCaptureDevice.authorizationStatus(for: type) {
        case .authorized:
            self.handlePersmissionGranted()
        case .notDetermined:
            self.requestPersmission(for: type)
        case .denied:
            self.handlePermissionDenied()
            return
        case .restricted:
            self.handlePermission()
            return
        @unknown default:
            self.handlePermission()
        }
    }
    
    func handlePersmissionGranted() {
        self.imagePickerController.sourceType = .camera
        self.present(self.imagePickerController, animated: true, completion: nil)
    }
    
    func requestPersmission(for type: AVMediaType) {
        AVCaptureDevice.requestAccess(for: type) { granted in
            if granted {
                self.handlePersmissionGranted()
            } else {
                self.handlePermissionDenied()
            }
        }
    }
    
    func handlePermissionDenied() {
        let alertController = UIAlertController(title: "카메라 접근 권한 필요", message: "Setting 으로 이동해 카메라 접근 권한을 동의해주세요.", preferredStyle: .alert)
        
        alertController.addAction(UIAlertAction(title: "취소", style: .default))
        alertController.addAction(UIAlertAction(title: "이동", style: .default, handler: { action in
            self.moveToSettingForPermission()
        }))
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    func handlePermission() {
        self.alert(message: "카메라 접근 권한", with: "카메라 기능이 제한된 기기입니다.")
    }
    
    func moveToSettingForPermission() {
        guard let settingsUrl = URL(string: UIApplication.openSettingsURLString) else { return }
        
        if UIApplication.shared.canOpenURL(settingsUrl) {
            UIApplication.shared.open(settingsUrl)
        }
    }
    
    // MARK: - Other methods
    func presentActionSheet() {
        let alertController = UIAlertController(title: "옵션을 선택해주세요", message: "사진을 촬영하거나 불러올 수 있습니다.", preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let action = UIAlertAction(title: "카메라", style: .default) { action in
                self.requestPermission(for: .video)
            }
            
            alertController.addAction(action)
        }
        
        if let action = self.createAction(for: .photoLibrary, title: "포토 라이브러리") {
            alertController.addAction(action)
        }
        
        if let action = self.createAction(for: .savedPhotosAlbum, title: "포토 앨범") {
            alertController.addAction(action)
        }
        
        alertController.addAction(UIAlertAction(title: "취소", style: .cancel))
        
        self.present(alertController, animated: true, completion: nil)
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
    
    func alert(message title: String, with description: String) {
        let alertController = UIAlertController(title: title, message: description, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "확인", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
    
}

extension SecondViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else {
            self.dismiss(animated: true, completion: nil)
            self.alert(message: "사진 불러오기 실패", with: "유효한 이미지가 아닙니다.")
            return
        }
        
        self.photoImageView.image = image
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
        self.alert(message: "사진 불러오기 취소", with: "사진 불러오기를 취소하였습니다.")
    }
}
