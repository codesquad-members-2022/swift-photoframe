//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var photoLabel: UILabel!
    
    @IBOutlet weak var firstDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        photoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        photoLabel.text = "Mase의 사진액자"
        photoLabel.textColor = .systemBlue
        photoLabel.font = photoLabel.font.withSize(CGFloat(30.0))
        photoLabel.textAlignment = .center
        photoLabel.backgroundColor = .systemGray6
        photoLabel.alpha = 0.9
        
        photoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
