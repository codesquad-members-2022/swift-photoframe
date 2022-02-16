import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!

    @IBAction func nextButtonTouchedUpInside(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
        print(#function)
        
        guard let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: "GrayViewController")else{
            print("No NextViewController Found")
            return
        }
        nextViewController.modalPresentationStyle = .fullScreen
        nextViewController.modalTransitionStyle = .coverVertical
        self.present(nextViewController, animated: true, completion: nil)
    }

    @IBAction func nextButtonTouchedUpOutside(_ sender: Any) {
        self.firstLabel.textColor = UIColor.red
        print(#function)
    }
    
    @IBAction func nextButtonTouchedDown(_ sender: Any) {
        self.firstLabel.textColor = UIColor.white
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        //라벨에 보여질 텍스트, 속성 설정
        let attributedText = NSMutableAttributedString(string: "Jed의 사진 액자")
        attributedText.addAttributes([.foregroundColor: UIColor.white,
                                      .font: UIFont.systemFont(ofSize: 40)]
                                     , range: NSRange(location: 0, length: 10))
        firstLabel.attributedText = attributedText
        firstLabel.backgroundColor = UIColor.lightGray
        //가운데 정렬
        firstLabel.center.x = self.view.center.x
        firstLabel.center.y = self.view.center.y
        
        nextButton.center.x = self.view.center.x
    }
}

