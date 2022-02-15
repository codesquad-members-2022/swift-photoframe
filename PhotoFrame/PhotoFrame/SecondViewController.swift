//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class SecondViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoImageView.image = UIImage(named: "01.jpg")
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        let num = Int.random(in: 0...22)
        self.photoImageView.image = UIImage(named: String(format: "%.2d.jpg", num))
    }
}
