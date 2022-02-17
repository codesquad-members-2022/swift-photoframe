import UIKit

class WhiteViewController: UIViewController {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAlbumLabel()
        setImageView()
        setNextButton()
    }
    
    func setAlbumLabel(){
        albumLabel.center.x = self.view.center.x
        albumLabel.center.y = self.view.center.y*1.15
        albumLabel.text = "Photo Album"
        albumLabel.textAlignment = .center
        albumLabel.font = UIFont.systemFont(ofSize: 40)
    }
    
    func setImageView(){
        imageView.center.x = self.view.center.x
        imageView.center.y = self.view.center.y*0.7
        imageView.backgroundColor = .lightGray
    }
    
    func setNextButton(){
        nextButton.center.x = self.view.center.x
        nextButton.center.y = self.view.center.y*1.3
        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }
}
