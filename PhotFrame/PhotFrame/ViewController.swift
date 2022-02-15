//
//  ViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.firstLabel.text = "joobang의 사진액자"
        print(#file, #line, #function, #column)
    }
}

