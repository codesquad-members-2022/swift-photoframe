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
        guard let randomNumber = (1...22).randomElement() else { return }
        let randomImage = String(format: "%02d.jpg", randomNumber)
        photoImageView.image = UIImage(named: randomImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        nextImageButton.translatesAutoresizingMaskIntoConstraints = false
        
        photoImageView.contentMode = .scaleAspectFit
        
        photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true

        photoImageView.heightAnchor.constraint(equalToConstant: CGFloat(240.0)).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: CGFloat(240.0)).isActive = true
        
        
        nextImageButton.setTitle("다음 이미지", for: .normal)
        nextImageButton.backgroundColor = .systemGray6
        nextImageButton.layer.cornerRadius = 10
        
        nextImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextImageButton.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 50).isActive = true
        
        
    }
}
