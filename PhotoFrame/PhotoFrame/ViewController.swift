//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoLabel.text = "Eddy의 사진 액자"
        photoLabel.font = .systemFont(ofSize: CGFloat(40))
        photoLabel.textColor = UIColor(
            red: 46,
            green: 148,
            blue: 185)
        photoLabel.backgroundColor = UIColor(
            red: 255,
            green: 253,
            blue: 193,
            alpha: 0.5)
    }
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0) {
        let newRed = CGFloat(red) / 255
        let newGreen = CGFloat(green) / 255
        let newBlue = CGFloat(blue) / 255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: alpha)
    }
}

