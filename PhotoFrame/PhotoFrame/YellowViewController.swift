import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "02.jpg")
    }
    
}
