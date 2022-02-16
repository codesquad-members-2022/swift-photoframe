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
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.photoLabel.text = "Jihee's Photo"
        self.photoLabel.textColor = .darkGray
        self.firstDescription.text = "Jihee's Photo Frame"
        self.firstDescription.textColor = .white
        self.firstDescription.backgroundColor = .gray
        
    
        print(#file, #line, #function, #column)
    }
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.photoLabel.text = "Change the color"
        self.photoLabel.font = UIFont(name: "Futura Bold", size: 33)
        self.photoLabel.textColor = .tintColor
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
