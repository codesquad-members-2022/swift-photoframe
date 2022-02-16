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
        self.photoLabel.text = "Go Gray"
        self.photoLabel.font = UIFont(name: "Futura Bold", size: 45)
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
