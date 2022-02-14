//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 송태환 on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var photoDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.photoLabel.text = "Alex의 사진액자"
        self.photoLabel.font = self.photoLabel.font.withSize(36)
        
        
        self.photoDescription.text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."
        self.photoDescription.font = self.photoDescription.font.withSize(20)
        self.photoDescription.textColor = UIColor.gray.withAlphaComponent(0.7)
        self.photoDescription.numberOfLines = 0
        
    }

}
