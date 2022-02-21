import UIKit
import AVFoundation
import Photos

class YellowViewController: UIViewController {

    let imagePicker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!

    let albumPermission = PHPhotoLibrary.authorizationStatus(for: .readWrite)
    var cameraPermission = AVCaptureDevice.authorizationStatus(for: .video)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoImageView.layer.zPosition = 1
        self.photoImageView.image = UIImage(named: "01.jpg")
        imagePicker.delegate = self
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let num = Int.random(in: 1..<22)
        self.photoImageView.image = UIImage(named: "\(num > 10 ? "" : "0")\(num).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let alert = UIAlertController(title: "사진을 어디서 가져올까요?", message: "", preferredStyle: .actionSheet)

        let library = UIAlertAction(title: "사진 앨범", style: .default) { _ in self.openLibrary() }
        let camera = UIAlertAction(title: "카메라", style: .default) { _ in self.openCamera() }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(library)
        alert.addAction(camera)
        alert.addAction(cancel)
        self.present(alert, animated: true, completion: nil)
    }
    
    func setAuthAlertAction() {
        let authAlert = UIAlertController(title: "사진 앨범 권한 요청", message: "사진첩 권한을 허용해야만 기능을 사용하실 수 있습니다.", preferredStyle: .alert)
        
        let getAuthAction = UIAlertAction(title: "넵", style: .default, handler: { (UIAlertAction) in
            if let appSettings = URL(string: UIApplication.openSettingsURLString) {
                UIApplication.shared.open(appSettings, options: [:], completionHandler: nil)
            }
        })
        
        authAlert.addAction(getAuthAction)
        self.present(authAlert, animated: true, completion: nil)
    }
    
    func checkAlbumPermission() {
        PHPhotoLibrary.requestAuthorization(for: .readWrite, handler: { status in
            switch status {
            case .authorized, .limited :
                self.openLibrary()
            case .denied:
                self.setAuthAlertAction()
            default:
                break
            }
        })
    }
    
    func checkCameraPerimission() {
        AVCaptureDevice.requestAccess(for: .video, completionHandler: { granted in
            if granted {
                self.cameraPermission = .authorized
            } else {
                self.cameraPermission = .denied
            }
        })
    }
    
    func openLibrary() {
        if albumPermission == .authorized || albumPermission == .limited {
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }
        else if albumPermission == .denied {
            self.setAuthAlertAction()
        }
        else if albumPermission == .notDetermined {
            checkAlbumPermission()
        }
    }
    
    func openCamera() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            if cameraPermission == .authorized {
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true, completion: nil)
            }
            else if cameraPermission == .denied {
                self.setAuthAlertAction()
            }
            else if cameraPermission == .notDetermined {
                checkCameraPerimission()
            }
        }
        else {
            let alert = UIAlertController(title: "Error!", message: "해당 기기에 카메라가 감지되지 않아요!", preferredStyle: .actionSheet)
            self.present(alert, animated: true, completion: nil)
            dismiss(animated: true)
        }
    }
}

extension YellowViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.photoImageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
}
