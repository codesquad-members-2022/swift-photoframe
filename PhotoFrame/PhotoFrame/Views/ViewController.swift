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
    
    @IBOutlet weak var yellowBackground: UIButton!
    @IBOutlet weak var whiteBackground: UIButton!
    @IBOutlet weak var redBackground: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.FirstLabel.text = "Kai의 사진액자"
        self.FirstLabel.textAlignment = .center
        self.FirstLabel.font = .monospacedDigitSystemFont(ofSize: 25, weight: .heavy)
        
        self.FirstDescription.text = "순간의 기억속으로.."
        self.FirstDescription.font = .monospacedDigitSystemFont(ofSize: 20, weight: .heavy)
        
        self.yellowBackground.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        self.yellowBackground.addTarget(self, action: #selector(nextButtonTouched), for: .touchUpInside)
        //objc 와 IBAction 을 혼합사용가능.
        self.whiteBackground.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        self.redBackground.addTarget(self, action: #selector(changeBackgorund), for: .touchUpInside)
        
        
    }
    
    
    @objc func changeBackgorund(_ sender : UIButton) {
        switch sender{
        case yellowBackground :
            self.view.backgroundColor = UIColor(red: 0.2, green: 0.7, blue: 0.4, alpha: 0.3)
        case whiteBackground:
            self.view.backgroundColor = UIColor(red: 0.3, green: 0.5, blue: 1.2, alpha: 0.3)
        case redBackground:
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

