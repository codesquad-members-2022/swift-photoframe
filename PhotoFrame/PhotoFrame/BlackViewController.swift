import UIKit

class BlackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func greenButtonTouched(_ sender: Any) {
        if let greenView = storyboard?.instantiateViewController(withIdentifier: "greenView") {
            self.present(greenView, animated: true, completion: nil)
        }
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
