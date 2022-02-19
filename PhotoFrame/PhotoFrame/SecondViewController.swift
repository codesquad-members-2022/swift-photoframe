//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    @IBOutlet weak var nextImageButton: UIButton!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        photoImageView.contentMode = .scaleAspectFit
        
        photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true

        photoImageView.heightAnchor.constraint(equalToConstant: CGFloat(240.0)).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: CGFloat(240.0)).isActive = true
        
        
    }
}
