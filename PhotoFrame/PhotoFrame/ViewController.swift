//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 허태양 on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoLabel.center = self.view.center
        
        self.photoLabel.text = "Ocean의 액자"
        self.photoLabel.font = UIFont.boldSystemFont(ofSize: 30)

        self.photoDescription.text = "made by OceanShape"
        self.photoDescription.textColor = UIColor.white
        self.photoDescription.backgroundColor = UIColor.systemBlue
        self.photoDescription.font = UIFont.italicSystemFont(ofSize: UIFont.labelFontSize)
    }


}

