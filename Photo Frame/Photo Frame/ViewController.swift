//
//  ViewController.swift
//  Photo Frame
//
//  Created by Jihee hwang on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Jihee's Photo"
        self.photoLabel.textColor = .black
        self.firstDescription.text = "Jihee's Photo Frame"
        self.firstDescription.textColor = .darkGray
     
        print(#file, #line, #function, #column)
    }
    
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.photoLabel.text = "Go Dark"
        self.photoLabel.font = UIFont(name: "Futura Bold", size: 45)
    }
    

}
