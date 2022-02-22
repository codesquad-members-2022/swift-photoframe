//
//  FirstSceneViewController.swift
//  PhotoFrame
//
//  Created by 백상휘 on 2022/02/14.
//

import UIKit

class FirstSceneViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLabel.text = "Beck의 사진액자"
        
        editLabel(firstLabel)
        editLabel(firstDescription)
    }
    
    func editLabel(_ label: UILabel) {
        
        label.textColor = .systemBrown
        label.backgroundColor = .systemMint
        label.alpha = 0.5
        
        let editFontSize: UIFont = {
            label.font.withSize(label.font.pointSize + 7)
        }()
        
        label.font = editFontSize
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        
        firstLabel.textColor = UIColor.blue
        firstLabel.backgroundColor = UIColor.yellow
        firstLabel.alpha = 0.5
    }
}
