//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var shadowView: UIView!
    @IBOutlet weak var secondViewIndicatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewIndicatorLabel.text = "Sol Album"
        self.photoImageView.image = #imageLiteral(resourceName: "01")
        
        setLabelFont()
        setShadowView()
    }
    
    func setLabelFont() {
        secondViewIndicatorLabel.font = .systemFont(ofSize: 25)
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: secondViewIndicatorLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Sol"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Sol"))
        secondViewIndicatorLabel.attributedText = attributedString
    }
    
    func setShadowView() {
        self.shadowView.layer.shadowOpacity = 1
        self.shadowView.layer.shadowOffset = .zero
        self.shadowView.layer.shadowColor = UIColor.gray.cgColor
        self.shadowView.layer.shadowRadius = 5
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        let imageName = chooseRandomImageName()
        self.photoImageView.image = UIImage(named: imageName)
    }
    
    func chooseRandomImageName() -> String {
        let randomImageName = String((1...22).randomElement() ?? 1)
        return randomImageName.count < 2 ? "0"+randomImageName : randomImageName
    }
}
