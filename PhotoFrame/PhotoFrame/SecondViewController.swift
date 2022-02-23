//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by Jason on 2022/02/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var nextImageButtonTouched: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func nextImageButtonTouched(_ sender: UIButton) {
        guard let randomNum = (1...22).randomElement() else { return }
        let showRandomImage = String(format: "%0.2d.jpg", randomNum)
        photoImageView.image = UIImage(named: showRandomImage)
        
    }
    
}
