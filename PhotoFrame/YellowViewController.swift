import UIKit

class YellowViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var unwindSegueButton: UIButton!
    
    @IBAction func dismissButtonTouched(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitleLabel()
        setDismissButton()
        setUnwindSegueButton()
    }
    
    func setTitleLabel(){
        titleLabel.text = "화면 닫기 테스트"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.center.x = self.view.center.x
        titleLabel.center.y = self.view.center.y*0.8
        titleLabel.font = UIFont.systemFont(ofSize: 30)
    }
    
    func setDismissButton(){
        dismissButton.center.x = self.view.center.x*0.8
        dismissButton.center.y = self.view.center.y
        dismissButton.setTitle("Dismiss View", for: .normal)
        dismissButton.setTitleColor(.red, for: .normal)
        dismissButton.titleLabel?.textAlignment = .center
        dismissButton.backgroundColor = .clear
    }
    
    func setUnwindSegueButton(){
        unwindSegueButton.center.x = self.view.center.x*1.2
        unwindSegueButton.center.y = self.view.center.y
        unwindSegueButton.setTitle("Unwind Segue", for: .normal)
        unwindSegueButton.setTitleColor(.red, for: .normal)
        unwindSegueButton.titleLabel?.textAlignment = .center
        unwindSegueButton.backgroundColor = .clear
    }
}
