//
//  ViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoLabel.text = "dale의 사진액자"
        self.photoLabel.textColor = .blue
        self.photoLabel.backgroundColor = .yellow
        self.photoLabel.font.withSize(30)
        self.photoLabel.textAlignment = .center
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.red
        self.photoLabel.alpha = 0.5
    }
    
}

