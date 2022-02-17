//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 최예주 on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescriptionLabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureLabel()
        
        nextButton.setTitle("다음", for: .normal)
        nextButton.setTitle("highlighted", for: .highlighted)
    }
    
    
    func configureLabel() {
        
        photoLabel.text = "Chez의 사진액자"
        photoLabel.textColor = .blue
        photoLabel.backgroundColor = .yellow
        photoLabel.alpha = 0.5
        photoLabel.font = UIFont.systemFont(ofSize: 50)
        
        photoLabel.sizeToFit()  // 사이즈를 텍스트에 맞게 조정
        photoLabel.center.x = self.view.frame.width/2
        
        
        firstDescriptionLabel.text = "PhotoFrame Description"
        firstDescriptionLabel.textColor = .yellow
        firstDescriptionLabel.backgroundColor = .blue
        firstDescriptionLabel.alpha = 0.5
        firstDescriptionLabel.font = UIFont.italicSystemFont(ofSize: 20)
        
        firstDescriptionLabel.sizeToFit()  // 사이즈를 텍스트에 맞게 조정
        firstDescriptionLabel.center.x = self.view.frame.width/2
        
        
        
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
    
        self.photoLabel.textColor = .black
        self.photoLabel.backgroundColor = .purple
        self.photoLabel.alpha = 0.8
        
        guard let secondVC = self.storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController else {return}
        self.present(secondVC, animated: true, completion: nil)
    

    }
    
    @IBAction func nextButtonTouchUpOutside(_ sender: Any) {
        photoLabel.textColor = .blue
        photoLabel.backgroundColor = .yellow
        photoLabel.alpha = 0.5
    }
    
    @IBAction func nextButtonTouchDown(_ sender: Any) {
        
    }
    

}
