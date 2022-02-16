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

    override func viewDidLoad() {
        super.viewDidLoad()
        self.FirstLabel.text = "Kai의 사진액자"
        self.FirstLabel.textAlignment = .center
        self.FirstLabel.font = .monospacedDigitSystemFont(ofSize: 25, weight: .heavy)
        
        self.FirstDescription.text = "나의 사진들.."
        self.FirstDescription.font = .monospacedDigitSystemFont(ofSize: 20, weight: .heavy)
    }
    @IBAction func nextButtonTouched(_ sender: Any) {
          self.FirstLabel.textColor = UIColor.blue
          self.FirstLabel.backgroundColor = UIColor.yellow
          self.FirstLabel.alpha = 0.5
    }
}

