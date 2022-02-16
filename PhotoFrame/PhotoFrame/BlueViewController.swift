//
//  BlueViewController.swift
//  PhotoFrame
//
//  Created by 김한솔 on 2022/02/16.
//

import UIKit

class BlueViewController: UIViewController {

    @IBOutlet weak var thirdViewIndicatorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        thirdViewIndicatorLabel.text = "Third View"
        thirdViewIndicatorLabel.font = .systemFont(ofSize: 25)
        
        let fontSize = UIFont.boldSystemFont(ofSize: 35)
        let attributedString = NSMutableAttributedString(string: thirdViewIndicatorLabel.text!)
        attributedString.addAttribute(.font, value: fontSize, range: (thirdViewIndicatorLabel.text! as NSString).range(of: "Third"))
        attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: (thirdViewIndicatorLabel.text! as NSString).range(of: "Third"))
        thirdViewIndicatorLabel.attributedText = attributedString
        print(#file, #line, #function, #column)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#file, #line, #function, #column)
    }
    
    @IBAction func closeButtonTouched(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
