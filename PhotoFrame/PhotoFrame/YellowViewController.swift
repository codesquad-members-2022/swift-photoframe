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
        let newImage = chooseRandomImage()
        self.photoImageView.image = newImage
    }
    
    func chooseRandomImage() -> UIImage {
        let images = [#imageLiteral(resourceName: "06"), #imageLiteral(resourceName: "03"), #imageLiteral(resourceName: "15"), #imageLiteral(resourceName: "05"), #imageLiteral(resourceName: "13"), #imageLiteral(resourceName: "07"), #imageLiteral(resourceName: "22"), #imageLiteral(resourceName: "04"), #imageLiteral(resourceName: "20"), #imageLiteral(resourceName: "17"), #imageLiteral(resourceName: "11"), #imageLiteral(resourceName: "10"), #imageLiteral(resourceName: "02"), #imageLiteral(resourceName: "09"), #imageLiteral(resourceName: "21"), #imageLiteral(resourceName: "18"), #imageLiteral(resourceName: "01"), #imageLiteral(resourceName: "14"), #imageLiteral(resourceName: "08"), #imageLiteral(resourceName: "19"), #imageLiteral(resourceName: "16"), #imageLiteral(resourceName: "12")]
        return images.randomElement() ?? images[0]
    }
}
