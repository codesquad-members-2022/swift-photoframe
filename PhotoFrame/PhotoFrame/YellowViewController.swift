import UIKit

class YellowViewController: UIViewController {

    let imagePicker = UIImagePickerController()
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
        imagePicker.delegate = self
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        let num = Int.random(in: 1..<22)
        self.photoImageView.image = UIImage(named: "\(num > 10 ? "" : "0")\(num).jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        self.present(imagePicker, animated: true, completion: nil)
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
