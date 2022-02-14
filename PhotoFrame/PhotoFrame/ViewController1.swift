//
//  ViewController1.swift
//  PhotoFrame
//
//  Created by YEONGJIN JANG on 2022/02/14.
//

import Foundation
import UIKit

class ViewController1 : UIViewController {
 
    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        print("Hello World cont1")
        self.photoLabel.text = "Damagucci-Juice의 포토 프레임"
        self.photoLabel.font = UIFont.systemFont(ofSize: CGFloat(15))
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
    }
}
