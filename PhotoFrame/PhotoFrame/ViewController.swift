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
        firstDescription.translatesAutoresizingMaskIntoConstraints = false
        
        photoLabel.text = "Mase의 사진액자"
        photoLabel.textColor = .systemBlue
        photoLabel.font = photoLabel.font.withSize(CGFloat(30.0))
        photoLabel.textAlignment = .center
        photoLabel.backgroundColor = .systemGray6
        photoLabel.alpha = 0.9
        
        photoLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        
        firstDescription.text = "첫 번째 Scene"
        firstDescription.textColor = .systemBlue
        firstDescription.font = firstDescription.font.withSize(CGFloat(20.0))
        firstDescription.textAlignment = .center
        firstDescription.backgroundColor = .systemGray6
        firstDescription.alpha = 0.7
        
        firstDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        firstDescription.centerYAnchor.constraint(equalTo: photoLabel.bottomAnchor, constant: 50).isActive = true
    }
}