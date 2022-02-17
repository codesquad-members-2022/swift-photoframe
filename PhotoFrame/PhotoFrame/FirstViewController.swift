//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/15.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.firstLabel.text = "bibi의 사진액자"
        self.firstLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.firstDescription.text =
        "Loaded by FirstViewController"
        self.firstDescription.textColor = UIColor.gray
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
    }
    
}

