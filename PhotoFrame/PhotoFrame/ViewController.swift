import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func nextButtonTouchedUpInside(_ sender: Any) {
        print(#function)
    }

    @IBAction func nextButtonTouchedUpOutside(_ sender: Any) {
        print(#function)
    }
    
    @IBAction func nextButtonTouchedDown(_ sender: Any) {
        print(#function)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(#file, #line, #function, #column)
        
        setNextButton()
        setAlbumLabel()
        setImageView()
    }
    
    func setImageView(){
        imageView.center.x = self.view.center.x
        imageView.center.y = self.view.center.y*0.7
        imageView.backgroundColor = .lightGray
    }
    
    func setAlbumLabel(){
        albumLabel.center.x = self.view.center.x
        albumLabel.center.y = self.view.center.y*1.15
        albumLabel.text = "Photo Album"
        albumLabel.font = UIFont.systemFont(ofSize: 40)
    }
    
    func setNextButton(){
        nextButton.center.x = self.view.center.x
        nextButton.center.y = self.view.center.y*1.3
        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }

}

