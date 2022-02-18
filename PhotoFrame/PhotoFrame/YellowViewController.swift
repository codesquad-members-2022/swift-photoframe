//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var secondViewIndicatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewIndicatorLabel.text = "Sol Album"
        self.photoImageView.image = UIImage(named: "01.jpg")
        
        setLabelFont()
    }
    
    func setLabelFont() {
        secondViewIndicatorLabel.font = .systemFont(ofSize: 25)
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: secondViewIndicatorLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Second"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Second"))
        secondViewIndicatorLabel.attributedText = attributedString
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let imageName = chooseRandomImageName()
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    func chooseRandomImageName() -> String {
        let randomImageName = String((1...22).randomElement() ?? 1) + ".jpg"
        return randomImageName.count < 6 ? "0"+randomImageName : randomImageName
    }
}
