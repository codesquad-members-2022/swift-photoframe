import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDesciption: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "sally의 사진액자"
        self.firstLabel.backgroundColor = .lightGray
        self.firstLabel.layer.borderColor = .init(gray: 0.3, alpha: 1)
        self.firstLabel.layer.borderWidth = 3
        self.firstLabel.layer.cornerRadius = 5
        
        self.firstDesciption.text = "첫번째 화면입니다."
        self.firstDesciption.textColor = .darkGray
    }

    @IBAction func textColorChangeAction(_ sender: Any) {
        self.firstLabel.textColor = self.firstLabel.textColor == .red ? .blue : .red
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = .blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }

}

