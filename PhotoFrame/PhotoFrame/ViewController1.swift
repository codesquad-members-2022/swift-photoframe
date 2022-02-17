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
    
    @IBAction func nextButtonTouched(_ sender: UIButton) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.yellow
        self.photoLabel.alpha = 0.5
    }
    @IBOutlet weak var detailDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(#file, #line, #function, #column)
        print("Hello World cont1")
        self.photoLabel.text = "Damagucci-Juice의 포토 프레임"
        self.photoLabel.font = UIFont.systemFont(ofSize: CGFloat(15))
        self.photoLabel.textColor = UIColor.black
        self.photoLabel.backgroundColor = UIColor.darkGray.withAlphaComponent(0.5)
        self.detailDescription.text = "Loaded by First View Controller"
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print(#file, #line, #function, #column)
    }
}
