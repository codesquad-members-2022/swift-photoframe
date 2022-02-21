import UIKit
import AVFoundation
import Photos

class YellowViewController: UIViewController {

    let imagePicker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    
    var albumPermission: Bool = false
    var cameraPermission: Bool = false
    
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
    
    func checkAlbumPermission() {
        PHPhotoLibrary.requestAuthorization(for: .readWrite, handler: { status in
            switch status {
            case .authorized:
                self.albumPermission = true
            case .denied:
                print("denied!")
                self.albumPermission = false
            default:
                print("what?!")
                break
            }
        })
    }
    
    func checkCameraPerimission() {
        AVCaptureDevice.requestAccess(for: .video, completionHandler: { granted in
            if granted {
                self.cameraPermission = true
            } else {
                self.cameraPermission = false
            }
        })
    }
    
    func openLibrary() {
        guard albumPermission else {
            checkAlbumPermission()
            return
        }
        
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func openCamera() {
        guard cameraPermission else {
            checkCameraPerimission()
            return
        }
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)) {
            imagePicker.sourceType = .camera
            self.present(imagePicker, animated: true, completion: nil)
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
