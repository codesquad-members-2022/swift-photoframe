//
//  CodableView.swift
//  PhotoFrame
//
//  Created by seongha shin on 2022/02/16.
//

import Foundation
import UIKit

class CodableViewController: UIViewController {
    
    let photoBoardImageView = UIImageView()
    let photoImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        attributes()
        layout()
    }
    
    func attributes() {
        photoBoardImageView.image = UIImage(named: "photoframe-border.jpg")
        photoImageView.image = getImage()
    }
    
    func layout() {
        self.view.addSubViews([photoBoardImageView, photoImageView])
        
        photoBoardImageView.frame = CGRect(x: 0, y: 0, width: 270, height: 270)
        photoBoardImageView.center = self.view.center
        
        photoImageView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
        photoImageView.center = self.view.center
    }
    
    private func getImage() -> UIImage? {
        return UIImage(named: String(format: "%02d.jpg", Int.random(in: 1...22)))
    }
}
