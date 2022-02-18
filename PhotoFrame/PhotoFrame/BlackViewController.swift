import UIKit

class BlackViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func greenButtonTouched(_ sender: Any) {
        if let greenView = storyboard?.instantiateViewController(withIdentifier: "greenView") {
            self.navigationController?.pushViewController(greenView, animated: true)
        }
    }
    
    @IBAction func closedButtonTouched(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
