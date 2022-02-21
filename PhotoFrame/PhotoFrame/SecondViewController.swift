//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Bibi on 2022/02/21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var photoFrameView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        let randomInt = Int.random(in: 1...22)
        var jpgName = ""
        if randomInt < 10 {
            jpgName = "0" + String(randomInt) + ".jpg"
        } else {
            jpgName = String(randomInt) + ".jpg"
        }
        self.photoImageView.image = UIImage(named: jpgName)
        
    }
    
    @IBAction func selectButtonTouched(_ sender: Any) {
        
    }
}
