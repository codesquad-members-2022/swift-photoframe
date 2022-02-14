//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/14.
//

import Foundation
import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var firstLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        firstLabel.text = "Shingha의 사진액자"
    }
    
    @IBAction func onTappedButton(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
}
