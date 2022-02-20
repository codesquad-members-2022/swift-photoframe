//
//  SecondViewController.swift
//  PhotoFrame
//
//  Created by 김상혁 on 2022/02/18.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoFrameImageView: UIImageView!
    
    @IBOutlet weak var nextImageButton: UIButton!
    @IBAction func nextImageButtonTouched(_ sender: Any) {
        guard let randomNumber = (1...22).randomElement() else { return }
        let randomImage = String(format: "%02d.jpg", randomNumber)
        photoImageView.image = UIImage(named: randomImage)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let photoImageViewHeight: CGFloat = 240.0
        let photoImageViewWidth: CGFloat = 240.0
        let photoFrameImageViewHeight: CGFloat = 300.0
        let photoFrameImageViewWidth: CGFloat = 300.0
        
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        nextImageButton.translatesAutoresizingMaskIntoConstraints = false
        photoFrameImageView.translatesAutoresizingMaskIntoConstraints = false
        
        photoImageView.contentMode = .scaleAspectFill
        
        photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true

        photoImageView.heightAnchor.constraint(equalToConstant: photoImageViewHeight).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: photoImageViewWidth).isActive = true
        
        
        nextImageButton.setTitle("다음 이미지", for: .normal)
        nextImageButton.backgroundColor = .systemGray6
        nextImageButton.layer.cornerRadius = 10
        
        nextImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextImageButton.topAnchor.constraint(equalTo: photoFrameImageView.bottomAnchor, constant: 50).isActive = true
        
        
        photoFrameImageView.image = UIImage(named: "photoframe-border.png")
        photoFrameImageView.contentMode = .scaleAspectFill
        
        photoFrameImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoFrameImageView.topAnchor.constraint(equalTo: photoImageView.topAnchor, constant: (photoImageViewHeight - photoFrameImageViewHeight) / 2).isActive = true
        
        photoFrameImageView.heightAnchor.constraint(equalToConstant: photoFrameImageViewHeight).isActive = true
        photoFrameImageView.widthAnchor.constraint(equalToConstant: photoFrameImageViewWidth).isActive = true
        
    }
}
