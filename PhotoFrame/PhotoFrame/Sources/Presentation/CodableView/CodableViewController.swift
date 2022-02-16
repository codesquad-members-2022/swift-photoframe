//
//  CodableView.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class CodableViewController: UIViewController {
    
    let photoView = UIView()
    let photoBoardImageView = UIImageView()
    let photoImageView = UIImageView()
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
        photoImageView.image = getImage()
    }
        
    func attributes() {
        photoView.backgroundColor = .black
        
        photoBoardImageView.image = UIImage(named: "photoframe-border")

        photoImageView.image = getImage()
        photoImageView.contentMode = .scaleToFill

        nextButton.setTitle("다음", for: .normal)
        nextButton.titleLabel?.font = .systemFont(ofSize: 20)
        nextButton.backgroundColor = .gray
    }
    
    func layout() {
        self.view.addSubViews([photoView, nextButton])
        photoView.addSubViews([photoImageView, photoBoardImageView])
        
        photoView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100).isActive = true
        photoView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        photoView.widthAnchor.constraint(equalToConstant: 270).isActive = true
        photoView.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
        photoBoardImageView.topAnchor.constraint(equalTo: self.photoView.topAnchor).isActive = true
        photoBoardImageView.bottomAnchor.constraint(equalTo: self.photoView.bottomAnchor).isActive = true
        photoBoardImageView.leftAnchor.constraint(equalTo: self.photoView.leftAnchor).isActive = true
        photoBoardImageView.rightAnchor.constraint(equalTo: self.photoView.rightAnchor).isActive = true
        
        photoImageView.topAnchor.constraint(equalTo: self.photoView.topAnchor).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: self.photoView.bottomAnchor).isActive = true
        photoImageView.leftAnchor.constraint(equalTo: self.photoView.leftAnchor).isActive = true
        photoImageView.rightAnchor.constraint(equalTo: self.photoView.rightAnchor).isActive = true
        
        nextButton.topAnchor.constraint(equalTo: self.photoView.bottomAnchor, constant: 30).isActive = true
        nextButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        nextButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    private func getImage() -> UIImage? {
        return UIImage(named: String(format: "%02d.jpg", Int.random(in: 1...22)))
    }
}
