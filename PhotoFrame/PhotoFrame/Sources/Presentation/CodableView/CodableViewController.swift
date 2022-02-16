//
//  CodableView.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class CodableViewController: UIViewController {
    
    let photoContainer = UIView()
    let photoBoard = UIImageView()
    let photoImage = UIImageView()
    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind()
        attributes()
        layout()
    }
    
    func bind() {
        nextButton.addTarget(self, action: #selector(onNextButtonTapped), for: .touchUpInside)
    }
    
    @objc func onNextButtonTapped(){
        photoImage.image = getImage()
    }
        
    func attributes() {
        photoContainer.backgroundColor = .black
        
        photoBoard.image = UIImage(named: "photoframe-border")

        photoImage.image = getImage()
        photoImage.contentMode = .scaleToFill

        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel?.font = .systemFont(ofSize: 20)
        nextButton.backgroundColor = .gray
    }
    
    func layout() {
        photoContainer.addSubview(photoImage)
        photoContainer.addSubview(photoBoard)
        
        self.view.addSubview(photoContainer)
        self.view.addSubview(nextButton)
        
        photoContainer.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        photoContainer.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        photoContainer.widthAnchor.constraint(equalToConstant: 270).isActive = true
        photoContainer.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
        photoBoard.topAnchor.constraint(equalTo: self.photoContainer.topAnchor).isActive = true
        photoBoard.bottomAnchor.constraint(equalTo: self.photoContainer.bottomAnchor).isActive = true
        photoBoard.leftAnchor.constraint(equalTo: self.photoContainer.leftAnchor).isActive = true
        photoBoard.rightAnchor.constraint(equalTo: self.photoContainer.rightAnchor).isActive = true
        
        photoImage.topAnchor.constraint(equalTo: self.photoContainer.topAnchor).isActive = true
        photoImage.bottomAnchor.constraint(equalTo: self.photoContainer.bottomAnchor).isActive = true
        photoImage.leftAnchor.constraint(equalTo: self.photoContainer.leftAnchor).isActive = true
        photoImage.rightAnchor.constraint(equalTo: self.photoContainer.rightAnchor).isActive = true
        
        nextButton.topAnchor.constraint(equalTo: self.photoContainer.bottomAnchor, constant: 30).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func getImage() -> UIImage? {
        return UIImage(named: String(format: "%02d.jpg", Int.random(in: 1...22)))
    }
}
