//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/15.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    var imageNum = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        self.photoImageView.image = UIImage(named: "\(String(format: "%02d", imageNum)).jpg")
        self.photoImageView.contentMode = .scaleAspectFill
        
        
        imageNum += 1
        if imageNum == 22 { imageNum = 1}
    }
    

}
