//
//  FirstViewController.swift
//  PhotoFrame
//
//  Created by 박진섭 on 2022/02/14.
//

import UIKit

class FirstViewController:UIViewController {
    
    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        configureLabel()
    }
    
    func configureLabel() {
        self.photoLabel.text = "피그백's 사진액자"
        self.photoLabel.textColor = .red //색깔
        self.photoLabel.textAlignment = .center //정렬
        self.photoLabel.font = .systemFont(ofSize: 40.0, weight: .bold) //사이즈,폰트
    }
    
}
