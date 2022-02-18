//
//  YellowViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var secondViewIndicatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondViewIndicatorLabel.text = "Second View"
        secondViewIndicatorLabel.font = .systemFont(ofSize: 25)
        
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: secondViewIndicatorLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Second"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.systemRed, range: (secondViewIndicatorLabel.text! as NSString).range(of: "Second"))
        secondViewIndicatorLabel.attributedText = attributedString
        
    }
}
