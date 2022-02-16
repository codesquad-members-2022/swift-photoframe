//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: DesignableLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Welcome!"
        self.photoLabel.font = UIFont(name: "Chalkduster", size: 42)
        self.photoLabel.textColor = self.photoLabel.textColor.withAlphaComponent(0.8)
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
//        self.photoLabel.layer.borderWidth = 1
//        self.photoLabel.layer.cornerRadius = 10
//        self.photoLabel.layer.masksToBounds = true
//        self.photoLabel.layer.borderColor = UIColor.white.cgColor
//        self.photoLabel.textColor = .white
//        self.photoLabel.backgroundColor = .systemIndigo.withAlphaComponent(0.7)
    }
}
