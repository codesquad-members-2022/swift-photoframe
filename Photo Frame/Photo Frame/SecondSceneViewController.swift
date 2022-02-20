//
//  SecondSceneViewController.swift
//  Photo Frame
//
//  Created by Jihee hwang on 2022/02/20.
//

import UIKit

class SecondSceneViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var secondDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.secondDescription.textColor = .darkGray
    }

    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.image = UIImage(named: "20.jpg")
    }
    
}
