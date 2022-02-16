//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var photoDiscription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.photoLabel.text = "bibi의 사진액자"
        self.photoLabel.textColor = UIColor.blue
        
        self.photoDiscription.text =
        "Loaded by FirstViewController"
        self.photoDiscription.font = UIFont.boldSystemFont(ofSize: 15)
    }


}

