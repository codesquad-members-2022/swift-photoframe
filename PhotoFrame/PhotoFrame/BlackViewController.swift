import UIKit

class BlackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
