import UIKit

class YellowViewController: UIViewController {
    
    @IBOutlet weak var exitButton: UIButton!
    
    @IBAction func exitButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setExitButton()
    }
    
    func setExitButton(){
        print(#function)
        exitButton.center.x = self.view.center.x
        exitButton.center.y = self.view.center.y
        exitButton.backgroundColor = UIColor.red
    }
}
