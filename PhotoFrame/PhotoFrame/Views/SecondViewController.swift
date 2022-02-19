//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/15.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    

}
