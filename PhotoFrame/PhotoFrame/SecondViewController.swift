//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Selina on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        var randomNumber = Int.random(in: 0...22)
        if randomNumber < 10 {
            self.photoImageView.image = UIImage(named: "0\(randomNumber).jpg")
        } else {
            self.photoImageView.image = UIImage(named: "\(randomNumber).jpg")
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
