//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.firstLabel.text = "bibi의 사진액자"
        self.firstLabel.font = UIFont.boldSystemFont(ofSize: 30)
        
        self.firstDescription.text =
        "Loaded by FirstViewController"
        self.firstDescription.textColor = UIColor.gray
    }


}

