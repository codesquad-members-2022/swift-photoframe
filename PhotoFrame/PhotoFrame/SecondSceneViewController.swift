//
//  SecondSceneViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/23.
//

import UIKit

class SecondSceneViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
}
