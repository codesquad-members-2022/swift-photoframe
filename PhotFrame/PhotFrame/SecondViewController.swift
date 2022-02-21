//
//  SecondViewController.swift
//  PhotFrame
//
//  Created by Joobang Lee on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
      
    @IBOutlet weak var photoImageView: UIImageView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let photoRandomNumber = arc4random_uniform(22)+1
        let tempNumber = String(format: "%02d", photoRandomNumber)+".jpg"
        self.photoImageView.image = UIImage(named: tempNumber)
    }

}
