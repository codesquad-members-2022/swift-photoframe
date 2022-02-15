//
//  ViewController.swift
//  PhotoFrame
//
//  Created by jsj on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    // MARK:- IBOutlet
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        
        self.firstDescription.text = "잡다한 사진 저장소"
        self.firstDescription.textColor = .gray
    }
    
    @IBAction func nextButtonTouched(_ sender: Any) {
        self.firstLabel.textColor = .blue
        self.firstLabel.backgroundColor = .yellow
        self.firstLabel.alpha = 0.5
    }
}
