//
//  ViewController.swift
//  PhotoFrame
//
//  Created by Kai Kim on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstLabel: UILabel!
    @IBOutlet weak var FirstDescription: UILabel!
    
    @IBOutlet weak var back_Yellow: UIButton!
    @IBOutlet weak var back_White: UIButton!
    @IBOutlet weak var back_Red: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.FirstLabel.text = "Kai의 사진액자"
        self.FirstLabel.textAlignment = .center
        self.FirstLabel.font = .monospacedDigitSystemFont(ofSize: 25, weight: .heavy)
        
        self.FirstDescription.text = "순간의 기록으로.."
        self.FirstDescription.font = .monospacedDigitSystemFont(ofSize: 20, weight: .heavy)
        
        self.back_Yellow.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        self.back_Yellow.addTarget(self, action: #selector(nextButtonTouched), for: .touchUpInside)
        //objc 와 IBAction 을 혼합사용가능.
        self.back_White.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        self.back_Red.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        
        
    }
    
    
    @objc func changeBackgorund(_ sender : UIButton) {
        switch sender{
        case back_Yellow :
            self.view.backgroundColor = UIColor(red: 0.2, green: 0.7, blue: 0.4, alpha: 0.3)
        case back_White:
            self.view.backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 1.2, alpha: 0.3)
        case back_Red:
            self.view.backgroundColor = UIColor(red: 0.5, green: 1, blue: 2, alpha: 0.3)
        default :
            print("Not a valid Button")
            
        }
        
    }
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.FirstLabel.textColor = UIColor.blue
        self.FirstLabel.backgroundColor = UIColor.yellow
        self.FirstLabel.alpha = 0.5
    }
    
    
    @IBAction func nextButtonTouchDown(_ sender: Any) {
        self.FirstDescription.textColor = UIColor.blue
        self.FirstDescription.backgroundColor = UIColor.yellow
        self.FirstDescription.alpha = 0.5
    }
    
    
}

