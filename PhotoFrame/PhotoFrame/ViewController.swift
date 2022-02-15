//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김동준 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        firstLabel.text = "ebony의 액자"
        firstLabel.textAlignment = .center
        firstLabel.font = UIFont.systemFont(ofSize: 24)
        
        
        firstDescription.text = "first description"
        firstDescription.textColor = .blue
        firstDescription.textAlignment = .center
        firstDescription.font = UIFont.systemFont(ofSize: 18)
        
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = UIColor.blue
        self.firstLabel.backgroundColor = UIColor.yellow
        self.firstLabel.alpha = 0.5
        
        
    }
}

