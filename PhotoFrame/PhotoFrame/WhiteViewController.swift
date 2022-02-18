import UIKit

class WhiteViewController: UIViewController {

    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var frameView: UIImageView!
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        imageView.image = getRandomImage(number: Int.random(in: 1...22))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAlbumLabel()
        setImageView()
        setNextButton()
        setFrameView()
    }
    
    func setFrameView(){
        frameView.image = UIImage(named: "Demo Images/photoframe-border.png")
        frameView.center.x = self.view.center.x
        frameView.center.y = self.view.center.y*0.7
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
        imageView.contentMode = .scaleToFill
    }
    
    func setNextButton(){
        nextButton.center.x = self.view.center.x
        nextButton.center.y = self.view.center.y*1.3
        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }
    
    func getRandomImage(number: Int)-> UIImage?{
        let fileName: String = number<10 ? "0\(number)" : String(number)
        return UIImage(named: "Demo Images/\(fileName).jpg")
    }
}
