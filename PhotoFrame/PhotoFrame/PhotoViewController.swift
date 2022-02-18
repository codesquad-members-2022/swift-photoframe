//
//  PhotoViewController.swift
//  PhotoFrame
//
//  Created by Bumgeun Song on 2022/02/18.
//

import UIKit

class PhotoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showImageButtonTouched(_ sender: UIButton) {
        let randomInt = Int.random(in: 1...22)
        let randomFileName = randomInt >= 10 ? "\(randomInt).jpg" : "0\(randomInt).jpg"
        photoImageView.image = UIImage(named: randomFileName)
    }
    
}
