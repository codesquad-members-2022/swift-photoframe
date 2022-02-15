//
//  ViewController.swift
//  PhotoFrame
//
//  Created by dale on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var photoLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.photoLabel.text = "dale의 사진액자"
        self.photoLabel.textColor = .blue
        self.photoLabel.backgroundColor = .yellow
        self.photoLabel.font.withSize(30)
        self.photoLabel.textAlignment = .center
        print(#file, #line, #function, #column)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print(#file, #line, #function, #column)
    }
    override  func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print(#file, #line, #function, #column)
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print(#file, #line, #function, #column)
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print(#file, #line, #function, #column)
    }

    @IBAction func nextButtonTouched(_ sender: Any) {
        self.photoLabel.textColor = UIColor.blue
        self.photoLabel.backgroundColor = UIColor.red
        self.photoLabel.alpha = 0.5
    }
    
}

